namespace Sqlite3;

using System;
using System.Interop;

static
{
	[Import("sqlite3.dll"), CLink]
	public static extern c_char* sqlite3_libversion();
	[Inline]
	public static c_char* libversion() => sqlite3_libversion();
	[Import("sqlite3.dll"), CLink]
	public static extern c_char* sqlite3_sourceid();
	[Inline]
	public static c_char* sourceid() => sqlite3_sourceid();
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_libversion_number();
	[Inline]
	public static c_int libversion_number() => sqlite3_libversion_number();
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_compileoption_used(  c_char* zOptName);
	[Inline]
	public static c_int compileoption_used(  c_char* zOptName) => sqlite3_compileoption_used(zOptName);
	[Import("sqlite3.dll"), CLink]
	public static extern c_char* sqlite3_compileoption_get(  c_int N);
	[Inline]
	public static c_char* compileoption_get(  c_int N) => sqlite3_compileoption_get(N);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_threadsafe();
	[Inline]
	public static c_int threadsafe() => sqlite3_threadsafe();
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_close(  sqlite3* bf_arg0);
	[Inline]
	public static c_int close(  sqlite3* bf_arg0) => sqlite3_close(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_close_v2(  sqlite3* bf_arg0);
	[Inline]
	public static c_int close_v2(  sqlite3* bf_arg0) => sqlite3_close_v2(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_exec(  sqlite3* bf_arg0, c_char* sql, function c_int(void*, c_int, c_char**, c_char**) callback, void* bf_arg3, c_char** errmsg);
	[Inline]
	public static c_int exec(  sqlite3* bf_arg0, c_char* sql, function c_int(void*, c_int, c_char**, c_char**) callback, void* bf_arg3, c_char** errmsg) => sqlite3_exec(bf_arg0, sql, callback, bf_arg3, errmsg);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_initialize();
	[Inline]
	public static c_int initialize() => sqlite3_initialize();
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_shutdown();
	[Inline]
	public static c_int shutdown() => sqlite3_shutdown();
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_os_init();
	[Inline]
	public static c_int os_init() => sqlite3_os_init();
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_os_end();
	[Inline]
	public static c_int os_end() => sqlite3_os_end();
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_config(ConfigOptions bf_arg0);
	[Inline]
	public static c_int config(ConfigOptions bf_arg0) => sqlite3_config(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_db_config(sqlite3* bf_arg0, DatabaseConnectionConfigOptions op);
	[Inline]
	public static c_int db_config(sqlite3* bf_arg0, DatabaseConnectionConfigOptions op) => sqlite3_db_config(bf_arg0, op);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_extended_result_codes(  sqlite3* bf_arg0, c_int onoff);
	[Inline]
	public static c_int extended_result_codes(  sqlite3* bf_arg0, c_int onoff) => sqlite3_extended_result_codes(bf_arg0, onoff);
	[Import("sqlite3.dll"), CLink]
	public static extern int64 sqlite3_last_insert_rowid(  sqlite3* bf_arg0);
	[Inline]
	public static int64 last_insert_rowid(  sqlite3* bf_arg0) => sqlite3_last_insert_rowid(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern void sqlite3_set_last_insert_rowid(  sqlite3* bf_arg0, int64 bf_arg1);
	[Inline]
	public static void set_last_insert_rowid(  sqlite3* bf_arg0, int64 bf_arg1) => sqlite3_set_last_insert_rowid(bf_arg0, bf_arg1);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_changes(  sqlite3* bf_arg0);
	[Inline]
	public static c_int changes(  sqlite3* bf_arg0) => sqlite3_changes(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern int64 sqlite3_changes64(  sqlite3* bf_arg0);
	[Inline]
	public static int64 changes64(  sqlite3* bf_arg0) => sqlite3_changes64(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_total_changes(  sqlite3* bf_arg0);
	[Inline]
	public static c_int total_changes(  sqlite3* bf_arg0) => sqlite3_total_changes(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern int64 sqlite3_total_changes64(  sqlite3* bf_arg0);
	[Inline]
	public static int64 total_changes64(  sqlite3* bf_arg0) => sqlite3_total_changes64(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern void sqlite3_interrupt(  sqlite3* bf_arg0);
	[Inline]
	public static void interrupt(  sqlite3* bf_arg0) => sqlite3_interrupt(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_is_interrupted(  sqlite3* bf_arg0);
	[Inline]
	public static c_int is_interrupted(  sqlite3* bf_arg0) => sqlite3_is_interrupted(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_complete(  c_char* sql);
	[Inline]
	public static c_int complete(  c_char* sql) => sqlite3_complete(sql);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_complete16(  void* sql);
	[Inline]
	public static c_int complete16(  void* sql) => sqlite3_complete16(sql);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_busy_handler(  sqlite3* bf_arg0, function c_int(void*, c_int) bf_arg1, void* bf_arg2);
	[Inline]
	public static c_int busy_handler(  sqlite3* bf_arg0, function c_int(void*, c_int) bf_arg1, void* bf_arg2) => sqlite3_busy_handler(bf_arg0, bf_arg1, bf_arg2);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_busy_timeout(  sqlite3* bf_arg0, c_int ms);
	[Inline]
	public static c_int busy_timeout(  sqlite3* bf_arg0, c_int ms) => sqlite3_busy_timeout(bf_arg0, ms);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_get_table(  sqlite3* db, c_char* zSql, c_char*** pazResult, c_int* pnRow, c_int* pnColumn, c_char** pzErrmsg);
	[Inline]
	public static c_int get_table(  sqlite3* db, c_char* zSql, c_char*** pazResult, c_int* pnRow, c_int* pnColumn, c_char** pzErrmsg) => sqlite3_get_table(db, zSql, pazResult, pnRow, pnColumn, pzErrmsg);
	[Import("sqlite3.dll"), CLink]
	public static extern void sqlite3_free_table(  c_char** result);
	[Inline]
	public static void free_table(  c_char** result) => sqlite3_free_table(result);
	[Import("sqlite3.dll"), CLink]
	public static extern c_char* sqlite3_mprintf(  c_char* bf_arg0);
	[Inline]
	public static c_char* mprintf(  c_char* bf_arg0) => sqlite3_mprintf(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern c_char* sqlite3_vmprintf(  c_char* bf_arg0, void* bf_arg1);
	[Inline]
	public static c_char* vmprintf(  c_char* bf_arg0, void* bf_arg1) => sqlite3_vmprintf(bf_arg0, bf_arg1);
	[Import("sqlite3.dll"), CLink]
	public static extern c_char* sqlite3_snprintf(  c_int bf_arg0, c_char* bf_arg1, c_char* bf_arg2);
	[Inline]
	public static c_char* snprintf(  c_int bf_arg0, c_char* bf_arg1, c_char* bf_arg2) => sqlite3_snprintf(bf_arg0, bf_arg1, bf_arg2);
	[Import("sqlite3.dll"), CLink]
	public static extern c_char* sqlite3_vsnprintf(  c_int bf_arg0, c_char* bf_arg1, c_char* bf_arg2, void* bf_arg3);
	[Inline]
	public static c_char* vsnprintf(  c_int bf_arg0, c_char* bf_arg1, c_char* bf_arg2, void* bf_arg3) => sqlite3_vsnprintf(bf_arg0, bf_arg1, bf_arg2, bf_arg3);
	[Import("sqlite3.dll"), CLink]
	public static extern void* sqlite3_malloc(  c_int bf_arg0);
	[Inline]
	public static void* malloc(  c_int bf_arg0) => sqlite3_malloc(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern void* sqlite3_malloc64(  uint64 bf_arg0);
	[Inline]
	public static void* malloc64(  uint64 bf_arg0) => sqlite3_malloc64(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern void* sqlite3_realloc(  void* bf_arg0, c_int bf_arg1);
	[Inline]
	public static void* realloc(  void* bf_arg0, c_int bf_arg1) => sqlite3_realloc(bf_arg0, bf_arg1);
	[Import("sqlite3.dll"), CLink]
	public static extern void* sqlite3_realloc64(  void* bf_arg0, uint64 bf_arg1);
	[Inline]
	public static void* realloc64(  void* bf_arg0, uint64 bf_arg1) => sqlite3_realloc64(bf_arg0, bf_arg1);
	[Import("sqlite3.dll"), CLink]
	public static extern void sqlite3_free(  void* bf_arg0);
	[Inline]
	public static void free(  void* bf_arg0) => sqlite3_free(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern uint64 sqlite3_msize(  void* bf_arg0);
	[Inline]
	public static uint64 msize(  void* bf_arg0) => sqlite3_msize(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern int64 sqlite3_memory_used();
	[Inline]
	public static int64 memory_used() => sqlite3_memory_used();
	[Import("sqlite3.dll"), CLink]
	public static extern int64 sqlite3_memory_highwater(  c_int resetFlag);
	[Inline]
	public static int64 memory_highwater(  c_int resetFlag) => sqlite3_memory_highwater(resetFlag);
	[Import("sqlite3.dll"), CLink]
	public static extern void sqlite3_randomness(  c_int N, void* P);
	[Inline]
	public static void randomness(  c_int N, void* P) => sqlite3_randomness(N, P);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_set_authorizer(  sqlite3* bf_arg0, function c_int(void*, AuthorizerActionCodes, c_char*, c_char*, c_char*, c_char*) xAuth, void* pUserData);
	[Inline]
	public static c_int set_authorizer(  sqlite3* bf_arg0, function c_int(void*, AuthorizerActionCodes, c_char*, c_char*, c_char*, c_char*) xAuth, void* pUserData) => sqlite3_set_authorizer(bf_arg0, xAuth, pUserData);
	[Import("sqlite3.dll"), CLink]
	public static extern void* sqlite3_trace(  sqlite3* bf_arg0, function void(void*, c_char*) xTrace, void* bf_arg2);
	[Inline]
	public static void* trace(  sqlite3* bf_arg0, function void(void*, c_char*) xTrace, void* bf_arg2) => sqlite3_trace(bf_arg0, xTrace, bf_arg2);
	[Import("sqlite3.dll"), CLink]
	public static extern void* sqlite3_profile(  sqlite3* bf_arg0, function void(void*, c_char*, uint64) xProfile, void* bf_arg2);
	[Inline]
	public static void* profile(  sqlite3* bf_arg0, function void(void*, c_char*, uint64) xProfile, void* bf_arg2) => sqlite3_profile(bf_arg0, xProfile, bf_arg2);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_trace_v2(  sqlite3* bf_arg0, TraceEventCodes uMask, function c_int(c_uint, void*, void*, void*) xCallback, void* pCtx);
	[Inline]
	public static c_int trace_v2(  sqlite3* bf_arg0, TraceEventCodes uMask, function c_int(c_uint, void*, void*, void*) xCallback, void* pCtx) => sqlite3_trace_v2(bf_arg0, uMask, xCallback, pCtx);
	[Import("sqlite3.dll"), CLink]
	public static extern void sqlite3_progress_handler(  sqlite3* bf_arg0, c_int bf_arg1, function c_int(void*) bf_arg2, void* bf_arg3);
	[Inline]
	public static void progress_handler(  sqlite3* bf_arg0, c_int bf_arg1, function c_int(void*) bf_arg2, void* bf_arg3) => sqlite3_progress_handler(bf_arg0, bf_arg1, bf_arg2, bf_arg3);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_open(  c_char* filename, sqlite3** ppDb);
	[Inline]
	public static c_int open(  c_char* filename, sqlite3** ppDb) => sqlite3_open(filename, ppDb);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_open16(  void* filename, sqlite3** ppDb);
	[Inline]
	public static c_int open16(  void* filename, sqlite3** ppDb) => sqlite3_open16(filename, ppDb);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_open_v2(  c_char* filename, sqlite3** ppDb, FileOpenFlags flags, c_char* zVfs);
	[Inline]
	public static c_int open_v2(  c_char* filename, sqlite3** ppDb, FileOpenFlags flags, c_char* zVfs) => sqlite3_open_v2(filename, ppDb, flags, zVfs);
	[Import("sqlite3.dll"), CLink]
	public static extern c_char* sqlite3_uri_parameter(  filename z, c_char* zParam);
	[Inline]
	public static c_char* uri_parameter(  filename z, c_char* zParam) => sqlite3_uri_parameter(z, zParam);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_uri_boolean(  filename z, c_char* zParam, c_int bDefault);
	[Inline]
	public static c_int uri_boolean(  filename z, c_char* zParam, c_int bDefault) => sqlite3_uri_boolean(z, zParam, bDefault);
	[Import("sqlite3.dll"), CLink]
	public static extern int64 sqlite3_uri_int64(  filename bf_arg0, c_char* bf_arg1, int64 bf_arg2);
	[Inline]
	public static int64 uri_int64(  filename bf_arg0, c_char* bf_arg1, int64 bf_arg2) => sqlite3_uri_int64(bf_arg0, bf_arg1, bf_arg2);
	[Import("sqlite3.dll"), CLink]
	public static extern c_char* sqlite3_uri_key(  filename z, c_int N);
	[Inline]
	public static c_char* uri_key(  filename z, c_int N) => sqlite3_uri_key(z, N);
	[Import("sqlite3.dll"), CLink]
	public static extern c_char* sqlite3_filename_database(  filename bf_arg0);
	[Inline]
	public static c_char* filename_database(  filename bf_arg0) => sqlite3_filename_database(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern c_char* sqlite3_filename_journal(  filename bf_arg0);
	[Inline]
	public static c_char* filename_journal(  filename bf_arg0) => sqlite3_filename_journal(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern c_char* sqlite3_filename_wal(  filename bf_arg0);
	[Inline]
	public static c_char* filename_wal(  filename bf_arg0) => sqlite3_filename_wal(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern file* sqlite3_database_file_object(  c_char* bf_arg0);
	[Inline]
	public static file* database_file_object(  c_char* bf_arg0) => sqlite3_database_file_object(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern filename sqlite3_create_filename(  c_char* zDatabase, c_char* zJournal, c_char* zWal, c_int nParam, c_char** azParam);
	[Inline]
	public static filename create_filename(  c_char* zDatabase, c_char* zJournal, c_char* zWal, c_int nParam, c_char** azParam) => sqlite3_create_filename(zDatabase, zJournal, zWal, nParam, azParam);
	[Import("sqlite3.dll"), CLink]
	public static extern void sqlite3_free_filename(  filename bf_arg0);
	[Inline]
	public static void free_filename(  filename bf_arg0) => sqlite3_free_filename(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_errcode(  sqlite3* db);
	[Inline]
	public static c_int errcode(  sqlite3* db) => sqlite3_errcode(db);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_extended_errcode(  sqlite3* db);
	[Inline]
	public static c_int extended_errcode(  sqlite3* db) => sqlite3_extended_errcode(db);
	[Import("sqlite3.dll"), CLink]
	public static extern c_char* sqlite3_errmsg(  sqlite3* bf_arg0);
	[Inline]
	public static c_char* errmsg(  sqlite3* bf_arg0) => sqlite3_errmsg(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern void* sqlite3_errmsg16(  sqlite3* bf_arg0);
	[Inline]
	public static void* errmsg16(  sqlite3* bf_arg0) => sqlite3_errmsg16(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern c_char* sqlite3_errstr(  c_int bf_arg0);
	[Inline]
	public static c_char* errstr(  c_int bf_arg0) => sqlite3_errstr(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_error_offset(  sqlite3* db);
	[Inline]
	public static c_int error_offset(  sqlite3* db) => sqlite3_error_offset(db);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_limit(  sqlite3* bf_arg0, RuntimtLimitCategories id, c_int newVal);
	[Inline]
	public static c_int limit(  sqlite3* bf_arg0, RuntimtLimitCategories id, c_int newVal) => sqlite3_limit(bf_arg0, id, newVal);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_prepare(  sqlite3* db, c_char* zSql, c_int nByte, stmt** ppStmt, c_char** pzTail);
	[Inline]
	public static c_int prepare(  sqlite3* db, c_char* zSql, c_int nByte, stmt** ppStmt, c_char** pzTail) => sqlite3_prepare(db, zSql, nByte, ppStmt, pzTail);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_prepare_v2(  sqlite3* db, c_char* zSql, c_int nByte, stmt** ppStmt, c_char** pzTail);
	[Inline]
	public static c_int prepare_v2(  sqlite3* db, c_char* zSql, c_int nByte, stmt** ppStmt, c_char** pzTail) => sqlite3_prepare_v2(db, zSql, nByte, ppStmt, pzTail);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_prepare_v3(  sqlite3* db, c_char* zSql, c_int nByte, PrepareFlags prepFlags, stmt** ppStmt, c_char** pzTail);
	[Inline]
	public static c_int prepare_v3(  sqlite3* db, c_char* zSql, c_int nByte, PrepareFlags prepFlags, stmt** ppStmt, c_char** pzTail) => sqlite3_prepare_v3(db, zSql, nByte, prepFlags, ppStmt, pzTail);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_prepare16(  sqlite3* db, void* zSql, c_int nByte, stmt** ppStmt, void** pzTail);
	[Inline]
	public static c_int prepare16(  sqlite3* db, void* zSql, c_int nByte, stmt** ppStmt, void** pzTail) => sqlite3_prepare16(db, zSql, nByte, ppStmt, pzTail);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_prepare16_v2(  sqlite3* db, void* zSql, c_int nByte, stmt** ppStmt, void** pzTail);
	[Inline]
	public static c_int prepare16_v2(  sqlite3* db, void* zSql, c_int nByte, stmt** ppStmt, void** pzTail) => sqlite3_prepare16_v2(db, zSql, nByte, ppStmt, pzTail);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_prepare16_v3(  sqlite3* db, void* zSql, c_int nByte, PrepareFlags prepFlags, stmt** ppStmt, void** pzTail);
	[Inline]
	public static c_int prepare16_v3(  sqlite3* db, void* zSql, c_int nByte, PrepareFlags prepFlags, stmt** ppStmt, void** pzTail) => sqlite3_prepare16_v3(db, zSql, nByte, prepFlags, ppStmt, pzTail);
	[Import("sqlite3.dll"), CLink]
	public static extern c_char* sqlite3_sql(  stmt* pStmt);
	[Inline]
	public static c_char* sql(  stmt* pStmt) => sqlite3_sql(pStmt);
	[Import("sqlite3.dll"), CLink]
	public static extern c_char* sqlite3_expanded_sql(  stmt* pStmt);
	[Inline]
	public static c_char* expanded_sql(  stmt* pStmt) => sqlite3_expanded_sql(pStmt);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_stmt_readonly(  stmt* pStmt);
	[Inline]
	public static c_int stmt_readonly(  stmt* pStmt) => sqlite3_stmt_readonly(pStmt);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_stmt_isexplain(  stmt* pStmt);
	[Inline]
	public static c_int stmt_isexplain(  stmt* pStmt) => sqlite3_stmt_isexplain(pStmt);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_stmt_explain(  stmt* pStmt, c_int eMode);
	[Inline]
	public static c_int stmt_explain(  stmt* pStmt, c_int eMode) => sqlite3_stmt_explain(pStmt, eMode);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_stmt_busy(  stmt* bf_arg0);
	[Inline]
	public static c_int stmt_busy(  stmt* bf_arg0) => sqlite3_stmt_busy(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_bind_blob(  stmt* bf_arg0, c_int bf_arg1, void* bf_arg2, c_int n, function void(void*) bf_arg4);
	[Inline]
	public static c_int bind_blob(  stmt* bf_arg0, c_int bf_arg1, void* bf_arg2, c_int n, function void(void*) bf_arg4) => sqlite3_bind_blob(bf_arg0, bf_arg1, bf_arg2, n, bf_arg4);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_bind_blob64(  stmt* bf_arg0, c_int bf_arg1, void* bf_arg2, uint64 bf_arg3, function void(void*) bf_arg4);
	[Inline]
	public static c_int bind_blob64(  stmt* bf_arg0, c_int bf_arg1, void* bf_arg2, uint64 bf_arg3, function void(void*) bf_arg4) => sqlite3_bind_blob64(bf_arg0, bf_arg1, bf_arg2, bf_arg3, bf_arg4);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_bind_double(  stmt* bf_arg0, c_int bf_arg1, double bf_arg2);
	[Inline]
	public static c_int bind_double(  stmt* bf_arg0, c_int bf_arg1, double bf_arg2) => sqlite3_bind_double(bf_arg0, bf_arg1, bf_arg2);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_bind_int(  stmt* bf_arg0, c_int bf_arg1, c_int bf_arg2);
	[Inline]
	public static c_int bind_int(  stmt* bf_arg0, c_int bf_arg1, c_int bf_arg2) => sqlite3_bind_int(bf_arg0, bf_arg1, bf_arg2);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_bind_int64(  stmt* bf_arg0, c_int bf_arg1, int64 bf_arg2);
	[Inline]
	public static c_int bind_int64(  stmt* bf_arg0, c_int bf_arg1, int64 bf_arg2) => sqlite3_bind_int64(bf_arg0, bf_arg1, bf_arg2);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_bind_null(  stmt* bf_arg0, c_int bf_arg1);
	[Inline]
	public static c_int bind_null(  stmt* bf_arg0, c_int bf_arg1) => sqlite3_bind_null(bf_arg0, bf_arg1);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_bind_text(  stmt* bf_arg0, c_int bf_arg1, c_char* bf_arg2, c_int bf_arg3, function void(void*) bf_arg4);
	[Inline]
	public static c_int bind_text(  stmt* bf_arg0, c_int bf_arg1, c_char* bf_arg2, c_int bf_arg3, function void(void*) bf_arg4) => sqlite3_bind_text(bf_arg0, bf_arg1, bf_arg2, bf_arg3, bf_arg4);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_bind_text16(  stmt* bf_arg0, c_int bf_arg1, void* bf_arg2, c_int bf_arg3, function void(void*) bf_arg4);
	[Inline]
	public static c_int bind_text16(  stmt* bf_arg0, c_int bf_arg1, void* bf_arg2, c_int bf_arg3, function void(void*) bf_arg4) => sqlite3_bind_text16(bf_arg0, bf_arg1, bf_arg2, bf_arg3, bf_arg4);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_bind_text64(  stmt* bf_arg0, c_int bf_arg1, c_char* bf_arg2, uint64 bf_arg3, function void(void*) bf_arg4, c_uchar encoding);
	[Inline]
	public static c_int bind_text64(  stmt* bf_arg0, c_int bf_arg1, c_char* bf_arg2, uint64 bf_arg3, function void(void*) bf_arg4, c_uchar encoding) => sqlite3_bind_text64(bf_arg0, bf_arg1, bf_arg2, bf_arg3, bf_arg4, encoding);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_bind_value(  stmt* bf_arg0, c_int bf_arg1, value* bf_arg2);
	[Inline]
	public static c_int bind_value(  stmt* bf_arg0, c_int bf_arg1, value* bf_arg2) => sqlite3_bind_value(bf_arg0, bf_arg1, bf_arg2);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_bind_pointer(  stmt* bf_arg0, c_int bf_arg1, void* bf_arg2, c_char* bf_arg3, function void(void*) bf_arg4);
	[Inline]
	public static c_int bind_pointer(  stmt* bf_arg0, c_int bf_arg1, void* bf_arg2, c_char* bf_arg3, function void(void*) bf_arg4) => sqlite3_bind_pointer(bf_arg0, bf_arg1, bf_arg2, bf_arg3, bf_arg4);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_bind_zeroblob(  stmt* bf_arg0, c_int bf_arg1, c_int n);
	[Inline]
	public static c_int bind_zeroblob(  stmt* bf_arg0, c_int bf_arg1, c_int n) => sqlite3_bind_zeroblob(bf_arg0, bf_arg1, n);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_bind_zeroblob64(  stmt* bf_arg0, c_int bf_arg1, uint64 bf_arg2);
	[Inline]
	public static c_int bind_zeroblob64(  stmt* bf_arg0, c_int bf_arg1, uint64 bf_arg2) => sqlite3_bind_zeroblob64(bf_arg0, bf_arg1, bf_arg2);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_bind_parameter_count(  stmt* bf_arg0);
	[Inline]
	public static c_int bind_parameter_count(  stmt* bf_arg0) => sqlite3_bind_parameter_count(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern c_char* sqlite3_bind_parameter_name(  stmt* bf_arg0, c_int bf_arg1);
	[Inline]
	public static c_char* bind_parameter_name(  stmt* bf_arg0, c_int bf_arg1) => sqlite3_bind_parameter_name(bf_arg0, bf_arg1);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_bind_parameter_index(  stmt* bf_arg0, c_char* zName);
	[Inline]
	public static c_int bind_parameter_index(  stmt* bf_arg0, c_char* zName) => sqlite3_bind_parameter_index(bf_arg0, zName);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_clear_bindings(  stmt* bf_arg0);
	[Inline]
	public static c_int clear_bindings(  stmt* bf_arg0) => sqlite3_clear_bindings(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_column_count(  stmt* pStmt);
	[Inline]
	public static c_int column_count(  stmt* pStmt) => sqlite3_column_count(pStmt);
	[Import("sqlite3.dll"), CLink]
	public static extern c_char* sqlite3_column_name(  stmt* bf_arg0, c_int N);
	[Inline]
	public static c_char* column_name(  stmt* bf_arg0, c_int N) => sqlite3_column_name(bf_arg0, N);
	[Import("sqlite3.dll"), CLink]
	public static extern void* sqlite3_column_name16(  stmt* bf_arg0, c_int N);
	[Inline]
	public static void* column_name16(  stmt* bf_arg0, c_int N) => sqlite3_column_name16(bf_arg0, N);
	[Import("sqlite3.dll"), CLink]
	public static extern c_char* sqlite3_column_database_name(  stmt* bf_arg0, c_int bf_arg1);
	[Inline]
	public static c_char* column_database_name(  stmt* bf_arg0, c_int bf_arg1) => sqlite3_column_database_name(bf_arg0, bf_arg1);
	[Import("sqlite3.dll"), CLink]
	public static extern void* sqlite3_column_database_name16(  stmt* bf_arg0, c_int bf_arg1);
	[Inline]
	public static void* column_database_name16(  stmt* bf_arg0, c_int bf_arg1) => sqlite3_column_database_name16(bf_arg0, bf_arg1);
	[Import("sqlite3.dll"), CLink]
	public static extern c_char* sqlite3_column_table_name(  stmt* bf_arg0, c_int bf_arg1);
	[Inline]
	public static c_char* column_table_name(  stmt* bf_arg0, c_int bf_arg1) => sqlite3_column_table_name(bf_arg0, bf_arg1);
	[Import("sqlite3.dll"), CLink]
	public static extern void* sqlite3_column_table_name16(  stmt* bf_arg0, c_int bf_arg1);
	[Inline]
	public static void* column_table_name16(  stmt* bf_arg0, c_int bf_arg1) => sqlite3_column_table_name16(bf_arg0, bf_arg1);
	[Import("sqlite3.dll"), CLink]
	public static extern c_char* sqlite3_column_origin_name(  stmt* bf_arg0, c_int bf_arg1);
	[Inline]
	public static c_char* column_origin_name(  stmt* bf_arg0, c_int bf_arg1) => sqlite3_column_origin_name(bf_arg0, bf_arg1);
	[Import("sqlite3.dll"), CLink]
	public static extern void* sqlite3_column_origin_name16(  stmt* bf_arg0, c_int bf_arg1);
	[Inline]
	public static void* column_origin_name16(  stmt* bf_arg0, c_int bf_arg1) => sqlite3_column_origin_name16(bf_arg0, bf_arg1);
	[Import("sqlite3.dll"), CLink]
	public static extern c_char* sqlite3_column_decltype(  stmt* bf_arg0, c_int bf_arg1);
	[Inline]
	public static c_char* column_decltype(  stmt* bf_arg0, c_int bf_arg1) => sqlite3_column_decltype(bf_arg0, bf_arg1);
	[Import("sqlite3.dll"), CLink]
	public static extern void* sqlite3_column_decltype16(  stmt* bf_arg0, c_int bf_arg1);
	[Inline]
	public static void* column_decltype16(  stmt* bf_arg0, c_int bf_arg1) => sqlite3_column_decltype16(bf_arg0, bf_arg1);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_step(  stmt* bf_arg0);
	[Inline]
	public static c_int step(  stmt* bf_arg0) => sqlite3_step(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_data_count(  stmt* pStmt);
	[Inline]
	public static c_int data_count(  stmt* pStmt) => sqlite3_data_count(pStmt);
	[Import("sqlite3.dll"), CLink]
	public static extern void* sqlite3_column_blob(  stmt* bf_arg0, c_int iCol);
	[Inline]
	public static void* column_blob(  stmt* bf_arg0, c_int iCol) => sqlite3_column_blob(bf_arg0, iCol);
	[Import("sqlite3.dll"), CLink]
	public static extern double sqlite3_column_double(  stmt* bf_arg0, c_int iCol);
	[Inline]
	public static double column_double(  stmt* bf_arg0, c_int iCol) => sqlite3_column_double(bf_arg0, iCol);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_column_int(  stmt* bf_arg0, c_int iCol);
	[Inline]
	public static c_int column_int(  stmt* bf_arg0, c_int iCol) => sqlite3_column_int(bf_arg0, iCol);
	[Import("sqlite3.dll"), CLink]
	public static extern int64 sqlite3_column_int64(  stmt* bf_arg0, c_int iCol);
	[Inline]
	public static int64 column_int64(  stmt* bf_arg0, c_int iCol) => sqlite3_column_int64(bf_arg0, iCol);
	[Import("sqlite3.dll"), CLink]
	public static extern c_uchar* sqlite3_column_text(  stmt* bf_arg0, c_int iCol);
	[Inline]
	public static c_uchar* column_text(  stmt* bf_arg0, c_int iCol) => sqlite3_column_text(bf_arg0, iCol);
	[Import("sqlite3.dll"), CLink]
	public static extern void* sqlite3_column_text16(  stmt* bf_arg0, c_int iCol);
	[Inline]
	public static void* column_text16(  stmt* bf_arg0, c_int iCol) => sqlite3_column_text16(bf_arg0, iCol);
	[Import("sqlite3.dll"), CLink]
	public static extern value* sqlite3_column_value(  stmt* bf_arg0, c_int iCol);
	[Inline]
	public static value* column_value(  stmt* bf_arg0, c_int iCol) => sqlite3_column_value(bf_arg0, iCol);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_column_bytes(  stmt* bf_arg0, c_int iCol);
	[Inline]
	public static c_int column_bytes(  stmt* bf_arg0, c_int iCol) => sqlite3_column_bytes(bf_arg0, iCol);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_column_bytes16(  stmt* bf_arg0, c_int iCol);
	[Inline]
	public static c_int column_bytes16(  stmt* bf_arg0, c_int iCol) => sqlite3_column_bytes16(bf_arg0, iCol);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_column_type(  stmt* bf_arg0, c_int iCol);
	[Inline]
	public static c_int column_type(  stmt* bf_arg0, c_int iCol) => sqlite3_column_type(bf_arg0, iCol);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_finalize(  stmt* pStmt);
	[Inline]
	public static c_int finalize(  stmt* pStmt) => sqlite3_finalize(pStmt);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_reset(  stmt* pStmt);
	[Inline]
	public static c_int reset(  stmt* pStmt) => sqlite3_reset(pStmt);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_create_function(  sqlite3* db, c_char* zFunctionName, c_int nArg, c_int eTextRep, void* pApp, function void(context*, c_int, value**) xFunc, function void(context*, c_int, value**) xStep, function void(context*) xFinal);
	[Inline]
	public static c_int create_function(  sqlite3* db, c_char* zFunctionName, c_int nArg, c_int eTextRep, void* pApp, function void(context*, c_int, value**) xFunc, function void(context*, c_int, value**) xStep, function void(context*) xFinal) => sqlite3_create_function(db, zFunctionName, nArg, eTextRep, pApp, xFunc, xStep, xFinal);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_create_function16(  sqlite3* db, void* zFunctionName, c_int nArg, c_int eTextRep, void* pApp, function void(context*, c_int, value**) xFunc, function void(context*, c_int, value**) xStep, function void(context*) xFinal);
	[Inline]
	public static c_int create_function16(  sqlite3* db, void* zFunctionName, c_int nArg, c_int eTextRep, void* pApp, function void(context*, c_int, value**) xFunc, function void(context*, c_int, value**) xStep, function void(context*) xFinal) => sqlite3_create_function16(db, zFunctionName, nArg, eTextRep, pApp, xFunc, xStep, xFinal);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_create_function_v2(  sqlite3* db, c_char* zFunctionName, c_int nArg, c_int eTextRep, void* pApp, function void(context*, c_int, value**) xFunc, function void(context*, c_int, value**) xStep, function void(context*) xFinal, function void(void*) xDestroy);
	[Inline]
	public static c_int create_function_v2(  sqlite3* db, c_char* zFunctionName, c_int nArg, c_int eTextRep, void* pApp, function void(context*, c_int, value**) xFunc, function void(context*, c_int, value**) xStep, function void(context*) xFinal, function void(void*) xDestroy) => sqlite3_create_function_v2(db, zFunctionName, nArg, eTextRep, pApp, xFunc, xStep, xFinal, xDestroy);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_create_window_function(  sqlite3* db, c_char* zFunctionName, c_int nArg, c_int eTextRep, void* pApp, function void(context*, c_int, value**) xStep, function void(context*) xFinal, function void(context*) xValue, function void(context*, c_int, value**) xInverse, function void(void*) xDestroy);
	[Inline]
	public static c_int create_window_function(  sqlite3* db, c_char* zFunctionName, c_int nArg, c_int eTextRep, void* pApp, function void(context*, c_int, value**) xStep, function void(context*) xFinal, function void(context*) xValue, function void(context*, c_int, value**) xInverse, function void(void*) xDestroy) => sqlite3_create_window_function(db, zFunctionName, nArg, eTextRep, pApp, xStep, xFinal, xValue, xInverse, xDestroy);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_aggregate_count(  context* bf_arg0);
	[Inline]
	public static c_int aggregate_count(  context* bf_arg0) => sqlite3_aggregate_count(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_expired(  stmt* bf_arg0);
	[Inline]
	public static c_int expired(  stmt* bf_arg0) => sqlite3_expired(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_transfer_bindings(  stmt* bf_arg0, stmt* bf_arg1);
	[Inline]
	public static c_int transfer_bindings(  stmt* bf_arg0, stmt* bf_arg1) => sqlite3_transfer_bindings(bf_arg0, bf_arg1);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_global_recover();
	[Inline]
	public static c_int global_recover() => sqlite3_global_recover();
	[Import("sqlite3.dll"), CLink]
	public static extern void sqlite3_thread_cleanup();
	[Inline]
	public static void thread_cleanup() => sqlite3_thread_cleanup();
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_memory_alarm(  function void(void*, int64, c_int) bf_arg0, void* bf_arg1, int64 bf_arg2);
	[Inline]
	public static c_int memory_alarm(  function void(void*, int64, c_int) bf_arg0, void* bf_arg1, int64 bf_arg2) => sqlite3_memory_alarm(bf_arg0, bf_arg1, bf_arg2);
	[Import("sqlite3.dll"), CLink]
	public static extern void* sqlite3_value_blob(  value* bf_arg0);
	[Inline]
	public static void* value_blob(  value* bf_arg0) => sqlite3_value_blob(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern double sqlite3_value_double(  value* bf_arg0);
	[Inline]
	public static double value_double(  value* bf_arg0) => sqlite3_value_double(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_value_int(  value* bf_arg0);
	[Inline]
	public static c_int value_int(  value* bf_arg0) => sqlite3_value_int(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern int64 sqlite3_value_int64(  value* bf_arg0);
	[Inline]
	public static int64 value_int64(  value* bf_arg0) => sqlite3_value_int64(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern void* sqlite3_value_pointer(  value* bf_arg0, c_char* bf_arg1);
	[Inline]
	public static void* value_pointer(  value* bf_arg0, c_char* bf_arg1) => sqlite3_value_pointer(bf_arg0, bf_arg1);
	[Import("sqlite3.dll"), CLink]
	public static extern c_uchar* sqlite3_value_text(  value* bf_arg0);
	[Inline]
	public static c_uchar* value_text(  value* bf_arg0) => sqlite3_value_text(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern void* sqlite3_value_text16(  value* bf_arg0);
	[Inline]
	public static void* value_text16(  value* bf_arg0) => sqlite3_value_text16(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern void* sqlite3_value_text16le(  value* bf_arg0);
	[Inline]
	public static void* value_text16le(  value* bf_arg0) => sqlite3_value_text16le(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern void* sqlite3_value_text16be(  value* bf_arg0);
	[Inline]
	public static void* value_text16be(  value* bf_arg0) => sqlite3_value_text16be(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_value_bytes(  value* bf_arg0);
	[Inline]
	public static c_int value_bytes(  value* bf_arg0) => sqlite3_value_bytes(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_value_bytes16(  value* bf_arg0);
	[Inline]
	public static c_int value_bytes16(  value* bf_arg0) => sqlite3_value_bytes16(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_value_type(  value* bf_arg0);
	[Inline]
	public static c_int value_type(  value* bf_arg0) => sqlite3_value_type(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_value_numeric_type(  value* bf_arg0);
	[Inline]
	public static c_int value_numeric_type(  value* bf_arg0) => sqlite3_value_numeric_type(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_value_nochange(  value* bf_arg0);
	[Inline]
	public static c_int value_nochange(  value* bf_arg0) => sqlite3_value_nochange(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_value_frombind(  value* bf_arg0);
	[Inline]
	public static c_int value_frombind(  value* bf_arg0) => sqlite3_value_frombind(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_value_encoding(  value* bf_arg0);
	[Inline]
	public static c_int value_encoding(  value* bf_arg0) => sqlite3_value_encoding(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern c_uint sqlite3_value_subtype(  value* bf_arg0);
	[Inline]
	public static c_uint value_subtype(  value* bf_arg0) => sqlite3_value_subtype(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern value* sqlite3_value_dup(  value* bf_arg0);
	[Inline]
	public static value* value_dup(  value* bf_arg0) => sqlite3_value_dup(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern void sqlite3_value_free(  value* bf_arg0);
	[Inline]
	public static void value_free(  value* bf_arg0) => sqlite3_value_free(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern void* sqlite3_aggregate_context(  context* bf_arg0, c_int nBytes);
	[Inline]
	public static void* aggregate_context(  context* bf_arg0, c_int nBytes) => sqlite3_aggregate_context(bf_arg0, nBytes);
	[Import("sqlite3.dll"), CLink]
	public static extern void* sqlite3_user_data(  context* bf_arg0);
	[Inline]
	public static void* user_data(  context* bf_arg0) => sqlite3_user_data(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern sqlite3* sqlite3_context_db_handle(  context* bf_arg0);
	[Inline]
	public static sqlite3* context_db_handle(  context* bf_arg0) => sqlite3_context_db_handle(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern void* sqlite3_get_auxdata(  context* bf_arg0, c_int N);
	[Inline]
	public static void* get_auxdata(  context* bf_arg0, c_int N) => sqlite3_get_auxdata(bf_arg0, N);
	[Import("sqlite3.dll"), CLink]
	public static extern void sqlite3_set_auxdata(  context* bf_arg0, c_int N, void* bf_arg2, function void(void*) bf_arg3);
	[Inline]
	public static void set_auxdata(  context* bf_arg0, c_int N, void* bf_arg2, function void(void*) bf_arg3) => sqlite3_set_auxdata(bf_arg0, N, bf_arg2, bf_arg3);
	[Import("sqlite3.dll"), CLink]
	public static extern void* sqlite3_get_clientdata(  sqlite3* bf_arg0, c_char* bf_arg1);
	[Inline]
	public static void* get_clientdata(  sqlite3* bf_arg0, c_char* bf_arg1) => sqlite3_get_clientdata(bf_arg0, bf_arg1);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_set_clientdata(  sqlite3* bf_arg0, c_char* bf_arg1, void* bf_arg2, function void(void*) bf_arg3);
	[Inline]
	public static c_int set_clientdata(  sqlite3* bf_arg0, c_char* bf_arg1, void* bf_arg2, function void(void*) bf_arg3) => sqlite3_set_clientdata(bf_arg0, bf_arg1, bf_arg2, bf_arg3);
	[Import("sqlite3.dll"), CLink]
	public static extern void sqlite3_result_blob(  context* bf_arg0, void* bf_arg1, c_int bf_arg2, function void(void*) bf_arg3);
	[Inline]
	public static void result_blob(  context* bf_arg0, void* bf_arg1, c_int bf_arg2, function void(void*) bf_arg3) => sqlite3_result_blob(bf_arg0, bf_arg1, bf_arg2, bf_arg3);
	[Import("sqlite3.dll"), CLink]
	public static extern void sqlite3_result_blob64(  context* bf_arg0, void* bf_arg1, uint64 bf_arg2, function void(void*) bf_arg3);
	[Inline]
	public static void result_blob64(  context* bf_arg0, void* bf_arg1, uint64 bf_arg2, function void(void*) bf_arg3) => sqlite3_result_blob64(bf_arg0, bf_arg1, bf_arg2, bf_arg3);
	[Import("sqlite3.dll"), CLink]
	public static extern void sqlite3_result_double(  context* bf_arg0, double bf_arg1);
	[Inline]
	public static void result_double(  context* bf_arg0, double bf_arg1) => sqlite3_result_double(bf_arg0, bf_arg1);
	[Import("sqlite3.dll"), CLink]
	public static extern void sqlite3_result_error(  context* bf_arg0, c_char* bf_arg1, c_int bf_arg2);
	[Inline]
	public static void result_error(  context* bf_arg0, c_char* bf_arg1, c_int bf_arg2) => sqlite3_result_error(bf_arg0, bf_arg1, bf_arg2);
	[Import("sqlite3.dll"), CLink]
	public static extern void sqlite3_result_error16(  context* bf_arg0, void* bf_arg1, c_int bf_arg2);
	[Inline]
	public static void result_error16(  context* bf_arg0, void* bf_arg1, c_int bf_arg2) => sqlite3_result_error16(bf_arg0, bf_arg1, bf_arg2);
	[Import("sqlite3.dll"), CLink]
	public static extern void sqlite3_result_error_toobig(  context* bf_arg0);
	[Inline]
	public static void result_error_toobig(  context* bf_arg0) => sqlite3_result_error_toobig(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern void sqlite3_result_error_nomem(  context* bf_arg0);
	[Inline]
	public static void result_error_nomem(  context* bf_arg0) => sqlite3_result_error_nomem(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern void sqlite3_result_error_code(  context* bf_arg0, c_int bf_arg1);
	[Inline]
	public static void result_error_code(  context* bf_arg0, c_int bf_arg1) => sqlite3_result_error_code(bf_arg0, bf_arg1);
	[Import("sqlite3.dll"), CLink]
	public static extern void sqlite3_result_int(  context* bf_arg0, c_int bf_arg1);
	[Inline]
	public static void result_int(  context* bf_arg0, c_int bf_arg1) => sqlite3_result_int(bf_arg0, bf_arg1);
	[Import("sqlite3.dll"), CLink]
	public static extern void sqlite3_result_int64(  context* bf_arg0, int64 bf_arg1);
	[Inline]
	public static void result_int64(  context* bf_arg0, int64 bf_arg1) => sqlite3_result_int64(bf_arg0, bf_arg1);
	[Import("sqlite3.dll"), CLink]
	public static extern void sqlite3_result_null(  context* bf_arg0);
	[Inline]
	public static void result_null(  context* bf_arg0) => sqlite3_result_null(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern void sqlite3_result_text(  context* bf_arg0, c_char* bf_arg1, c_int bf_arg2, function void(void*) bf_arg3);
	[Inline]
	public static void result_text(  context* bf_arg0, c_char* bf_arg1, c_int bf_arg2, function void(void*) bf_arg3) => sqlite3_result_text(bf_arg0, bf_arg1, bf_arg2, bf_arg3);
	[Import("sqlite3.dll"), CLink]
	public static extern void sqlite3_result_text64(  context* bf_arg0, c_char* bf_arg1, uint64 bf_arg2, function void(void*) bf_arg3, c_uchar encoding);
	[Inline]
	public static void result_text64(  context* bf_arg0, c_char* bf_arg1, uint64 bf_arg2, function void(void*) bf_arg3, c_uchar encoding) => sqlite3_result_text64(bf_arg0, bf_arg1, bf_arg2, bf_arg3, encoding);
	[Import("sqlite3.dll"), CLink]
	public static extern void sqlite3_result_text16(  context* bf_arg0, void* bf_arg1, c_int bf_arg2, function void(void*) bf_arg3);
	[Inline]
	public static void result_text16(  context* bf_arg0, void* bf_arg1, c_int bf_arg2, function void(void*) bf_arg3) => sqlite3_result_text16(bf_arg0, bf_arg1, bf_arg2, bf_arg3);
	[Import("sqlite3.dll"), CLink]
	public static extern void sqlite3_result_text16le(  context* bf_arg0, void* bf_arg1, c_int bf_arg2, function void(void*) bf_arg3);
	[Inline]
	public static void result_text16le(  context* bf_arg0, void* bf_arg1, c_int bf_arg2, function void(void*) bf_arg3) => sqlite3_result_text16le(bf_arg0, bf_arg1, bf_arg2, bf_arg3);
	[Import("sqlite3.dll"), CLink]
	public static extern void sqlite3_result_text16be(  context* bf_arg0, void* bf_arg1, c_int bf_arg2, function void(void*) bf_arg3);
	[Inline]
	public static void result_text16be(  context* bf_arg0, void* bf_arg1, c_int bf_arg2, function void(void*) bf_arg3) => sqlite3_result_text16be(bf_arg0, bf_arg1, bf_arg2, bf_arg3);
	[Import("sqlite3.dll"), CLink]
	public static extern void sqlite3_result_value(  context* bf_arg0, value* bf_arg1);
	[Inline]
	public static void result_value(  context* bf_arg0, value* bf_arg1) => sqlite3_result_value(bf_arg0, bf_arg1);
	[Import("sqlite3.dll"), CLink]
	public static extern void sqlite3_result_pointer(  context* bf_arg0, void* bf_arg1, c_char* bf_arg2, function void(void*) bf_arg3);
	[Inline]
	public static void result_pointer(  context* bf_arg0, void* bf_arg1, c_char* bf_arg2, function void(void*) bf_arg3) => sqlite3_result_pointer(bf_arg0, bf_arg1, bf_arg2, bf_arg3);
	[Import("sqlite3.dll"), CLink]
	public static extern void sqlite3_result_zeroblob(  context* bf_arg0, c_int n);
	[Inline]
	public static void result_zeroblob(  context* bf_arg0, c_int n) => sqlite3_result_zeroblob(bf_arg0, n);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_result_zeroblob64(  context* bf_arg0, uint64 n);
	[Inline]
	public static c_int result_zeroblob64(  context* bf_arg0, uint64 n) => sqlite3_result_zeroblob64(bf_arg0, n);
	[Import("sqlite3.dll"), CLink]
	public static extern void sqlite3_result_subtype(  context* bf_arg0, c_uint bf_arg1);
	[Inline]
	public static void result_subtype(  context* bf_arg0, c_uint bf_arg1) => sqlite3_result_subtype(bf_arg0, bf_arg1);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_create_collation(  sqlite3* bf_arg0, c_char* zName, c_int eTextRep, void* pArg, function c_int(void*, c_int, void*, c_int, void*) xCompare);
	[Inline]
	public static c_int create_collation(  sqlite3* bf_arg0, c_char* zName, c_int eTextRep, void* pArg, function c_int(void*, c_int, void*, c_int, void*) xCompare) => sqlite3_create_collation(bf_arg0, zName, eTextRep, pArg, xCompare);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_create_collation_v2(  sqlite3* bf_arg0, c_char* zName, c_int eTextRep, void* pArg, function c_int(void*, c_int, void*, c_int, void*) xCompare, function void(void*) xDestroy);
	[Inline]
	public static c_int create_collation_v2(  sqlite3* bf_arg0, c_char* zName, c_int eTextRep, void* pArg, function c_int(void*, c_int, void*, c_int, void*) xCompare, function void(void*) xDestroy) => sqlite3_create_collation_v2(bf_arg0, zName, eTextRep, pArg, xCompare, xDestroy);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_create_collation16(  sqlite3* bf_arg0, void* zName, c_int eTextRep, void* pArg, function c_int(void*, c_int, void*, c_int, void*) xCompare);
	[Inline]
	public static c_int create_collation16(  sqlite3* bf_arg0, void* zName, c_int eTextRep, void* pArg, function c_int(void*, c_int, void*, c_int, void*) xCompare) => sqlite3_create_collation16(bf_arg0, zName, eTextRep, pArg, xCompare);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_collation_needed(  sqlite3* bf_arg0, void* bf_arg1, function void(void*, sqlite3*, c_int, c_char*) bf_arg2);
	[Inline]
	public static c_int collation_needed(  sqlite3* bf_arg0, void* bf_arg1, function void(void*, sqlite3*, c_int, c_char*) bf_arg2) => sqlite3_collation_needed(bf_arg0, bf_arg1, bf_arg2);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_collation_needed16(  sqlite3* bf_arg0, void* bf_arg1, function void(void*, sqlite3*, c_int, void*) bf_arg2);
	[Inline]
	public static c_int collation_needed16(  sqlite3* bf_arg0, void* bf_arg1, function void(void*, sqlite3*, c_int, void*) bf_arg2) => sqlite3_collation_needed16(bf_arg0, bf_arg1, bf_arg2);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_sleep(  c_int bf_arg0);
	[Inline]
	public static c_int sleep(  c_int bf_arg0) => sqlite3_sleep(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_win32_set_directory(  Win32DirectoryTypes type, void* zValue);
	[Inline]
	public static c_int win32_set_directory(  Win32DirectoryTypes type, void* zValue) => sqlite3_win32_set_directory(type, zValue);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_win32_set_directory8(  Win32DirectoryTypes type, c_char* zValue);
	[Inline]
	public static c_int win32_set_directory8(  Win32DirectoryTypes type, c_char* zValue) => sqlite3_win32_set_directory8(type, zValue);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_win32_set_directory16(  Win32DirectoryTypes type, void* zValue);
	[Inline]
	public static c_int win32_set_directory16(  Win32DirectoryTypes type, void* zValue) => sqlite3_win32_set_directory16(type, zValue);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_get_autocommit(  sqlite3* bf_arg0);
	[Inline]
	public static c_int get_autocommit(  sqlite3* bf_arg0) => sqlite3_get_autocommit(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern sqlite3* sqlite3_db_handle(  stmt* bf_arg0);
	[Inline]
	public static sqlite3* db_handle(  stmt* bf_arg0) => sqlite3_db_handle(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern c_char* sqlite3_db_name(  sqlite3* db, c_int N);
	[Inline]
	public static c_char* db_name(  sqlite3* db, c_int N) => sqlite3_db_name(db, N);
	[Import("sqlite3.dll"), CLink]
	public static extern filename sqlite3_db_filename(  sqlite3* db, c_char* zDbName);
	[Inline]
	public static filename db_filename(  sqlite3* db, c_char* zDbName) => sqlite3_db_filename(db, zDbName);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_db_readonly(  sqlite3* db, c_char* zDbName);
	[Inline]
	public static c_int db_readonly(  sqlite3* db, c_char* zDbName) => sqlite3_db_readonly(db, zDbName);
	[Import("sqlite3.dll"), CLink]
	public static extern TransactionState sqlite3_txn_state(  sqlite3* bf_arg0, c_char* zSchema);
	[Inline]
	public static TransactionState txn_state(  sqlite3* bf_arg0, c_char* zSchema) => sqlite3_txn_state(bf_arg0, zSchema);
	[Import("sqlite3.dll"), CLink]
	public static extern stmt* sqlite3_next_stmt(  sqlite3* pDb, stmt* pStmt);
	[Inline]
	public static stmt* next_stmt(  sqlite3* pDb, stmt* pStmt) => sqlite3_next_stmt(pDb, pStmt);
	[Import("sqlite3.dll"), CLink]
	public static extern void* sqlite3_commit_hook(  sqlite3* bf_arg0, function c_int(void*) bf_arg1, void* bf_arg2);
	[Inline]
	public static void* commit_hook(  sqlite3* bf_arg0, function c_int(void*) bf_arg1, void* bf_arg2) => sqlite3_commit_hook(bf_arg0, bf_arg1, bf_arg2);
	[Import("sqlite3.dll"), CLink]
	public static extern void* sqlite3_rollback_hook(  sqlite3* bf_arg0, function void(void*) bf_arg1, void* bf_arg2);
	[Inline]
	public static void* rollback_hook(  sqlite3* bf_arg0, function void(void*) bf_arg1, void* bf_arg2) => sqlite3_rollback_hook(bf_arg0, bf_arg1, bf_arg2);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_autovacuum_pages(  sqlite3* db, function c_uint(void*, c_char*, c_uint, c_uint, c_uint) bf_arg1, void* bf_arg2, function void(void*) bf_arg3);
	[Inline]
	public static c_int autovacuum_pages(  sqlite3* db, function c_uint(void*, c_char*, c_uint, c_uint, c_uint) bf_arg1, void* bf_arg2, function void(void*) bf_arg3) => sqlite3_autovacuum_pages(db, bf_arg1, bf_arg2, bf_arg3);
	[Import("sqlite3.dll"), CLink]
	public static extern void* sqlite3_update_hook(  sqlite3* bf_arg0, function void(void*, c_int, c_char*, c_char*, int64) bf_arg1, void* bf_arg2);
	[Inline]
	public static void* update_hook(  sqlite3* bf_arg0, function void(void*, c_int, c_char*, c_char*, int64) bf_arg1, void* bf_arg2) => sqlite3_update_hook(bf_arg0, bf_arg1, bf_arg2);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_enable_shared_cache(  c_int bf_arg0);
	[Inline]
	public static c_int enable_shared_cache(  c_int bf_arg0) => sqlite3_enable_shared_cache(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_release_memory(  c_int bf_arg0);
	[Inline]
	public static c_int release_memory(  c_int bf_arg0) => sqlite3_release_memory(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_db_release_memory(  sqlite3* bf_arg0);
	[Inline]
	public static c_int db_release_memory(  sqlite3* bf_arg0) => sqlite3_db_release_memory(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern int64 sqlite3_soft_heap_limit64(  int64 N);
	[Inline]
	public static int64 soft_heap_limit64(  int64 N) => sqlite3_soft_heap_limit64(N);
	[Import("sqlite3.dll"), CLink]
	public static extern int64 sqlite3_hard_heap_limit64(  int64 N);
	[Inline]
	public static int64 hard_heap_limit64(  int64 N) => sqlite3_hard_heap_limit64(N);
	[Import("sqlite3.dll"), CLink]
	public static extern void sqlite3_soft_heap_limit(  c_int N);
	[Inline]
	public static void soft_heap_limit(  c_int N) => sqlite3_soft_heap_limit(N);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_table_column_metadata(  sqlite3* db, c_char* zDbName, c_char* zTableName, c_char* zColumnName, c_char** pzDataType, c_char** pzCollSeq, c_int* pNotNull, c_int* pPrimaryKey, c_int* pAutoinc);
	[Inline]
	public static c_int table_column_metadata(  sqlite3* db, c_char* zDbName, c_char* zTableName, c_char* zColumnName, c_char** pzDataType, c_char** pzCollSeq, c_int* pNotNull, c_int* pPrimaryKey, c_int* pAutoinc) => sqlite3_table_column_metadata(db, zDbName, zTableName, zColumnName, pzDataType, pzCollSeq, pNotNull, pPrimaryKey, pAutoinc);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_load_extension(  sqlite3* db, c_char* zFile, c_char* zProc, c_char** pzErrMsg);
	[Inline]
	public static c_int load_extension(  sqlite3* db, c_char* zFile, c_char* zProc, c_char** pzErrMsg) => sqlite3_load_extension(db, zFile, zProc, pzErrMsg);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_enable_load_extension(  sqlite3* db, c_int onoff);
	[Inline]
	public static c_int enable_load_extension(  sqlite3* db, c_int onoff) => sqlite3_enable_load_extension(db, onoff);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_auto_extension(  function void(void) xEntryPoint);
	[Inline]
	public static c_int auto_extension(  function void(void) xEntryPoint) => sqlite3_auto_extension(xEntryPoint);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_cancel_auto_extension(  function void(void) xEntryPoint);
	[Inline]
	public static c_int cancel_auto_extension(  function void(void) xEntryPoint) => sqlite3_cancel_auto_extension(xEntryPoint);
	[Import("sqlite3.dll"), CLink]
	public static extern void sqlite3_reset_auto_extension();
	[Inline]
	public static void reset_auto_extension() => sqlite3_reset_auto_extension();
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_create_module(  sqlite3* db, c_char* zName, module* p, void* pClientData);
	[Inline]
	public static c_int create_module(  sqlite3* db, c_char* zName, module* p, void* pClientData) => sqlite3_create_module(db, zName, p, pClientData);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_create_module_v2(  sqlite3* db, c_char* zName, module* p, void* pClientData, function void(void*) xDestroy);
	[Inline]
	public static c_int create_module_v2(  sqlite3* db, c_char* zName, module* p, void* pClientData, function void(void*) xDestroy) => sqlite3_create_module_v2(db, zName, p, pClientData, xDestroy);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_drop_modules(  sqlite3* db, c_char** azKeep);
	[Inline]
	public static c_int drop_modules(  sqlite3* db, c_char** azKeep) => sqlite3_drop_modules(db, azKeep);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_declare_vtab(  sqlite3* bf_arg0, c_char* zSQL);
	[Inline]
	public static c_int declare_vtab(  sqlite3* bf_arg0, c_char* zSQL) => sqlite3_declare_vtab(bf_arg0, zSQL);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_overload_function(  sqlite3* bf_arg0, c_char* zFuncName, c_int nArg);
	[Inline]
	public static c_int overload_function(  sqlite3* bf_arg0, c_char* zFuncName, c_int nArg) => sqlite3_overload_function(bf_arg0, zFuncName, nArg);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_blob_open(  sqlite3* bf_arg0, c_char* zDb, c_char* zTable, c_char* zColumn, int64 iRow, c_int flags, blob** ppBlob);
	[Inline]
	public static c_int blob_open(  sqlite3* bf_arg0, c_char* zDb, c_char* zTable, c_char* zColumn, int64 iRow, c_int flags, blob** ppBlob) => sqlite3_blob_open(bf_arg0, zDb, zTable, zColumn, iRow, flags, ppBlob);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_blob_reopen(  blob* bf_arg0, int64 bf_arg1);
	[Inline]
	public static c_int blob_reopen(  blob* bf_arg0, int64 bf_arg1) => sqlite3_blob_reopen(bf_arg0, bf_arg1);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_blob_close(  blob* bf_arg0);
	[Inline]
	public static c_int blob_close(  blob* bf_arg0) => sqlite3_blob_close(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_blob_bytes(  blob* bf_arg0);
	[Inline]
	public static c_int blob_bytes(  blob* bf_arg0) => sqlite3_blob_bytes(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_blob_read(  blob* bf_arg0, void* Z, c_int N, c_int iOffset);
	[Inline]
	public static c_int blob_read(  blob* bf_arg0, void* Z, c_int N, c_int iOffset) => sqlite3_blob_read(bf_arg0, Z, N, iOffset);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_blob_write(  blob* bf_arg0, void* z, c_int n, c_int iOffset);
	[Inline]
	public static c_int blob_write(  blob* bf_arg0, void* z, c_int n, c_int iOffset) => sqlite3_blob_write(bf_arg0, z, n, iOffset);
	[Import("sqlite3.dll"), CLink]
	public static extern vfs* sqlite3_vfs_find(  c_char* zVfsName);
	[Inline]
	public static vfs* vfs_find(  c_char* zVfsName) => sqlite3_vfs_find(zVfsName);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_vfs_register(  vfs* bf_arg0, c_int makeDflt);
	[Inline]
	public static c_int vfs_register(  vfs* bf_arg0, c_int makeDflt) => sqlite3_vfs_register(bf_arg0, makeDflt);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_vfs_unregister(  vfs* bf_arg0);
	[Inline]
	public static c_int vfs_unregister(  vfs* bf_arg0) => sqlite3_vfs_unregister(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern mutex* sqlite3_mutex_alloc(  c_int bf_arg0);
	[Inline]
	public static mutex* mutex_alloc(  c_int bf_arg0) => sqlite3_mutex_alloc(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern void sqlite3_mutex_free(  mutex* bf_arg0);
	[Inline]
	public static void mutex_free(  mutex* bf_arg0) => sqlite3_mutex_free(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern void sqlite3_mutex_enter(  mutex* bf_arg0);
	[Inline]
	public static void mutex_enter(  mutex* bf_arg0) => sqlite3_mutex_enter(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_mutex_try(  mutex* bf_arg0);
	[Inline]
	public static c_int mutex_try(  mutex* bf_arg0) => sqlite3_mutex_try(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern void sqlite3_mutex_leave(  mutex* bf_arg0);
	[Inline]
	public static void mutex_leave(  mutex* bf_arg0) => sqlite3_mutex_leave(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_mutex_held(  mutex* bf_arg0);
	[Inline]
	public static c_int mutex_held(  mutex* bf_arg0) => sqlite3_mutex_held(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_mutex_notheld(  mutex* bf_arg0);
	[Inline]
	public static c_int mutex_notheld(  mutex* bf_arg0) => sqlite3_mutex_notheld(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern mutex* sqlite3_db_mutex(  sqlite3* bf_arg0);
	[Inline]
	public static mutex* db_mutex(  sqlite3* bf_arg0) => sqlite3_db_mutex(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_file_control(  sqlite3* bf_arg0, c_char* zDbName, FileControlOpcodes op, void* bf_arg3);
	[Inline]
	public static c_int file_control(  sqlite3* bf_arg0, c_char* zDbName, FileControlOpcodes op, void* bf_arg3) => sqlite3_file_control(bf_arg0, zDbName, op, bf_arg3);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_test_control(  c_int op);
	[Inline]
	public static c_int test_control(  c_int op) => sqlite3_test_control(op);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_keyword_count();
	[Inline]
	public static c_int keyword_count() => sqlite3_keyword_count();
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_keyword_name(  c_int bf_arg0, c_char** bf_arg1, c_int* bf_arg2);
	[Inline]
	public static c_int keyword_name(  c_int bf_arg0, c_char** bf_arg1, c_int* bf_arg2) => sqlite3_keyword_name(bf_arg0, bf_arg1, bf_arg2);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_keyword_check(  c_char* bf_arg0, c_int bf_arg1);
	[Inline]
	public static c_int keyword_check(  c_char* bf_arg0, c_int bf_arg1) => sqlite3_keyword_check(bf_arg0, bf_arg1);
	[Import("sqlite3.dll"), CLink]
	public static extern str* sqlite3_str_new(  sqlite3* bf_arg0);
	[Inline]
	public static str* str_new(  sqlite3* bf_arg0) => sqlite3_str_new(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern c_char* sqlite3_str_finish(  str* bf_arg0);
	[Inline]
	public static c_char* str_finish(  str* bf_arg0) => sqlite3_str_finish(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern void sqlite3_str_appendf(  str* bf_arg0, c_char* zFormat);
	[Inline]
	public static void str_appendf(  str* bf_arg0, c_char* zFormat) => sqlite3_str_appendf(bf_arg0, zFormat);
	[Import("sqlite3.dll"), CLink]
	public static extern void sqlite3_str_vappendf(  str* bf_arg0, c_char* zFormat, void* bf_arg2);
	[Inline]
	public static void str_vappendf(  str* bf_arg0, c_char* zFormat, void* bf_arg2) => sqlite3_str_vappendf(bf_arg0, zFormat, bf_arg2);
	[Import("sqlite3.dll"), CLink]
	public static extern void sqlite3_str_append(  str* bf_arg0, c_char* zIn, c_int N);
	[Inline]
	public static void str_append(  str* bf_arg0, c_char* zIn, c_int N) => sqlite3_str_append(bf_arg0, zIn, N);
	[Import("sqlite3.dll"), CLink]
	public static extern void sqlite3_str_appendall(  str* bf_arg0, c_char* zIn);
	[Inline]
	public static void str_appendall(  str* bf_arg0, c_char* zIn) => sqlite3_str_appendall(bf_arg0, zIn);
	[Import("sqlite3.dll"), CLink]
	public static extern void sqlite3_str_appendchar(  str* bf_arg0, c_int N, c_char C);
	[Inline]
	public static void str_appendchar(  str* bf_arg0, c_int N, c_char C) => sqlite3_str_appendchar(bf_arg0, N, C);
	[Import("sqlite3.dll"), CLink]
	public static extern void sqlite3_str_reset(  str* bf_arg0);
	[Inline]
	public static void str_reset(  str* bf_arg0) => sqlite3_str_reset(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_str_errcode(  str* bf_arg0);
	[Inline]
	public static c_int str_errcode(  str* bf_arg0) => sqlite3_str_errcode(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_str_length(  str* bf_arg0);
	[Inline]
	public static c_int str_length(  str* bf_arg0) => sqlite3_str_length(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern c_char* sqlite3_str_value(  str* bf_arg0);
	[Inline]
	public static c_char* str_value(  str* bf_arg0) => sqlite3_str_value(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_status(  c_int op, c_int* pCurrent, c_int* pHighwater, c_int resetFlag);
	[Inline]
	public static c_int status(  c_int op, c_int* pCurrent, c_int* pHighwater, c_int resetFlag) => sqlite3_status(op, pCurrent, pHighwater, resetFlag);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_status64(  c_int op, int64* pCurrent, int64* pHighwater, c_int resetFlag);
	[Inline]
	public static c_int status64(  c_int op, int64* pCurrent, int64* pHighwater, c_int resetFlag) => sqlite3_status64(op, pCurrent, pHighwater, resetFlag);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_db_status(  sqlite3* bf_arg0, c_int op, c_int* pCur, c_int* pHiwtr, c_int resetFlg);
	[Inline]
	public static c_int db_status(  sqlite3* bf_arg0, c_int op, c_int* pCur, c_int* pHiwtr, c_int resetFlg) => sqlite3_db_status(bf_arg0, op, pCur, pHiwtr, resetFlg);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_stmt_status(  stmt* bf_arg0, c_int op, c_int resetFlg);
	[Inline]
	public static c_int stmt_status(  stmt* bf_arg0, c_int op, c_int resetFlg) => sqlite3_stmt_status(bf_arg0, op, resetFlg);
	[Import("sqlite3.dll"), CLink]
	public static extern backup* sqlite3_backup_init(  sqlite3* pDest, c_char* zDestName, sqlite3* pSource, c_char* zSourceName);
	[Inline]
	public static backup* backup_init(  sqlite3* pDest, c_char* zDestName, sqlite3* pSource, c_char* zSourceName) => sqlite3_backup_init(pDest, zDestName, pSource, zSourceName);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_backup_step(  backup* p, c_int nPage);
	[Inline]
	public static c_int backup_step(  backup* p, c_int nPage) => sqlite3_backup_step(p, nPage);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_backup_finish(  backup* p);
	[Inline]
	public static c_int backup_finish(  backup* p) => sqlite3_backup_finish(p);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_backup_remaining(  backup* p);
	[Inline]
	public static c_int backup_remaining(  backup* p) => sqlite3_backup_remaining(p);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_backup_pagecount(  backup* p);
	[Inline]
	public static c_int backup_pagecount(  backup* p) => sqlite3_backup_pagecount(p);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_unlock_notify(  sqlite3* pBlocked, function void(void**, c_int) xNotify, void* pNotifyArg);
	[Inline]
	public static c_int unlock_notify(  sqlite3* pBlocked, function void(void**, c_int) xNotify, void* pNotifyArg) => sqlite3_unlock_notify(pBlocked, xNotify, pNotifyArg);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_stricmp(  c_char* bf_arg0, c_char* bf_arg1);
	[Inline]
	public static c_int stricmp(  c_char* bf_arg0, c_char* bf_arg1) => sqlite3_stricmp(bf_arg0, bf_arg1);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_strnicmp(  c_char* bf_arg0, c_char* bf_arg1, c_int bf_arg2);
	[Inline]
	public static c_int strnicmp(  c_char* bf_arg0, c_char* bf_arg1, c_int bf_arg2) => sqlite3_strnicmp(bf_arg0, bf_arg1, bf_arg2);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_strglob(  c_char* zGlob, c_char* zStr);
	[Inline]
	public static c_int strglob(  c_char* zGlob, c_char* zStr) => sqlite3_strglob(zGlob, zStr);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_strlike(  c_char* zGlob, c_char* zStr, c_uint cEsc);
	[Inline]
	public static c_int strlike(  c_char* zGlob, c_char* zStr, c_uint cEsc) => sqlite3_strlike(zGlob, zStr, cEsc);
	[Import("sqlite3.dll"), CLink]
	public static extern void sqlite3_log(  c_int iErrCode, c_char* zFormat);
	[Inline]
	public static void log(  c_int iErrCode, c_char* zFormat) => sqlite3_log(iErrCode, zFormat);
	[Import("sqlite3.dll"), CLink]
	public static extern void* sqlite3_wal_hook(  sqlite3* bf_arg0, function c_int(void*, sqlite3*, c_char*, c_int) bf_arg1, void* bf_arg2);
	[Inline]
	public static void* wal_hook(  sqlite3* bf_arg0, function c_int(void*, sqlite3*, c_char*, c_int) bf_arg1, void* bf_arg2) => sqlite3_wal_hook(bf_arg0, bf_arg1, bf_arg2);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_wal_autocheckpoint(  sqlite3* db, c_int N);
	[Inline]
	public static c_int wal_autocheckpoint(  sqlite3* db, c_int N) => sqlite3_wal_autocheckpoint(db, N);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_wal_checkpoint(  sqlite3* db, c_char* zDb);
	[Inline]
	public static c_int wal_checkpoint(  sqlite3* db, c_char* zDb) => sqlite3_wal_checkpoint(db, zDb);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_wal_checkpoint_v2(  sqlite3* db, c_char* zDb, c_int eMode, c_int* pnLog, c_int* pnCkpt);
	[Inline]
	public static c_int wal_checkpoint_v2(  sqlite3* db, c_char* zDb, c_int eMode, c_int* pnLog, c_int* pnCkpt) => sqlite3_wal_checkpoint_v2(db, zDb, eMode, pnLog, pnCkpt);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_vtab_config(  sqlite3* bf_arg0, c_int op);
	[Inline]
	public static c_int vtab_config(  sqlite3* bf_arg0, c_int op) => sqlite3_vtab_config(bf_arg0, op);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_vtab_on_conflict(  sqlite3* bf_arg0);
	[Inline]
	public static c_int vtab_on_conflict(  sqlite3* bf_arg0) => sqlite3_vtab_on_conflict(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_vtab_nochange(  context* bf_arg0);
	[Inline]
	public static c_int vtab_nochange(  context* bf_arg0) => sqlite3_vtab_nochange(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern c_char* sqlite3_vtab_collation(  index_info* bf_arg0, c_int bf_arg1);
	[Inline]
	public static c_char* vtab_collation(  index_info* bf_arg0, c_int bf_arg1) => sqlite3_vtab_collation(bf_arg0, bf_arg1);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_vtab_distinct(  index_info* bf_arg0);
	[Inline]
	public static c_int vtab_distinct(  index_info* bf_arg0) => sqlite3_vtab_distinct(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_vtab_in(  index_info* bf_arg0, c_int iCons, c_int bHandle);
	[Inline]
	public static c_int vtab_in(  index_info* bf_arg0, c_int iCons, c_int bHandle) => sqlite3_vtab_in(bf_arg0, iCons, bHandle);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_vtab_in_first(  value* pVal, value** ppOut);
	[Inline]
	public static c_int vtab_in_first(  value* pVal, value** ppOut) => sqlite3_vtab_in_first(pVal, ppOut);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_vtab_in_next(  value* pVal, value** ppOut);
	[Inline]
	public static c_int vtab_in_next(  value* pVal, value** ppOut) => sqlite3_vtab_in_next(pVal, ppOut);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_vtab_rhs_value(  index_info* bf_arg0, c_int bf_arg1, value** ppVal);
	[Inline]
	public static c_int vtab_rhs_value(  index_info* bf_arg0, c_int bf_arg1, value** ppVal) => sqlite3_vtab_rhs_value(bf_arg0, bf_arg1, ppVal);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_stmt_scanstatus(  stmt* pStmt, c_int idx, c_int iScanStatusOp, void* pOut);
	[Inline]
	public static c_int stmt_scanstatus(  stmt* pStmt, c_int idx, c_int iScanStatusOp, void* pOut) => sqlite3_stmt_scanstatus(pStmt, idx, iScanStatusOp, pOut);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_stmt_scanstatus_v2(  stmt* pStmt, c_int idx, c_int iScanStatusOp, c_int flags, void* pOut);
	[Inline]
	public static c_int stmt_scanstatus_v2(  stmt* pStmt, c_int idx, c_int iScanStatusOp, c_int flags, void* pOut) => sqlite3_stmt_scanstatus_v2(pStmt, idx, iScanStatusOp, flags, pOut);
	[Import("sqlite3.dll"), CLink]
	public static extern void sqlite3_stmt_scanstatus_reset(  stmt* bf_arg0);
	[Inline]
	public static void stmt_scanstatus_reset(  stmt* bf_arg0) => sqlite3_stmt_scanstatus_reset(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_db_cacheflush(  sqlite3* bf_arg0);
	[Inline]
	public static c_int db_cacheflush(  sqlite3* bf_arg0) => sqlite3_db_cacheflush(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_system_errno(  sqlite3* bf_arg0);
	[Inline]
	public static c_int system_errno(  sqlite3* bf_arg0) => sqlite3_system_errno(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_snapshot_get(  sqlite3* db, c_char* zSchema, snapshot** ppSnapshot);
	[Inline]
	public static c_int snapshot_get(  sqlite3* db, c_char* zSchema, snapshot** ppSnapshot) => sqlite3_snapshot_get(db, zSchema, ppSnapshot);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_snapshot_open(  sqlite3* db, c_char* zSchema, snapshot* pSnapshot);
	[Inline]
	public static c_int snapshot_open(  sqlite3* db, c_char* zSchema, snapshot* pSnapshot) => sqlite3_snapshot_open(db, zSchema, pSnapshot);
	[Import("sqlite3.dll"), CLink]
	public static extern void sqlite3_snapshot_free(  snapshot* bf_arg0);
	[Inline]
	public static void snapshot_free(  snapshot* bf_arg0) => sqlite3_snapshot_free(bf_arg0);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_snapshot_cmp(  snapshot* p1, snapshot* p2);
	[Inline]
	public static c_int snapshot_cmp(  snapshot* p1, snapshot* p2) => sqlite3_snapshot_cmp(p1, p2);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_snapshot_recover(  sqlite3* db, c_char* zDb);
	[Inline]
	public static c_int snapshot_recover(  sqlite3* db, c_char* zDb) => sqlite3_snapshot_recover(db, zDb);
	[Import("sqlite3.dll"), CLink]
	public static extern c_uchar* sqlite3_serialize(  sqlite3* db, c_char* zSchema, int64* piSize, c_uint mFlags);
	[Inline]
	public static c_uchar* serialize(  sqlite3* db, c_char* zSchema, int64* piSize, c_uint mFlags) => sqlite3_serialize(db, zSchema, piSize, mFlags);
	[Import("sqlite3.dll"), CLink]
	public static extern c_int sqlite3_deserialize(  sqlite3* db, c_char* zSchema, c_uchar* pData, int64 szDb, int64 szBuf, c_uint mFlags);
	[Inline]
	public static c_int deserialize(  sqlite3* db, c_char* zSchema, c_uchar* pData, int64 szDb, int64 szBuf, c_uint mFlags) => sqlite3_deserialize(db, zSchema, pData, szDb, szBuf, mFlags);

	[CRepr]
	public struct sqlite3;
	[CRepr]
	public struct file
	{
		public io_methods* pMethods;
	}
	[CRepr]
	public struct io_methods
	{
		public c_int iVersion;
		public function c_int(file*) xClose;
		public function c_int(file*, void*, c_int iAmt, int64 iOfst) xRead;
		public function c_int(file*, void*, c_int iAmt, int64 iOfst) xWrite;
		public function c_int(file*, int64 size) xTruncate;
		public function c_int(file*, SynchronizationTypeFlags flags) xSync;
		public function c_int(file*, int64* pSize) xFileSize;
		public function c_int(file*, FileLockingLevels) xLock;
		public function c_int(file*, FileLockingLevels) xUnlock;
		public function c_int(file*, c_int* pResOut) xCheckReservedLock;
		public function c_int(file*, FileControlOpcodes op, void* pArg) xFileControl;
		public function c_int(file*) xSectorSize;
		public function DeviceCharacteristics(file*) xDeviceCharacteristics;
		public function c_int(file*, c_int iPg, c_int pgsz, c_int, void**) xShmMap;
		public function c_int(file*, c_int offset, c_int n, XShmLockFlags flags) xShmLock;
		public function void(file*) xShmBarrier;
		public function c_int(file*, c_int deleteFlag) xShmUnmap;
		public function c_int(file*, int64 iOfst, c_int iAmt, void** pp) xFetch;
		public function c_int(file*, int64 iOfst, void* p) xUnfetch;
	}
	[CRepr]
	public struct mutex; //This one might not actually be opaque sqlite doesnt exactly define it as such, but its still only handled as a pointer
	[CRepr]
	public struct api_routines;
	[CRepr]
	public struct vfs
	{
		public c_int iVersion;
		public c_int szOsFile;
		public int mxPathname;
		public vfs*pNext;
		public c_char* zName;
		public void* pAppData;
		public function c_int(vfs*, filename zName, file*, FileOpenFlags flags, c_int* pOutFlags) xOpen;
		public function c_int(vfs*, c_char* zName, c_int syncDir) xDelete;
		public function c_int(vfs*, c_char* zName, XAcessFlags flags, c_int* pResOut) xAccess;
		public function c_int(vfs*, c_char* zName, c_int nOut, c_char* zOut) xFullPathname;
		public function void*(vfs*, c_char* zFilename) xDlOpen;
		public function void(vfs*, c_int nByte, c_char *zErrMsg) xDlError;
		public function function void(void)(vfs*, void*, c_char* zSymbol) xDlSym; //Function that returns a function which has no input and output
		public function void(vfs*, void*)xDlClose;
		public function c_int(vfs*, c_int nByte, c_char* zOut) xRandomness;
		public function c_int(vfs*, c_int microseconds) xSleep;
		public function c_int(vfs*, double*) xCurrentTime;
		public function c_int(vfs*, c_int, c_char*) xGetLastError;
		public function c_int(vfs*, int64*) xCurrentTimeInt64;
		public function c_int(vfs*, c_char* zName, function void(void)) xSetSystemCall;
		public function function void(void)(vfs*, c_char* zName) xGetSystemCall;
		public function c_char*(vfs*, c_char* zName) xNextSystemCall;
	}
	[CRepr]
	public struct mem_methods
	{
		public function void*(int) xMalloc;
		public function void(void*) xFree;
		public function void*(void*, int) xRealloc;
		public function int(void*) xSize;
		public function int(int) xRoundup;
		public function int(void*) xInit;
		public function void(void*) xShutdown;
		public void* pAppData;
	}
	[CRepr]
	public struct stmt;
	[CRepr, Union]
	public struct value
	{
		public c_int int;
		public float float;
		public c_char* string;
		//NULL
		public void* blob;
	}
	[CRepr]
	public struct context;

	[CRepr]
	public struct module
	{
		public c_int iVersion;
		public function c_int(sqlite3*, void*, c_int, c_char**, vtab**, c_char**) xCreate;
		public function c_int(sqlite3*, void*, c_int, c_char**, vtab**, c_char**) xConnect;
		public function c_int(vtab*, index_info*) xBestIndex;
		public function c_int(vtab*) xDisconnect;
		public function c_int(vtab*) xDestroy;
		public function c_int(vtab*, vtab_cursor**) xOpen;
		public function c_int(vtab_cursor*) xClose;
		public function c_int(vtab_cursor*, c_int, c_char*, c_int, value**) xFilter;
		public function c_int(vtab_cursor*) xNext;
		public function c_int(vtab_cursor*) xEof;
		public function c_int(vtab_cursor*, context*, int) xColumn;
		public function c_int(vtab_cursor*, int64*) xRowid;
		public function c_int(vtab*, c_int, value**, int64*) xUpdate;
		public function c_int(vtab*) xBegin;
		public function c_int(vtab*) xSync;
		public function c_int(vtab*) xCommit;
		public function c_int(vtab*) xRollback;
		public function c_int(vtab*, c_int, c_char*, function void(context*, c_int, value**), void**) xFindFunction;
		public function c_int(vtab*, c_char*) xRename;
		public function c_int(vtab*, int) xSavepoint;
		public function c_int(vtab*, int) xRelease;
		public function c_int(vtab*, int) xRollbackTo;
		public function c_int(c_char*) xShadowName;
		public function c_int(vtab*, c_char*, c_char*, c_int, c_char**) xIntegrity;
	}
	[CRepr]
	public struct index_info
	{
		public c_int nConstraint;
		public index_constraint* aConstraint;
		public c_int nOrderBy;
		public index_orderby* aOrderBy;
		public index_constraint_usage *aConstraintUsage;
		c_int idxNum;
		c_char* idxStr;
		c_int needToFreeIdxStr;
		c_int orderByConsumed;
		double estimatedCost;
		int64 estimatedRows;
		c_int idxFlags;
		uint64 colUsed;
	}
	[CRepr]
	public struct index_constraint
	{
		public c_int iColumn;
		public c_uchar op;
		public c_uchar usable;
		public c_int iTermOffset;
		public index_constraint* aConstraint;
		public c_int nOrderBy;
	}
	[CRepr]
	public struct index_orderby
	{
		public c_int iColumn;
		public c_uchar desc;
	}
	[CRepr]
	public struct index_constraint_usage
	{
		public c_int argvIndex;
		public c_uchar omit;
		public c_int idxNum;
		public c_char* idxStr;
		public c_int needToFreeIdxStr;
		public c_int orderByConsumed;
		public double estimatedCost;
		public int64 estimatedRows;
		public c_int idxFlags;
		public uint64 colUsed;
	}
	[CRepr]
	public struct vtab
	{
		public module* pModule;
		public c_int nRef;
		public c_char* zErrMsg;
	}
	[CRepr]
	public struct vtab_cursor
	{
		public vtab* pVtab;
	}
	[CRepr]
	public struct blob;
	[CRepr]
	public struct mutex_methods
	{
		public function c_int(void) xMutexInit;
		public function c_int(void) xMutexEnd;
		public function mutex*(c_int) xMutexAlloc;
		public function void(mutex*) xMutexFree;
		public function void(mutex*) xMutexEnter;
		public function c_int(mutex*) xMutexTry;
		public function void(mutex*) xMutexLeave;
		public function c_int(mutex*) xMutexHeld;
		public function c_int(mutex*) xMutexNotheld;
	}
	[CRepr]
	public struct str;
	[CRepr]
	public struct pcache;
	[CRepr]
	public struct pcache_page
	{
		public void* pBuf;
		public void* pExtra;
	}
	[CRepr]
	public struct pcache_methods2
	{
		public c_int iVersion;
		public void* pArg;
		public function int(void*) xInit;
		public function void(void*) xShutdown;
		public function pcache*(c_int, c_int, c_int) xCreate;
		public function void(pcache*, c_int) xCachesize;
		public function c_int(pcache*) xPagecount;
		public function pcache_page*(pcache*, c_uint, c_int) xFetch;
		public function void(pcache*, pcache_page*, c_int) xUnpin;
		public function void(pcache*, pcache_page*, c_uint, c_uint) xRekey;
		public function void(pcache*, c_uint) xTruncate;
		public function void(pcache*) xDestroy;
		public function void(pcache*) xShrink;
	}
	[CRepr]
	public struct pcache_methods
	{
		public void* pArg;
		public function c_int(void*) xInit;
		public function void(void*) xShutdown;
		public function pcache*(c_int, c_int) xCreate;
		public function void(pcache*, c_int) xCachesize;
		public function c_int(pcache*) xPagecount;
		public function void*(pcache*, c_uint, c_int) xFetch;
		public function void(pcache*, void*, c_int) xUnpin;
		public function void(pcache*, void*, c_uint, c_uint) xRekey;
		public function void(pcache*, c_uint) xTruncate;
		public function void(pcache*) xDestroy;
	}
	[CRepr]
	public struct backup;
	[CRepr]
	public struct snapshot
	{
		public c_uchar[48] hidden;
	}
	typealias filename = c_char*;
}
