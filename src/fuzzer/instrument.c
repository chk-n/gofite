// // docs: https://clang.llvm.org/docs/SanitizerCoverage.html
// #include <stdint.h>
// #include <string.h>

// #define COVERAGE_MAP_SIZE 65536

// // global coverage map, which is shared between C and Go
// uint8_t __attribute__((visibility("default"))) coverage_map[COVERAGE_MAP_SIZE];


// uint8_t* get_coverage_map() {
//     return coverage_map;
// }

// void reset_coverage() {
//     memset(coverage_map, 0, COVERAGE_MAP_SIZE);
// }

// // This callback is inserted by the compiler as a module constructor
// // into every DSO. 'start' and 'stop' correspond to the
// // beginning and end of the section with the guards for the entire
// // binary (executable or DSO). The callback will be called at least
// // once per DSO and may be called multiple times with the same parameters.
// void __sanitizer_cov_trace_pc_guard_init(uint32_t *start, uint32_t *stop) {
//     static uint64_t N = 0;
//     if (start == stop || *start) return;
    
//     for (uint32_t *x = start; x < stop; x++)
//         // Guards should start from 1.
//         *x = ++N;  
    
// }

// // This callback is inserted by the compiler on every edge in the
// // control flow (some optimizations apply).
// // Typically, the compiler will emit the code like this:
// //    if(*guard)
// //      __sanitizer_cov_trace_pc_guard(guard);
// // But for large functions it will emit a simple call:
// //    __sanitizer_cov_trace_pc_guard(guard);
// void __sanitizer_cov_trace_pc_guard(uint32_t *guard) {
//     if (!*guard) return;  
    
//     void *PC = __builtin_return_address(0);
//     uint32_t idx = ((uintptr_t)PC) % COVERAGE_MAP_SIZE;
    
//     // Increment with saturation
//     if (coverage_map[idx] < 255)
//         coverage_map[idx]++;
// }
