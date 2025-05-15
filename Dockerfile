FROM golang:1.24

WORKDIR /app

RUN apt-get update && apt-get install -y --no-install-recommends \
    build-essential \
    tcl \
    tcl-dev \
    && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /bin

COPY . .

# build sqlite DUT
RUN cd include/sqlite3-3.26.0 && \
    CFLAGS="-g -O2" CC="gcc" ./configure --enable-debug --enable-fts5 && \
    make && \
    cp sqlite3 /bin/sqlite3-3.26.0 && \
    chmod +x /bin/sqlite3-3.26.0
# build sqlite oracle
RUN cd include/sqlite3-3.39.4 && \
    CFLAGS="-g -O2" CC="gcc" ./configure --enable-debug --enable-fts5 && \
    make && \
    cp sqlite3 /bin/sqlite3-3.39.4 && \
    chmod +x /bin/sqlite3-3.39.4

RUN CGO_ENABLED=1 go build -ldflags="-s -w" -o test-db cmd/main.go

# copy binary to required location
RUN cp test-db /usr/bin/test-db && \
    chmod +x /usr/bin/test-db

ENTRYPOINT ["/usr/bin/test-db"]
