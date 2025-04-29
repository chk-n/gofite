/*
** 2006 June 7
**
** The author disclaims copyright to this source code.  In place of
** a legal notice, here is a blessing:
**
**    May you do good and not evil.
**    May you find forgiveness for yourself and forgive others.
**    May you share freely, never taking more than you give.
**
*************************************************************************
** This header file defines the SQLite interface for use by
** shared libraries that want to be imported as extensions into
** an SQLite instance.  Shared libraries that intend to be loaded
** as extensions by SQLite should #include this file instead of 
** sqlite3.h.
*/
#ifndef SQLITE3EXT_H
#define SQLITE3EXT_H
#include "sqlite3.h"

/*
** The following structure holds pointers to all of the SQLite API
** routines.
**
** WARNING:  In order to maintain backwards compatibility, add new
** interfaces to the end of this structure only.  If you insert new
** interfaces in the middle of this structure, then older different
** versions of SQLite will not be able to load each other's shared
** libraries!
*/
struct sqlite3_3_26_api_routines {
  void * (*aggregate_context)(sqlite3_3_26_context*,int nBytes);
  int  (*aggregate_count)(sqlite3_3_26_context*);
  int  (*bind_blob)(sqlite3_3_26_stmt*,int,const void*,int n,void(*)(void*));
  int  (*bind_double)(sqlite3_3_26_stmt*,int,double);
  int  (*bind_int)(sqlite3_3_26_stmt*,int,int);
  int  (*bind_int64)(sqlite3_3_26_stmt*,int,sqlite_int64);
  int  (*bind_null)(sqlite3_3_26_stmt*,int);
  int  (*bind_parameter_count)(sqlite3_3_26_stmt*);
  int  (*bind_parameter_index)(sqlite3_3_26_stmt*,const char*zName);
  const char * (*bind_parameter_name)(sqlite3_3_26_stmt*,int);
  int  (*bind_text)(sqlite3_3_26_stmt*,int,const char*,int n,void(*)(void*));
  int  (*bind_text16)(sqlite3_3_26_stmt*,int,const void*,int,void(*)(void*));
  int  (*bind_value)(sqlite3_3_26_stmt*,int,const sqlite3_3_26_value*);
  int  (*busy_handler)(sqlite3*,int(*)(void*,int),void*);
  int  (*busy_timeout)(sqlite3*,int ms);
  int  (*changes)(sqlite3*);
  int  (*close)(sqlite3*);
  int  (*collation_needed)(sqlite3*,void*,void(*)(void*,sqlite3*,
                           int eTextRep,const char*));
  int  (*collation_needed16)(sqlite3*,void*,void(*)(void*,sqlite3*,
                             int eTextRep,const void*));
  const void * (*column_blob)(sqlite3_3_26_stmt*,int iCol);
  int  (*column_bytes)(sqlite3_3_26_stmt*,int iCol);
  int  (*column_bytes16)(sqlite3_3_26_stmt*,int iCol);
  int  (*column_count)(sqlite3_3_26_stmt*pStmt);
  const char * (*column_database_name)(sqlite3_3_26_stmt*,int);
  const void * (*column_database_name16)(sqlite3_3_26_stmt*,int);
  const char * (*column_decltype)(sqlite3_3_26_stmt*,int i);
  const void * (*column_decltype16)(sqlite3_3_26_stmt*,int);
  double  (*column_double)(sqlite3_3_26_stmt*,int iCol);
  int  (*column_int)(sqlite3_3_26_stmt*,int iCol);
  sqlite_int64  (*column_int64)(sqlite3_3_26_stmt*,int iCol);
  const char * (*column_name)(sqlite3_3_26_stmt*,int);
  const void * (*column_name16)(sqlite3_3_26_stmt*,int);
  const char * (*column_origin_name)(sqlite3_3_26_stmt*,int);
  const void * (*column_origin_name16)(sqlite3_3_26_stmt*,int);
  const char * (*column_table_name)(sqlite3_3_26_stmt*,int);
  const void * (*column_table_name16)(sqlite3_3_26_stmt*,int);
  const unsigned char * (*column_text)(sqlite3_3_26_stmt*,int iCol);
  const void * (*column_text16)(sqlite3_3_26_stmt*,int iCol);
  int  (*column_type)(sqlite3_3_26_stmt*,int iCol);
  sqlite3_3_26_value* (*column_value)(sqlite3_3_26_stmt*,int iCol);
  void * (*commit_hook)(sqlite3*,int(*)(void*),void*);
  int  (*complete)(const char*sql);
  int  (*complete16)(const void*sql);
  int  (*create_collation)(sqlite3*,const char*,int,void*,
                           int(*)(void*,int,const void*,int,const void*));
  int  (*create_collation16)(sqlite3*,const void*,int,void*,
                             int(*)(void*,int,const void*,int,const void*));
  int  (*create_function)(sqlite3*,const char*,int,int,void*,
                          void (*xFunc)(sqlite3_3_26_context*,int,sqlite3_3_26_value**),
                          void (*xStep)(sqlite3_3_26_context*,int,sqlite3_3_26_value**),
                          void (*xFinal)(sqlite3_3_26_context*));
  int  (*create_function16)(sqlite3*,const void*,int,int,void*,
                            void (*xFunc)(sqlite3_3_26_context*,int,sqlite3_3_26_value**),
                            void (*xStep)(sqlite3_3_26_context*,int,sqlite3_3_26_value**),
                            void (*xFinal)(sqlite3_3_26_context*));
  int (*create_module)(sqlite3*,const char*,const sqlite3_3_26_module*,void*);
  int  (*data_count)(sqlite3_3_26_stmt*pStmt);
  sqlite3 * (*db_handle)(sqlite3_3_26_stmt*);
  int (*declare_vtab)(sqlite3*,const char*);
  int  (*enable_shared_cache)(int);
  int  (*errcode)(sqlite3*db);
  const char * (*errmsg)(sqlite3*);
  const void * (*errmsg16)(sqlite3*);
  int  (*exec)(sqlite3*,const char*,sqlite3_3_26_callback,void*,char**);
  int  (*expired)(sqlite3_3_26_stmt*);
  int  (*finalize)(sqlite3_3_26_stmt*pStmt);
  void  (*free)(void*);
  void  (*free_table)(char**result);
  int  (*get_autocommit)(sqlite3*);
  void * (*get_auxdata)(sqlite3_3_26_context*,int);
  int  (*get_table)(sqlite3*,const char*,char***,int*,int*,char**);
  int  (*global_recover)(void);
  void  (*interruptx)(sqlite3*);
  sqlite_int64  (*last_insert_rowid)(sqlite3*);
  const char * (*libversion)(void);
  int  (*libversion_number)(void);
  void *(*malloc)(int);
  char * (*mprintf)(const char*,...);
  int  (*open)(const char*,sqlite3**);
  int  (*open16)(const void*,sqlite3**);
  int  (*prepare)(sqlite3*,const char*,int,sqlite3_3_26_stmt**,const char**);
  int  (*prepare16)(sqlite3*,const void*,int,sqlite3_3_26_stmt**,const void**);
  void * (*profile)(sqlite3*,void(*)(void*,const char*,sqlite_uint64),void*);
  void  (*progress_handler)(sqlite3*,int,int(*)(void*),void*);
  void *(*realloc)(void*,int);
  int  (*reset)(sqlite3_3_26_stmt*pStmt);
  void  (*result_blob)(sqlite3_3_26_context*,const void*,int,void(*)(void*));
  void  (*result_double)(sqlite3_3_26_context*,double);
  void  (*result_error)(sqlite3_3_26_context*,const char*,int);
  void  (*result_error16)(sqlite3_3_26_context*,const void*,int);
  void  (*result_int)(sqlite3_3_26_context*,int);
  void  (*result_int64)(sqlite3_3_26_context*,sqlite_int64);
  void  (*result_null)(sqlite3_3_26_context*);
  void  (*result_text)(sqlite3_3_26_context*,const char*,int,void(*)(void*));
  void  (*result_text16)(sqlite3_3_26_context*,const void*,int,void(*)(void*));
  void  (*result_text16be)(sqlite3_3_26_context*,const void*,int,void(*)(void*));
  void  (*result_text16le)(sqlite3_3_26_context*,const void*,int,void(*)(void*));
  void  (*result_value)(sqlite3_3_26_context*,sqlite3_3_26_value*);
  void * (*rollback_hook)(sqlite3*,void(*)(void*),void*);
  int  (*set_authorizer)(sqlite3*,int(*)(void*,int,const char*,const char*,
                         const char*,const char*),void*);
  void  (*set_auxdata)(sqlite3_3_26_context*,int,void*,void (*)(void*));
  char * (*xsnprintf)(int,char*,const char*,...);
  int  (*step)(sqlite3_3_26_stmt*);
  int  (*table_column_metadata)(sqlite3*,const char*,const char*,const char*,
                                char const**,char const**,int*,int*,int*);
  void  (*thread_cleanup)(void);
  int  (*total_changes)(sqlite3*);
  void * (*trace)(sqlite3*,void(*xTrace)(void*,const char*),void*);
  int  (*transfer_bindings)(sqlite3_3_26_stmt*,sqlite3_3_26_stmt*);
  void * (*update_hook)(sqlite3*,void(*)(void*,int ,char const*,char const*,
                                         sqlite_int64),void*);
  void * (*user_data)(sqlite3_3_26_context*);
  const void * (*value_blob)(sqlite3_3_26_value*);
  int  (*value_bytes)(sqlite3_3_26_value*);
  int  (*value_bytes16)(sqlite3_3_26_value*);
  double  (*value_double)(sqlite3_3_26_value*);
  int  (*value_int)(sqlite3_3_26_value*);
  sqlite_int64  (*value_int64)(sqlite3_3_26_value*);
  int  (*value_numeric_type)(sqlite3_3_26_value*);
  const unsigned char * (*value_text)(sqlite3_3_26_value*);
  const void * (*value_text16)(sqlite3_3_26_value*);
  const void * (*value_text16be)(sqlite3_3_26_value*);
  const void * (*value_text16le)(sqlite3_3_26_value*);
  int  (*value_type)(sqlite3_3_26_value*);
  char *(*vmprintf)(const char*,va_list);
  /* Added ??? */
  int (*overload_function)(sqlite3*, const char *zFuncName, int nArg);
  /* Added by 3.3.13 */
  int (*prepare_v2)(sqlite3*,const char*,int,sqlite3_3_26_stmt**,const char**);
  int (*prepare16_v2)(sqlite3*,const void*,int,sqlite3_3_26_stmt**,const void**);
  int (*clear_bindings)(sqlite3_3_26_stmt*);
  /* Added by 3.4.1 */
  int (*create_module_v2)(sqlite3*,const char*,const sqlite3_3_26_module*,void*,
                          void (*xDestroy)(void *));
  /* Added by 3.5.0 */
  int (*bind_zeroblob)(sqlite3_3_26_stmt*,int,int);
  int (*blob_bytes)(sqlite3_3_26_blob*);
  int (*blob_close)(sqlite3_3_26_blob*);
  int (*blob_open)(sqlite3*,const char*,const char*,const char*,sqlite3_3_26_int64,
                   int,sqlite3_3_26_blob**);
  int (*blob_read)(sqlite3_3_26_blob*,void*,int,int);
  int (*blob_write)(sqlite3_3_26_blob*,const void*,int,int);
  int (*create_collation_v2)(sqlite3*,const char*,int,void*,
                             int(*)(void*,int,const void*,int,const void*),
                             void(*)(void*));
  int (*file_control)(sqlite3*,const char*,int,void*);
  sqlite3_3_26_int64 (*memory_highwater)(int);
  sqlite3_3_26_int64 (*memory_used)(void);
  sqlite3_3_26_mutex *(*mutex_alloc)(int);
  void (*mutex_enter)(sqlite3_3_26_mutex*);
  void (*mutex_free)(sqlite3_3_26_mutex*);
  void (*mutex_leave)(sqlite3_3_26_mutex*);
  int (*mutex_try)(sqlite3_3_26_mutex*);
  int (*open_v2)(const char*,sqlite3**,int,const char*);
  int (*release_memory)(int);
  void (*result_error_nomem)(sqlite3_3_26_context*);
  void (*result_error_toobig)(sqlite3_3_26_context*);
  int (*sleep)(int);
  void (*soft_heap_limit)(int);
  sqlite3_3_26_vfs *(*vfs_find)(const char*);
  int (*vfs_register)(sqlite3_3_26_vfs*,int);
  int (*vfs_unregister)(sqlite3_3_26_vfs*);
  int (*xthreadsafe)(void);
  void (*result_zeroblob)(sqlite3_3_26_context*,int);
  void (*result_error_code)(sqlite3_3_26_context*,int);
  int (*test_control)(int, ...);
  void (*randomness)(int,void*);
  sqlite3 *(*context_db_handle)(sqlite3_3_26_context*);
  int (*extended_result_codes)(sqlite3*,int);
  int (*limit)(sqlite3*,int,int);
  sqlite3_3_26_stmt *(*next_stmt)(sqlite3*,sqlite3_3_26_stmt*);
  const char *(*sql)(sqlite3_3_26_stmt*);
  int (*status)(int,int*,int*,int);
  int (*backup_finish)(sqlite3_3_26_backup*);
  sqlite3_3_26_backup *(*backup_init)(sqlite3*,const char*,sqlite3*,const char*);
  int (*backup_pagecount)(sqlite3_3_26_backup*);
  int (*backup_remaining)(sqlite3_3_26_backup*);
  int (*backup_step)(sqlite3_3_26_backup*,int);
  const char *(*compileoption_get)(int);
  int (*compileoption_used)(const char*);
  int (*create_function_v2)(sqlite3*,const char*,int,int,void*,
                            void (*xFunc)(sqlite3_3_26_context*,int,sqlite3_3_26_value**),
                            void (*xStep)(sqlite3_3_26_context*,int,sqlite3_3_26_value**),
                            void (*xFinal)(sqlite3_3_26_context*),
                            void(*xDestroy)(void*));
  int (*db_config)(sqlite3*,int,...);
  sqlite3_3_26_mutex *(*db_mutex)(sqlite3*);
  int (*db_status)(sqlite3*,int,int*,int*,int);
  int (*extended_errcode)(sqlite3*);
  void (*log)(int,const char*,...);
  sqlite3_3_26_int64 (*soft_heap_limit64)(sqlite3_3_26_int64);
  const char *(*sourceid)(void);
  int (*stmt_status)(sqlite3_3_26_stmt*,int,int);
  int (*strnicmp)(const char*,const char*,int);
  int (*unlock_notify)(sqlite3*,void(*)(void**,int),void*);
  int (*wal_autocheckpoint)(sqlite3*,int);
  int (*wal_checkpoint)(sqlite3*,const char*);
  void *(*wal_hook)(sqlite3*,int(*)(void*,sqlite3*,const char*,int),void*);
  int (*blob_reopen)(sqlite3_3_26_blob*,sqlite3_3_26_int64);
  int (*vtab_config)(sqlite3*,int op,...);
  int (*vtab_on_conflict)(sqlite3*);
  /* Version 3.7.16 and later */
  int (*close_v2)(sqlite3*);
  const char *(*db_filename)(sqlite3*,const char*);
  int (*db_readonly)(sqlite3*,const char*);
  int (*db_release_memory)(sqlite3*);
  const char *(*errstr)(int);
  int (*stmt_busy)(sqlite3_3_26_stmt*);
  int (*stmt_readonly)(sqlite3_3_26_stmt*);
  int (*stricmp)(const char*,const char*);
  int (*uri_boolean)(const char*,const char*,int);
  sqlite3_3_26_int64 (*uri_int64)(const char*,const char*,sqlite3_3_26_int64);
  const char *(*uri_parameter)(const char*,const char*);
  char *(*xvsnprintf)(int,char*,const char*,va_list);
  int (*wal_checkpoint_v2)(sqlite3*,const char*,int,int*,int*);
  /* Version 3.8.7 and later */
  int (*auto_extension)(void(*)(void));
  int (*bind_blob64)(sqlite3_3_26_stmt*,int,const void*,sqlite3_3_26_uint64,
                     void(*)(void*));
  int (*bind_text64)(sqlite3_3_26_stmt*,int,const char*,sqlite3_3_26_uint64,
                      void(*)(void*),unsigned char);
  int (*cancel_auto_extension)(void(*)(void));
  int (*load_extension)(sqlite3*,const char*,const char*,char**);
  void *(*malloc64)(sqlite3_3_26_uint64);
  sqlite3_3_26_uint64 (*msize)(void*);
  void *(*realloc64)(void*,sqlite3_3_26_uint64);
  void (*reset_auto_extension)(void);
  void (*result_blob64)(sqlite3_3_26_context*,const void*,sqlite3_3_26_uint64,
                        void(*)(void*));
  void (*result_text64)(sqlite3_3_26_context*,const char*,sqlite3_3_26_uint64,
                         void(*)(void*), unsigned char);
  int (*strglob)(const char*,const char*);
  /* Version 3.8.11 and later */
  sqlite3_3_26_value *(*value_dup)(const sqlite3_3_26_value*);
  void (*value_free)(sqlite3_3_26_value*);
  int (*result_zeroblob64)(sqlite3_3_26_context*,sqlite3_3_26_uint64);
  int (*bind_zeroblob64)(sqlite3_3_26_stmt*, int, sqlite3_3_26_uint64);
  /* Version 3.9.0 and later */
  unsigned int (*value_subtype)(sqlite3_3_26_value*);
  void (*result_subtype)(sqlite3_3_26_context*,unsigned int);
  /* Version 3.10.0 and later */
  int (*status64)(int,sqlite3_3_26_int64*,sqlite3_3_26_int64*,int);
  int (*strlike)(const char*,const char*,unsigned int);
  int (*db_cacheflush)(sqlite3*);
  /* Version 3.12.0 and later */
  int (*system_errno)(sqlite3*);
  /* Version 3.14.0 and later */
  int (*trace_v2)(sqlite3*,unsigned,int(*)(unsigned,void*,void*,void*),void*);
  char *(*expanded_sql)(sqlite3_3_26_stmt*);
  /* Version 3.18.0 and later */
  void (*set_last_insert_rowid)(sqlite3*,sqlite3_3_26_int64);
  /* Version 3.20.0 and later */
  int (*prepare_v3)(sqlite3*,const char*,int,unsigned int,
                    sqlite3_3_26_stmt**,const char**);
  int (*prepare16_v3)(sqlite3*,const void*,int,unsigned int,
                      sqlite3_3_26_stmt**,const void**);
  int (*bind_pointer)(sqlite3_3_26_stmt*,int,void*,const char*,void(*)(void*));
  void (*result_pointer)(sqlite3_3_26_context*,void*,const char*,void(*)(void*));
  void *(*value_pointer)(sqlite3_3_26_value*,const char*);
  int (*vtab_nochange)(sqlite3_3_26_context*);
  int (*value_nochange)(sqlite3_3_26_value*);
  const char *(*vtab_collation)(sqlite3_3_26_index_info*,int);
  /* Version 3.24.0 and later */
  int (*keyword_count)(void);
  int (*keyword_name)(int,const char**,int*);
  int (*keyword_check)(const char*,int);
  sqlite3_3_26_str *(*str_new)(sqlite3*);
  char *(*str_finish)(sqlite3_3_26_str*);
  void (*str_appendf)(sqlite3_3_26_str*, const char *zFormat, ...);
  void (*str_vappendf)(sqlite3_3_26_str*, const char *zFormat, va_list);
  void (*str_append)(sqlite3_3_26_str*, const char *zIn, int N);
  void (*str_appendall)(sqlite3_3_26_str*, const char *zIn);
  void (*str_appendchar)(sqlite3_3_26_str*, int N, char C);
  void (*str_reset)(sqlite3_3_26_str*);
  int (*str_errcode)(sqlite3_3_26_str*);
  int (*str_length)(sqlite3_3_26_str*);
  char *(*str_value)(sqlite3_3_26_str*);
  /* Version 3.25.0 and later */
  int (*create_window_function)(sqlite3*,const char*,int,int,void*,
                            void (*xStep)(sqlite3_3_26_context*,int,sqlite3_3_26_value**),
                            void (*xFinal)(sqlite3_3_26_context*),
                            void (*xValue)(sqlite3_3_26_context*),
                            void (*xInv)(sqlite3_3_26_context*,int,sqlite3_3_26_value**),
                            void(*xDestroy)(void*));
  /* Version 3.26.0 and later */
  const char *(*normalized_sql)(sqlite3_3_26_stmt*);
};

/*
** This is the function signature used for all extension entry points.  It
** is also defined in the file "loadext.c".
*/
typedef int (*sqlite3_3_26_loadext_entry)(
  sqlite3 *db,                       /* Handle to the database. */
  char **pzErrMsg,                   /* Used to set error string on failure. */
  const sqlite3_3_26_api_routines *pThunk /* Extension API function pointers. */
);

/*
** The following macros redefine the API routines so that they are
** redirected through the global sqlite3_3_26_api structure.
**
** This header file is also used by the loadext.c source file
** (part of the main SQLite library - not an extension) so that
** it can get access to the sqlite3_3_26_api_routines structure
** definition.  But the main library does not want to redefine
** the API.  So the redefinition macros are only valid if the
** SQLITE_CORE macros is undefined.
*/
#if !defined(SQLITE_CORE) && !defined(SQLITE_OMIT_LOAD_EXTENSION)
#define sqlite3_3_26_aggregate_context      sqlite3_3_26_api->aggregate_context
#ifndef SQLITE_OMIT_DEPRECATED
#define sqlite3_3_26_aggregate_count        sqlite3_3_26_api->aggregate_count
#endif
#define sqlite3_3_26_bind_blob              sqlite3_3_26_api->bind_blob
#define sqlite3_3_26_bind_double            sqlite3_3_26_api->bind_double
#define sqlite3_3_26_bind_int               sqlite3_3_26_api->bind_int
#define sqlite3_3_26_bind_int64             sqlite3_3_26_api->bind_int64
#define sqlite3_3_26_bind_null              sqlite3_3_26_api->bind_null
#define sqlite3_3_26_bind_parameter_count   sqlite3_3_26_api->bind_parameter_count
#define sqlite3_3_26_bind_parameter_index   sqlite3_3_26_api->bind_parameter_index
#define sqlite3_3_26_bind_parameter_name    sqlite3_3_26_api->bind_parameter_name
#define sqlite3_3_26_bind_text              sqlite3_3_26_api->bind_text
#define sqlite3_3_26_bind_text16            sqlite3_3_26_api->bind_text16
#define sqlite3_3_26_bind_value             sqlite3_3_26_api->bind_value
#define sqlite3_3_26_busy_handler           sqlite3_3_26_api->busy_handler
#define sqlite3_3_26_busy_timeout           sqlite3_3_26_api->busy_timeout
#define sqlite3_3_26_changes                sqlite3_3_26_api->changes
#define sqlite3_3_26_close                  sqlite3_3_26_api->close
#define sqlite3_3_26_collation_needed       sqlite3_3_26_api->collation_needed
#define sqlite3_3_26_collation_needed16     sqlite3_3_26_api->collation_needed16
#define sqlite3_3_26_column_blob            sqlite3_3_26_api->column_blob
#define sqlite3_3_26_column_bytes           sqlite3_3_26_api->column_bytes
#define sqlite3_3_26_column_bytes16         sqlite3_3_26_api->column_bytes16
#define sqlite3_3_26_column_count           sqlite3_3_26_api->column_count
#define sqlite3_3_26_column_database_name   sqlite3_3_26_api->column_database_name
#define sqlite3_3_26_column_database_name16 sqlite3_3_26_api->column_database_name16
#define sqlite3_3_26_column_decltype        sqlite3_3_26_api->column_decltype
#define sqlite3_3_26_column_decltype16      sqlite3_3_26_api->column_decltype16
#define sqlite3_3_26_column_double          sqlite3_3_26_api->column_double
#define sqlite3_3_26_column_int             sqlite3_3_26_api->column_int
#define sqlite3_3_26_column_int64           sqlite3_3_26_api->column_int64
#define sqlite3_3_26_column_name            sqlite3_3_26_api->column_name
#define sqlite3_3_26_column_name16          sqlite3_3_26_api->column_name16
#define sqlite3_3_26_column_origin_name     sqlite3_3_26_api->column_origin_name
#define sqlite3_3_26_column_origin_name16   sqlite3_3_26_api->column_origin_name16
#define sqlite3_3_26_column_table_name      sqlite3_3_26_api->column_table_name
#define sqlite3_3_26_column_table_name16    sqlite3_3_26_api->column_table_name16
#define sqlite3_3_26_column_text            sqlite3_3_26_api->column_text
#define sqlite3_3_26_column_text16          sqlite3_3_26_api->column_text16
#define sqlite3_3_26_column_type            sqlite3_3_26_api->column_type
#define sqlite3_3_26_column_value           sqlite3_3_26_api->column_value
#define sqlite3_3_26_commit_hook            sqlite3_3_26_api->commit_hook
#define sqlite3_3_26_complete               sqlite3_3_26_api->complete
#define sqlite3_3_26_complete16             sqlite3_3_26_api->complete16
#define sqlite3_3_26_create_collation       sqlite3_3_26_api->create_collation
#define sqlite3_3_26_create_collation16     sqlite3_3_26_api->create_collation16
#define sqlite3_3_26_create_function        sqlite3_3_26_api->create_function
#define sqlite3_3_26_create_function16      sqlite3_3_26_api->create_function16
#define sqlite3_3_26_create_module          sqlite3_3_26_api->create_module
#define sqlite3_3_26_create_module_v2       sqlite3_3_26_api->create_module_v2
#define sqlite3_3_26_data_count             sqlite3_3_26_api->data_count
#define sqlite3_3_26_db_handle              sqlite3_3_26_api->db_handle
#define sqlite3_3_26_declare_vtab           sqlite3_3_26_api->declare_vtab
#define sqlite3_3_26_enable_shared_cache    sqlite3_3_26_api->enable_shared_cache
#define sqlite3_3_26_errcode                sqlite3_3_26_api->errcode
#define sqlite3_3_26_errmsg                 sqlite3_3_26_api->errmsg
#define sqlite3_3_26_errmsg16               sqlite3_3_26_api->errmsg16
#define sqlite3_3_26_exec                   sqlite3_3_26_api->exec
#ifndef SQLITE_OMIT_DEPRECATED
#define sqlite3_3_26_expired                sqlite3_3_26_api->expired
#endif
#define sqlite3_3_26_finalize               sqlite3_3_26_api->finalize
#define sqlite3_3_26_free                   sqlite3_3_26_api->free
#define sqlite3_3_26_free_table             sqlite3_3_26_api->free_table
#define sqlite3_3_26_get_autocommit         sqlite3_3_26_api->get_autocommit
#define sqlite3_3_26_get_auxdata            sqlite3_3_26_api->get_auxdata
#define sqlite3_3_26_get_table              sqlite3_3_26_api->get_table
#ifndef SQLITE_OMIT_DEPRECATED
#define sqlite3_3_26_global_recover         sqlite3_3_26_api->global_recover
#endif
#define sqlite3_3_26_interrupt              sqlite3_3_26_api->interruptx
#define sqlite3_3_26_last_insert_rowid      sqlite3_3_26_api->last_insert_rowid
#define sqlite3_3_26_libversion             sqlite3_3_26_api->libversion
#define sqlite3_3_26_libversion_number      sqlite3_3_26_api->libversion_number
#define sqlite3_3_26_malloc                 sqlite3_3_26_api->malloc
#define sqlite3_3_26_mprintf                sqlite3_3_26_api->mprintf
#define sqlite3_3_26_open                   sqlite3_3_26_api->open
#define sqlite3_3_26_open16                 sqlite3_3_26_api->open16
#define sqlite3_3_26_prepare                sqlite3_3_26_api->prepare
#define sqlite3_3_26_prepare16              sqlite3_3_26_api->prepare16
#define sqlite3_3_26_prepare_v2             sqlite3_3_26_api->prepare_v2
#define sqlite3_3_26_prepare16_v2           sqlite3_3_26_api->prepare16_v2
#define sqlite3_3_26_profile                sqlite3_3_26_api->profile
#define sqlite3_3_26_progress_handler       sqlite3_3_26_api->progress_handler
#define sqlite3_3_26_realloc                sqlite3_3_26_api->realloc
#define sqlite3_3_26_reset                  sqlite3_3_26_api->reset
#define sqlite3_3_26_result_blob            sqlite3_3_26_api->result_blob
#define sqlite3_3_26_result_double          sqlite3_3_26_api->result_double
#define sqlite3_3_26_result_error           sqlite3_3_26_api->result_error
#define sqlite3_3_26_result_error16         sqlite3_3_26_api->result_error16
#define sqlite3_3_26_result_int             sqlite3_3_26_api->result_int
#define sqlite3_3_26_result_int64           sqlite3_3_26_api->result_int64
#define sqlite3_3_26_result_null            sqlite3_3_26_api->result_null
#define sqlite3_3_26_result_text            sqlite3_3_26_api->result_text
#define sqlite3_3_26_result_text16          sqlite3_3_26_api->result_text16
#define sqlite3_3_26_result_text16be        sqlite3_3_26_api->result_text16be
#define sqlite3_3_26_result_text16le        sqlite3_3_26_api->result_text16le
#define sqlite3_3_26_result_value           sqlite3_3_26_api->result_value
#define sqlite3_3_26_rollback_hook          sqlite3_3_26_api->rollback_hook
#define sqlite3_3_26_set_authorizer         sqlite3_3_26_api->set_authorizer
#define sqlite3_3_26_set_auxdata            sqlite3_3_26_api->set_auxdata
#define sqlite3_3_26_snprintf               sqlite3_3_26_api->xsnprintf
#define sqlite3_3_26_step                   sqlite3_3_26_api->step
#define sqlite3_3_26_table_column_metadata  sqlite3_3_26_api->table_column_metadata
#define sqlite3_3_26_thread_cleanup         sqlite3_3_26_api->thread_cleanup
#define sqlite3_3_26_total_changes          sqlite3_3_26_api->total_changes
#define sqlite3_3_26_trace                  sqlite3_3_26_api->trace
#ifndef SQLITE_OMIT_DEPRECATED
#define sqlite3_3_26_transfer_bindings      sqlite3_3_26_api->transfer_bindings
#endif
#define sqlite3_3_26_update_hook            sqlite3_3_26_api->update_hook
#define sqlite3_3_26_user_data              sqlite3_3_26_api->user_data
#define sqlite3_3_26_value_blob             sqlite3_3_26_api->value_blob
#define sqlite3_3_26_value_bytes            sqlite3_3_26_api->value_bytes
#define sqlite3_3_26_value_bytes16          sqlite3_3_26_api->value_bytes16
#define sqlite3_3_26_value_double           sqlite3_3_26_api->value_double
#define sqlite3_3_26_value_int              sqlite3_3_26_api->value_int
#define sqlite3_3_26_value_int64            sqlite3_3_26_api->value_int64
#define sqlite3_3_26_value_numeric_type     sqlite3_3_26_api->value_numeric_type
#define sqlite3_3_26_value_text             sqlite3_3_26_api->value_text
#define sqlite3_3_26_value_text16           sqlite3_3_26_api->value_text16
#define sqlite3_3_26_value_text16be         sqlite3_3_26_api->value_text16be
#define sqlite3_3_26_value_text16le         sqlite3_3_26_api->value_text16le
#define sqlite3_3_26_value_type             sqlite3_3_26_api->value_type
#define sqlite3_3_26_vmprintf               sqlite3_3_26_api->vmprintf
#define sqlite3_3_26_vsnprintf              sqlite3_3_26_api->xvsnprintf
#define sqlite3_3_26_overload_function      sqlite3_3_26_api->overload_function
#define sqlite3_3_26_prepare_v2             sqlite3_3_26_api->prepare_v2
#define sqlite3_3_26_prepare16_v2           sqlite3_3_26_api->prepare16_v2
#define sqlite3_3_26_clear_bindings         sqlite3_3_26_api->clear_bindings
#define sqlite3_3_26_bind_zeroblob          sqlite3_3_26_api->bind_zeroblob
#define sqlite3_3_26_blob_bytes             sqlite3_3_26_api->blob_bytes
#define sqlite3_3_26_blob_close             sqlite3_3_26_api->blob_close
#define sqlite3_3_26_blob_open              sqlite3_3_26_api->blob_open
#define sqlite3_3_26_blob_read              sqlite3_3_26_api->blob_read
#define sqlite3_3_26_blob_write             sqlite3_3_26_api->blob_write
#define sqlite3_3_26_create_collation_v2    sqlite3_3_26_api->create_collation_v2
#define sqlite3_3_26_file_control           sqlite3_3_26_api->file_control
#define sqlite3_3_26_memory_highwater       sqlite3_3_26_api->memory_highwater
#define sqlite3_3_26_memory_used            sqlite3_3_26_api->memory_used
#define sqlite3_3_26_mutex_alloc            sqlite3_3_26_api->mutex_alloc
#define sqlite3_3_26_mutex_enter            sqlite3_3_26_api->mutex_enter
#define sqlite3_3_26_mutex_free             sqlite3_3_26_api->mutex_free
#define sqlite3_3_26_mutex_leave            sqlite3_3_26_api->mutex_leave
#define sqlite3_3_26_mutex_try              sqlite3_3_26_api->mutex_try
#define sqlite3_3_26_open_v2                sqlite3_3_26_api->open_v2
#define sqlite3_3_26_release_memory         sqlite3_3_26_api->release_memory
#define sqlite3_3_26_result_error_nomem     sqlite3_3_26_api->result_error_nomem
#define sqlite3_3_26_result_error_toobig    sqlite3_3_26_api->result_error_toobig
#define sqlite3_3_26_sleep                  sqlite3_3_26_api->sleep
#define sqlite3_3_26_soft_heap_limit        sqlite3_3_26_api->soft_heap_limit
#define sqlite3_3_26_vfs_find               sqlite3_3_26_api->vfs_find
#define sqlite3_3_26_vfs_register           sqlite3_3_26_api->vfs_register
#define sqlite3_3_26_vfs_unregister         sqlite3_3_26_api->vfs_unregister
#define sqlite3_3_26_threadsafe             sqlite3_3_26_api->xthreadsafe
#define sqlite3_3_26_result_zeroblob        sqlite3_3_26_api->result_zeroblob
#define sqlite3_3_26_result_error_code      sqlite3_3_26_api->result_error_code
#define sqlite3_3_26_test_control           sqlite3_3_26_api->test_control
#define sqlite3_3_26_randomness             sqlite3_3_26_api->randomness
#define sqlite3_3_26_context_db_handle      sqlite3_3_26_api->context_db_handle
#define sqlite3_3_26_extended_result_codes  sqlite3_3_26_api->extended_result_codes
#define sqlite3_3_26_limit                  sqlite3_3_26_api->limit
#define sqlite3_3_26_next_stmt              sqlite3_3_26_api->next_stmt
#define sqlite3_3_26_sql                    sqlite3_3_26_api->sql
#define sqlite3_3_26_status                 sqlite3_3_26_api->status
#define sqlite3_3_26_backup_finish          sqlite3_3_26_api->backup_finish
#define sqlite3_3_26_backup_init            sqlite3_3_26_api->backup_init
#define sqlite3_3_26_backup_pagecount       sqlite3_3_26_api->backup_pagecount
#define sqlite3_3_26_backup_remaining       sqlite3_3_26_api->backup_remaining
#define sqlite3_3_26_backup_step            sqlite3_3_26_api->backup_step
#define sqlite3_3_26_compileoption_get      sqlite3_3_26_api->compileoption_get
#define sqlite3_3_26_compileoption_used     sqlite3_3_26_api->compileoption_used
#define sqlite3_3_26_create_function_v2     sqlite3_3_26_api->create_function_v2
#define sqlite3_3_26_db_config              sqlite3_3_26_api->db_config
#define sqlite3_3_26_db_mutex               sqlite3_3_26_api->db_mutex
#define sqlite3_3_26_db_status              sqlite3_3_26_api->db_status
#define sqlite3_3_26_extended_errcode       sqlite3_3_26_api->extended_errcode
#define sqlite3_3_26_log                    sqlite3_3_26_api->log
#define sqlite3_3_26_soft_heap_limit64      sqlite3_3_26_api->soft_heap_limit64
#define sqlite3_3_26_sourceid               sqlite3_3_26_api->sourceid
#define sqlite3_3_26_stmt_status            sqlite3_3_26_api->stmt_status
#define sqlite3_3_26_strnicmp               sqlite3_3_26_api->strnicmp
#define sqlite3_3_26_unlock_notify          sqlite3_3_26_api->unlock_notify
#define sqlite3_3_26_wal_autocheckpoint     sqlite3_3_26_api->wal_autocheckpoint
#define sqlite3_3_26_wal_checkpoint         sqlite3_3_26_api->wal_checkpoint
#define sqlite3_3_26_wal_hook               sqlite3_3_26_api->wal_hook
#define sqlite3_3_26_blob_reopen            sqlite3_3_26_api->blob_reopen
#define sqlite3_3_26_vtab_config            sqlite3_3_26_api->vtab_config
#define sqlite3_3_26_vtab_on_conflict       sqlite3_3_26_api->vtab_on_conflict
/* Version 3.7.16 and later */
#define sqlite3_3_26_close_v2               sqlite3_3_26_api->close_v2
#define sqlite3_3_26_db_filename            sqlite3_3_26_api->db_filename
#define sqlite3_3_26_db_readonly            sqlite3_3_26_api->db_readonly
#define sqlite3_3_26_db_release_memory      sqlite3_3_26_api->db_release_memory
#define sqlite3_3_26_errstr                 sqlite3_3_26_api->errstr
#define sqlite3_3_26_stmt_busy              sqlite3_3_26_api->stmt_busy
#define sqlite3_3_26_stmt_readonly          sqlite3_3_26_api->stmt_readonly
#define sqlite3_3_26_stricmp                sqlite3_3_26_api->stricmp
#define sqlite3_3_26_uri_boolean            sqlite3_3_26_api->uri_boolean
#define sqlite3_3_26_uri_int64              sqlite3_3_26_api->uri_int64
#define sqlite3_3_26_uri_parameter          sqlite3_3_26_api->uri_parameter
#define sqlite3_3_26_uri_vsnprintf          sqlite3_3_26_api->xvsnprintf
#define sqlite3_3_26_wal_checkpoint_v2      sqlite3_3_26_api->wal_checkpoint_v2
/* Version 3.8.7 and later */
#define sqlite3_3_26_auto_extension         sqlite3_3_26_api->auto_extension
#define sqlite3_3_26_bind_blob64            sqlite3_3_26_api->bind_blob64
#define sqlite3_3_26_bind_text64            sqlite3_3_26_api->bind_text64
#define sqlite3_3_26_cancel_auto_extension  sqlite3_3_26_api->cancel_auto_extension
#define sqlite3_3_26_load_extension         sqlite3_3_26_api->load_extension
#define sqlite3_3_26_malloc64               sqlite3_3_26_api->malloc64
#define sqlite3_3_26_msize                  sqlite3_3_26_api->msize
#define sqlite3_3_26_realloc64              sqlite3_3_26_api->realloc64
#define sqlite3_3_26_reset_auto_extension   sqlite3_3_26_api->reset_auto_extension
#define sqlite3_3_26_result_blob64          sqlite3_3_26_api->result_blob64
#define sqlite3_3_26_result_text64          sqlite3_3_26_api->result_text64
#define sqlite3_3_26_strglob                sqlite3_3_26_api->strglob
/* Version 3.8.11 and later */
#define sqlite3_3_26_value_dup              sqlite3_3_26_api->value_dup
#define sqlite3_3_26_value_free             sqlite3_3_26_api->value_free
#define sqlite3_3_26_result_zeroblob64      sqlite3_3_26_api->result_zeroblob64
#define sqlite3_3_26_bind_zeroblob64        sqlite3_3_26_api->bind_zeroblob64
/* Version 3.9.0 and later */
#define sqlite3_3_26_value_subtype          sqlite3_3_26_api->value_subtype
#define sqlite3_3_26_result_subtype         sqlite3_3_26_api->result_subtype
/* Version 3.10.0 and later */
#define sqlite3_3_26_status64               sqlite3_3_26_api->status64
#define sqlite3_3_26_strlike                sqlite3_3_26_api->strlike
#define sqlite3_3_26_db_cacheflush          sqlite3_3_26_api->db_cacheflush
/* Version 3.12.0 and later */
#define sqlite3_3_26_system_errno           sqlite3_3_26_api->system_errno
/* Version 3.14.0 and later */
#define sqlite3_3_26_trace_v2               sqlite3_3_26_api->trace_v2
#define sqlite3_3_26_expanded_sql           sqlite3_3_26_api->expanded_sql
/* Version 3.18.0 and later */
#define sqlite3_3_26_set_last_insert_rowid  sqlite3_3_26_api->set_last_insert_rowid
/* Version 3.20.0 and later */
#define sqlite3_3_26_prepare_v3             sqlite3_3_26_api->prepare_v3
#define sqlite3_3_26_prepare16_v3           sqlite3_3_26_api->prepare16_v3
#define sqlite3_3_26_bind_pointer           sqlite3_3_26_api->bind_pointer
#define sqlite3_3_26_result_pointer         sqlite3_3_26_api->result_pointer
#define sqlite3_3_26_value_pointer          sqlite3_3_26_api->value_pointer
/* Version 3.22.0 and later */
#define sqlite3_3_26_vtab_nochange          sqlite3_3_26_api->vtab_nochange
#define sqlite3_3_26_value_nochange         sqlite3_3_26_api->value_nochange
#define sqlite3_3_26_vtab_collation         sqlite3_3_26_api->vtab_collation
/* Version 3.24.0 and later */
#define sqlite3_3_26_keyword_count          sqlite3_3_26_api->keyword_count
#define sqlite3_3_26_keyword_name           sqlite3_3_26_api->keyword_name
#define sqlite3_3_26_keyword_check          sqlite3_3_26_api->keyword_check
#define sqlite3_3_26_str_new                sqlite3_3_26_api->str_new
#define sqlite3_3_26_str_finish             sqlite3_3_26_api->str_finish
#define sqlite3_3_26_str_appendf            sqlite3_3_26_api->str_appendf
#define sqlite3_3_26_str_vappendf           sqlite3_3_26_api->str_vappendf
#define sqlite3_3_26_str_append             sqlite3_3_26_api->str_append
#define sqlite3_3_26_str_appendall          sqlite3_3_26_api->str_appendall
#define sqlite3_3_26_str_appendchar         sqlite3_3_26_api->str_appendchar
#define sqlite3_3_26_str_reset              sqlite3_3_26_api->str_reset
#define sqlite3_3_26_str_errcode            sqlite3_3_26_api->str_errcode
#define sqlite3_3_26_str_length             sqlite3_3_26_api->str_length
#define sqlite3_3_26_str_value              sqlite3_3_26_api->str_value
/* Version 3.25.0 and later */
#define sqlite3_3_26_create_window_function sqlite3_3_26_api->create_window_function
/* Version 3.26.0 and later */
#define sqlite3_3_26_normalized_sql         sqlite3_3_26_api->normalized_sql
#endif /* !defined(SQLITE_CORE) && !defined(SQLITE_OMIT_LOAD_EXTENSION) */

#if !defined(SQLITE_CORE) && !defined(SQLITE_OMIT_LOAD_EXTENSION)
  /* This case when the file really is being compiled as a loadable 
  ** extension */
# define SQLITE_EXTENSION_INIT1     const sqlite3_3_26_api_routines *sqlite3_3_26_api=0;
# define SQLITE_EXTENSION_INIT2(v)  sqlite3_3_26_api=v;
# define SQLITE_EXTENSION_INIT3     \
    extern const sqlite3_3_26_api_routines *sqlite3_3_26_api;
#else
  /* This case when the file is being statically linked into the 
  ** application */
# define SQLITE_EXTENSION_INIT1     /*no-op*/
# define SQLITE_EXTENSION_INIT2(v)  (void)v; /* unused parameter */
# define SQLITE_EXTENSION_INIT3     /*no-op*/
#endif

#endif /* SQLITE3EXT_H */
