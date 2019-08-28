SQL> conn sys/root as sysdba
Connected.
SQL> select * from v$logfile
  2  ;

    GROUP# STATUS  TYPE
---------- ------- -------
MEMBER
--------------------------------------------------------------------------------
IS_
---
         2         ONLINE
C:\ORACLEXE\APP\ORACLE\FAST_RECOVERY_AREA\XE\ONLINELOG\O1_MF_2_GJPV6DF1_.LOG
YES

         1         ONLINE
C:\ORACLEXE\APP\ORACLE\FAST_RECOVERY_AREA\XE\ONLINELOG\O1_MF_1_GJPV6CPB_.LOG
YES

    GROUP# STATUS  TYPE
---------- ------- -------
MEMBER
--------------------------------------------------------------------------------
IS_
---

         3         ONLINE
C:\ORACLEXE\APP\ORACLE\FAST_RECOVERY_AREA\XE\ONLINELOG\FILE3.LOG
NO

         2         ONLINE
C:\ORACLEXE\APP\ORACLE\FAST_RECOVERY_AREA\XE\ONLINELOG\O1_MF_2_GJPV6DF1_C.LOG

    GROUP# STATUS  TYPE
---------- ------- -------
MEMBER
--------------------------------------------------------------------------------
IS_
---
NO


SQL> select group#,member from v$logfile;

    GROUP#
----------
MEMBER
--------------------------------------------------------------------------------
         2
C:\ORACLEXE\APP\ORACLE\FAST_RECOVERY_AREA\XE\ONLINELOG\O1_MF_2_GJPV6DF1_.LOG

         1
C:\ORACLEXE\APP\ORACLE\FAST_RECOVERY_AREA\XE\ONLINELOG\O1_MF_1_GJPV6CPB_.LOG

         3
C:\ORACLEXE\APP\ORACLE\FAST_RECOVERY_AREA\XE\ONLINELOG\FILE3.LOG


    GROUP#
----------
MEMBER
--------------------------------------------------------------------------------
         2
C:\ORACLEXE\APP\ORACLE\FAST_RECOVERY_AREA\XE\ONLINELOG\O1_MF_2_GJPV6DF1_C.LOG


SQL> alter database drop logfile group 3;
alter database drop logfile group 3
*
ERROR at line 1:
ORA-01623: log 3 is current log for instance xe (thread 1) - cannot drop
ORA-00312: online log 3 thread 1:
'C:\ORACLEXE\APP\ORACLE\FAST_RECOVERY_AREA\XE\ONLINELOG\FILE3.LOG'


SQL> alter system switch logfile;

System altered.

SQL> alter database drop logfile group 3;
alter database drop logfile group 3
*
ERROR at line 1:
ORA-01624: log 3 needed for crash recovery of instance xe (thread 1)
ORA-00312: online log 3 thread 1:
'C:\ORACLEXE\APP\ORACLE\FAST_RECOVERY_AREA\XE\ONLINELOG\FILE3.LOG'


SQL> select *from v$log;

    GROUP#    THREAD#  SEQUENCE#      BYTES  BLOCKSIZE    MEMBERS ARC
---------- ---------- ---------- ---------- ---------- ---------- ---
STATUS           FIRST_CHANGE# FIRST_TIM NEXT_CHANGE# NEXT_TIME
---------------- ------------- --------- ------------ ---------
         1          1         33   52428800        512          1 NO
CURRENT                1354307 20-AUG-19   2.8147E+14

         2          1         31   52428800        512          2 NO
INACTIVE               1321621 19-AUG-19      1352357 20-AUG-19

         3          1         32   52428800        512          1 NO
ACTIVE                 1352357 20-AUG-19      1354307 20-AUG-19


SQL> select archiver from v$instance;

ARCHIVE
-------
STOPPED

SQL> select status from v$logfile;

STATUS
-------





SQL> select status from v$logfile;

STATUS
-------





SQL> select*from v$logfile;

    GROUP# STATUS  TYPE
---------- ------- -------
MEMBER
--------------------------------------------------------------------------------
IS_
---
         2         ONLINE
C:\ORACLEXE\APP\ORACLE\FAST_RECOVERY_AREA\XE\ONLINELOG\O1_MF_2_GJPV6DF1_.LOG
YES

         1         ONLINE
C:\ORACLEXE\APP\ORACLE\FAST_RECOVERY_AREA\XE\ONLINELOG\O1_MF_1_GJPV6CPB_.LOG
YES

    GROUP# STATUS  TYPE
---------- ------- -------
MEMBER
--------------------------------------------------------------------------------
IS_
---

         3         ONLINE
C:\ORACLEXE\APP\ORACLE\FAST_RECOVERY_AREA\XE\ONLINELOG\FILE3.LOG
NO

         2         ONLINE
C:\ORACLEXE\APP\ORACLE\FAST_RECOVERY_AREA\XE\ONLINELOG\O1_MF_2_GJPV6DF1_C.LOG

    GROUP# STATUS  TYPE
---------- ------- -------
MEMBER
--------------------------------------------------------------------------------
IS_
---
NO


SQL> set linesize 150
SQL> set pagesize 60
SQL> set linesize 150
SQL> select*from v$logfile;

    GROUP# STATUS  TYPE
---------- ------- -------
MEMBER
------------------------------------------------------------------------------------------------------------------------------------------------------
IS_
---
         2         ONLINE
C:\ORACLEXE\APP\ORACLE\FAST_RECOVERY_AREA\XE\ONLINELOG\O1_MF_2_GJPV6DF1_.LOG
YES

         1         ONLINE
C:\ORACLEXE\APP\ORACLE\FAST_RECOVERY_AREA\XE\ONLINELOG\O1_MF_1_GJPV6CPB_.LOG
YES

         3         ONLINE
C:\ORACLEXE\APP\ORACLE\FAST_RECOVERY_AREA\XE\ONLINELOG\FILE3.LOG
NO

         2         ONLINE
C:\ORACLEXE\APP\ORACLE\FAST_RECOVERY_AREA\XE\ONLINELOG\O1_MF_2_GJPV6DF1_C.LOG
NO


SQL> select*from v$log;

    GROUP#    THREAD#  SEQUENCE#      BYTES  BLOCKSIZE    MEMBERS ARC STATUS           FIRST_CHANGE# FIRST_TIM NEXT_CHANGE# NEXT_TIME
---------- ---------- ---------- ---------- ---------- ---------- --- ---------------- ------------- --------- ------------ ---------
         1          1         33   52428800        512          1 NO  CURRENT                1354307 20-AUG-19   2.8147E+14
         2          1         31   52428800        512          2 NO  INACTIVE               1321621 19-AUG-19      1352357 20-AUG-19
         3          1         32   52428800        512          1 NO  INACTIVE               1352357 20-AUG-19      1354307 20-AUG-19

SQL> select tablespace_name from dba_tablespace;
select tablespace_name from dba_tablespace
                            *
ERROR at line 1:
ORA-00942: table or view does not exist


SQL> select tablespace_name from dba_tablespaces;

TABLESPACE_NAME
------------------------------
SYSTEM
SYSAUX
UNDOTBS1
TEMP
USERS

SQL> desc user_tables;
 Name                                                                                Null?    Type
 ----------------------------------------------------------------------------------- -------- --------------------------------------------------------
 TABLE_NAME                                                                          NOT NULL VARCHAR2(30)
 TABLESPACE_NAME                                                                              VARCHAR2(30)
 CLUSTER_NAME                                                                                 VARCHAR2(30)
 IOT_NAME                                                                                     VARCHAR2(30)
 STATUS                                                                                       VARCHAR2(8)
 PCT_FREE                                                                                     NUMBER
 PCT_USED                                                                                     NUMBER
 INI_TRANS                                                                                    NUMBER
 MAX_TRANS                                                                                    NUMBER
 INITIAL_EXTENT                                                                               NUMBER
 NEXT_EXTENT                                                                                  NUMBER
 MIN_EXTENTS                                                                                  NUMBER
 MAX_EXTENTS                                                                                  NUMBER
 PCT_INCREASE                                                                                 NUMBER
 FREELISTS                                                                                    NUMBER
 FREELIST_GROUPS                                                                              NUMBER
 LOGGING                                                                                      VARCHAR2(3)
 BACKED_UP                                                                                    VARCHAR2(1)
 NUM_ROWS                                                                                     NUMBER
 BLOCKS                                                                                       NUMBER
 EMPTY_BLOCKS                                                                                 NUMBER
 AVG_SPACE                                                                                    NUMBER
 CHAIN_CNT                                                                                    NUMBER
 AVG_ROW_LEN                                                                                  NUMBER
 AVG_SPACE_FREELIST_BLOCKS                                                                    NUMBER
 NUM_FREELIST_BLOCKS                                                                          NUMBER
 DEGREE                                                                                       VARCHAR2(40)
 INSTANCES                                                                                    VARCHAR2(40)
 CACHE                                                                                        VARCHAR2(20)
 TABLE_LOCK                                                                                   VARCHAR2(8)
 SAMPLE_SIZE                                                                                  NUMBER
 LAST_ANALYZED                                                                                DATE
 PARTITIONED                                                                                  VARCHAR2(3)
 IOT_TYPE                                                                                     VARCHAR2(12)
 TEMPORARY                                                                                    VARCHAR2(1)
 SECONDARY                                                                                    VARCHAR2(1)
 NESTED                                                                                       VARCHAR2(3)
 BUFFER_POOL                                                                                  VARCHAR2(7)
 FLASH_CACHE                                                                                  VARCHAR2(7)
 CELL_FLASH_CACHE                                                                             VARCHAR2(7)
 ROW_MOVEMENT                                                                                 VARCHAR2(8)
 GLOBAL_STATS                                                                                 VARCHAR2(3)
 USER_STATS                                                                                   VARCHAR2(3)
 DURATION                                                                                     VARCHAR2(15)
 SKIP_CORRUPT                                                                                 VARCHAR2(8)
 MONITORING                                                                                   VARCHAR2(3)
 CLUSTER_OWNER                                                                                VARCHAR2(30)
 DEPENDENCIES                                                                                 VARCHAR2(8)
 COMPRESSION                                                                                  VARCHAR2(8)
 COMPRESS_FOR                                                                                 VARCHAR2(12)
 DROPPED                                                                                      VARCHAR2(3)
 READ_ONLY                                                                                    VARCHAR2(3)
 SEGMENT_CREATED                                                                              VARCHAR2(3)
 RESULT_CACHE                                                                                 VARCHAR2(7)

SQL> select table_name,table_space from user_tables;
select table_name,table_space from user_tables
                  *
ERROR at line 1:
ORA-00904: "TABLE_SPACE": invalid identifier


SQL> select table_name,tablespace_name from user_tables;

TABLE_NAME                     TABLESPACE_NAME
------------------------------ ------------------------------
ICOL$                          SYSTEM
IND$                           SYSTEM
COL$                           SYSTEM
CLU$                           SYSTEM
TAB$                           SYSTEM
LOB$                           SYSTEM
COLTYPE$                       SYSTEM
SUBCOLTYPE$                    SYSTEM
NTAB$                          SYSTEM
REFCON$                        SYSTEM
OPQTYPE$                       SYSTEM
ICOLDEP$                       SYSTEM
VIEWTRCOL$                     SYSTEM
LIBRARY$                       SYSTEM
ASSEMBLY$                      SYSTEM
ATTRCOL$                       SYSTEM
TYPE_MISC$                     SYSTEM
TS$                            SYSTEM
FET$                           SYSTEM
UET$                           SYSTEM
SEG$                           SYSTEM
USER$                          SYSTEM
TSQ$                           SYSTEM
UNDO$                          SYSTEM
FILE$                          SYSTEM
OBJ$                           SYSTEM
PROXY_DATA$                    SYSTEM
PROXY_ROLE_DATA$               SYSTEM
CON$                           SYSTEM
CCOL$                          SYSTEM
CDEF$                          SYSTEM
BOOTSTRAP$                     SYSTEM
OBJERROR$                      SYSTEM
OBJAUTH$                       SYSTEM
UGROUP$                        SYSTEM
SYN$                           SYSTEM
VIEW$                          SYSTEM
TYPED_VIEW$                    SYSTEM
SUPEROBJ$                      SYSTEM
SEQ$                           SYSTEM
PROPS$                         SYSTEM
EDITION$                       SYSTEM
FIXED_OBJ$                     SYSTEM
MIGRATE$                       SYSTEM
DEPENDENCY$                    SYSTEM
ACCESS$                        SYSTEM
VIEWCON$                       SYSTEM
DUAL                           SYSTEM
SYSAUTH$                       SYSTEM
OBJPRIV$                       SYSTEM
DEFROLE$                       SYSTEM
ECOL$                          SYSTEM
EV$                            SYSTEM
EVCOL$                         SYSTEM
DEFERRED_STG$                  SYSTEM
SQLERROR$                      SYSTEM
LINK$                          SYSTEM

TABLE_NAME                     TABLESPACE_NAME
------------------------------ ------------------------------
TRUSTED_LIST$                  SYSTEM
COM$                           SYSTEM
DUC$                           SYSTEM
RECYCLEBIN$                    SYSTEM
IND_ONLINE$                    SYSTEM
CONTEXT$                       SYSTEM
SQL_VERSION$                   SYSTEM
JIJOIN$                        SYSTEM
JIREFRESHSQL$                  SYSTEM
TRIGGER$                       SYSTEM
TRIGGERCOL$                    SYSTEM
TRIGGERJAVAF$                  SYSTEM
TRIGGERJAVAS$                  SYSTEM
TRIGGERJAVAC$                  SYSTEM
TRIGGERJAVAM$                  SYSTEM
TRIGGERDEP$                    SYSTEM
INDREBUILD$                    SYSTEM
COMPRESSION$                   SYSTEM
TRANSIENT_IOT$                 SYSTEM
SMB$CONFIG                     SYSAUX
SQL$                           SYSAUX
SQL$TEXT                       SYSAUX
SQLOBJ$AUXDATA                 SYSAUX
OBJECT_USAGE                   SYSTEM
PROCEDURE$                     SYSTEM
PROCEDUREINFO$                 SYSTEM
ARGUMENT$                      SYSTEM
SOURCE$                        SYSTEM
IDL_UB1$                       SYSTEM
IDL_CHAR$                      SYSTEM
IDL_UB2$                       SYSTEM
IDL_SB4$                       SYSTEM
ERROR$                         SYSTEM
SETTINGS$                      SYSTEM
NCOMP_DLL$                     SYSTEM
PROCEDUREJAVA$                 SYSTEM
PROCEDUREC$                    SYSTEM
PROCEDUREPLSQL$                SYSTEM
WARNING_SETTINGS$              SYSTEM
DIANA_VERSION$                 SYSTEM
PLSCOPE_IDENTIFIER$            SYSAUX
PLSCOPE_ACTION$                SYSAUX
PENDING_TRANS$                 SYSTEM
PENDING_SESSIONS$              SYSTEM
PENDING_SUB_SESSIONS$          SYSTEM
SMON_SCN_TIME                  SYSAUX
MAP_FILE$                      SYSTEM
MAP_FILE_EXTENT$               SYSTEM
MAP_SUBELEMENT$                SYSTEM
MAP_ELEMENT$                   SYSTEM
MAP_EXTELEMENT$                SYSTEM
MAP_COMPLIST$                  SYSTEM
PROFILE$                       SYSTEM
PROFNAME$                      SYSTEM
RESOURCE_COST$                 SYSTEM
JOB$                           SYSTEM
RESOURCE_MAP                   SYSTEM

TABLE_NAME                     TABLESPACE_NAME
------------------------------ ------------------------------
USER_ASTATUS_MAP               SYSTEM
RESOURCE_PLAN$                 SYSTEM
RESOURCE_CONSUMER_GROUP$       SYSTEM
RESOURCE_CATEGORY$             SYSTEM
RESOURCE_PLAN_DIRECTIVE$       SYSTEM
RESOURCE_GROUP_MAPPING$        SYSTEM
RESOURCE_MAPPING_PRIORITY$     SYSTEM
RESOURCE_STORAGE_POOL_MAPPING$ SYSTEM
RESOURCE_CAPABILITY$           SYSTEM
RESOURCE_INSTANCE_CAPABILITY$  SYSTEM
RESOURCE_IO_CALIBRATE$         SYSTEM
TSM_SRC$                       SYSAUX
TSM_DST$                       SYSAUX
SERVICE$                       SYSTEM
DIR$MIGRATE_OPERATIONS         SYSAUX
DIR$SERVICE_OPERATIONS         SYSAUX
DIR$ESCALATE_OPERATIONS        SYSAUX
DIR$QUIESCE_OPERATIONS         SYSAUX
DIR$INSTANCE_ACTIONS           SYSAUX
DIR$RESONATE_OPERATIONS        SYSAUX
DIR$ALERT_HISTORY              SYSAUX
DIR$REASON_STRINGS             SYSAUX
DIR$DATABASE_ATTRIBUTES        SYSAUX
DIR$VICTIM_POLICY              SYSAUX
DIR$NODE_ATTRIBUTES            SYSAUX
DIR$SERVICE_ATTRIBUTES         SYSAUX
_default_auditing_options_     SYSTEM
AUDIT$                         SYSTEM
SYSTEM_PRIVILEGE_MAP           SYSTEM
TABLE_PRIVILEGE_MAP            SYSTEM
STMT_AUDIT_OPTION_MAP          SYSTEM
USER_HISTORY$                  SYSTEM
RLS$                           SYSTEM
RLS_SC$                        SYSTEM
RLS_GRP$                       SYSTEM
RLS_CTX$                       SYSTEM
AUD$                           SYSTEM
FGA$                           SYSTEM
FGACOL$                        SYSTEM
FGA_LOG$                       SYSTEM
APPROLE$                       SYSTEM
ENC$                           SYSTEM
PROXY_INFO$                    SYSTEM
PROXY_ROLE_INFO$               SYSTEM
XS$VERIFIERS                   SYSTEM
XS$SESSIONS                    SYSAUX
XS$SESSION_ROLES               SYSAUX
XS$SESSION_APPNS               SYSAUX
XS$PARAMETERS                  SYSTEM
DEFAULT_PWD$                   SYSTEM
HISTGRM$                       SYSTEM
HIST_HEAD$                     SYSTEM
AUX_STATS$                     SYSTEM
TAB_STATS$                     SYSTEM
IND_STATS$                     SYSTEM
CACHE_STATS_1$                 SYSTEM
CACHE_STATS_0$                 SYSTEM

TABLE_NAME                     TABLESPACE_NAME
------------------------------ ------------------------------
ASSOCIATION$                   SYSTEM
USTATS$                        SYSTEM
STATS_TARGET$                  SYSAUX
COL_USAGE$                     SYSTEM
MON_MODS$                      SYSTEM
MON_MODS_ALL$                  SYSTEM
WRI$_OPTSTAT_TAB_HISTORY       SYSAUX
WRI$_OPTSTAT_IND_HISTORY       SYSAUX
WRI$_OPTSTAT_HISTHEAD_HISTORY  SYSAUX
WRI$_OPTSTAT_HISTGRM_HISTORY   SYSAUX
WRI$_OPTSTAT_AUX_HISTORY       SYSAUX
WRI$_OPTSTAT_OPR               SYSAUX
OPTSTAT_HIST_CONTROL$          SYSTEM
OPTSTAT_USER_PREFS$            SYSTEM
DIR$                           SYSTEM
ID_GENS$                       SYSTEM
OID$                           SYSTEM
TYPE$                          SYSTEM
COLLECTION$                    SYSTEM
ATTRIBUTE$                     SYSTEM
METHOD$                        SYSTEM
PARAMETER$                     SYSTEM
RESULT$                        SYSTEM
TYPEHIERARCHY$                 SYSTEM
KOPM$                          SYSTEM
VTABLE$                        SYSTEM
OPBINDING$                     SYSTEM
OPANCILLARY$                   SYSTEM
OPARG$                         SYSTEM
OPERATOR$                      SYSTEM
INDTYPES$                      SYSTEM
INDOP$                         SYSTEM
INDARRAYTYPE$                  SYSTEM
SECOBJ$                        SYSTEM
JAVAOBJ$                       SYSTEM
JAVASNM$                       SYSTEM
PARTOBJ$                       SYSTEM
PARTCOL$                       SYSTEM
TABPART$                       SYSTEM
INDPART$                       SYSTEM
SUBPARTCOL$                    SYSTEM
TABSUBPART$                    SYSTEM
INDSUBPART$                    SYSTEM
TABCOMPART$                    SYSTEM
INDCOMPART$                    SYSTEM
PARTLOB$                       SYSTEM
LOBFRAG$                       SYSTEM
LOBCOMPPART$                   SYSTEM
DEFSUBPART$                    SYSTEM
DEFSUBPARTLOB$                 SYSTEM
INDPART_PARAM$                 SYSTEM
INSERT_TSN_LIST$               SYSTEM
SUMPARTLOG$                    SYSTEM
SUMDELTA$                      SYSTEM
SNAP_LOGDEP$                   SYSTEM
SNAP_LOADERTIME$               SYSTEM
MLOG$                          SYSTEM

TABLE_NAME                     TABLESPACE_NAME
------------------------------ ------------------------------
SLOG$                          SYSTEM
SNAP_XCMT$                     SYSTEM
SNAP$                          SYSTEM
SNAP_REFTIME$                  SYSTEM
MLOG_REFCOL$                   SYSTEM
SNAP_REFOP$                    SYSTEM
SNAP_COLMAP$                   SYSTEM
SNAP_OBJCOL$                   SYSTEM
REG_SNAP$                      SYSTEM
SNAP_SITE$                     SYSTEM
RGROUP$                        SYSTEM
RGCHILD$                       SYSTEM
CDC_SYSTEM$                    SYSTEM
CDC_CHANGE_SOURCES$            SYSTEM
CDC_CHANGE_SETS$               SYSTEM
CDC_CHANGE_TABLES$             SYSTEM
CDC_SUBSCRIBERS$               SYSTEM
CDC_SUBSCRIBED_TABLES$         SYSTEM
CDC_SUBSCRIBED_COLUMNS$        SYSTEM
CDC_CHANGE_COLUMNS$            SYSTEM
CDC_PROPAGATIONS$              SYSTEM
CDC_PROPAGATED_SETS$           SYSTEM
STREAMS$_SPLIT_MERGE           SYSTEM
STREAMS$_CAPTURE_SERVER        SYSTEM
STREAMS$_CAPTURE_PROCESS       SYSTEM
STREAMS$_APPLY_PROCESS         SYSTEM
STREAMS$_PROPAGATION_PROCESS   SYSTEM
STREAMS$_PROCESS_PARAMS        SYSTEM
STREAMS$_EXTRA_ATTRS           SYSTEM
STREAMS$_PREPARE_OBJECT        SYSTEM
STREAMS$_PREPARE_DDL           SYSTEM
STREAMS$_APPLY_MILESTONE       SYSTEM
STREAMS$_APPLY_PROGRESS        SYSAUX
STREAMS$_KEY_COLUMNS           SYSTEM
STREAMS$_DEF_PROC              SYSTEM
STREAMS$_RULES                 SYSTEM
APPLY$_SOURCE_OBJ              SYSTEM
APPLY$_SOURCE_SCHEMA           SYSTEM
APPLY$_VIRTUAL_OBJ_CONS        SYSTEM
APPLY$_CONSTRAINT_COLUMNS      SYSTEM
APPLY$_DEST_OBJ                SYSTEM
APPLY$_DEST_OBJ_CMAP           SYSTEM
APPLY$_DEST_OBJ_OPS            SYSTEM
STREAMS$_STMT_HANDLERS         SYSTEM
STREAMS$_STMT_HANDLER_STMTS    SYSTEM
APPLY$_CHANGE_HANDLERS         SYSTEM
APPLY$_ERROR                   SYSAUX
APPLY$_ERROR_TXN               SYSTEM
APPLY$_ERROR_HANDLER           SYSTEM
APPLY$_CONF_HDLR_COLUMNS       SYSTEM
STREAMS$_DEST_OBJS             SYSTEM
STREAMS$_DEST_OBJ_COLS         SYSTEM
STREAMS$_PRIVILEGED_USER       SYSTEM
STREAMS$_MESSAGE_RULES         SYSTEM
STREAMS$_MESSAGE_CONSUMERS     SYSTEM
STREAMS$_APPLY_SPILL_TXN       SYSAUX
STREAMS$_APPLY_SPILL_TXN_LIST  SYSAUX

TABLE_NAME                     TABLESPACE_NAME
------------------------------ ------------------------------
FGR$_FILE_GROUPS               SYSTEM
FGR$_FILE_GROUP_VERSIONS       SYSTEM
FGR$_FILE_GROUP_EXPORT_INFO    SYSTEM
FGR$_FILE_GROUP_FILES          SYSTEM
FGR$_TABLESPACE_INFO           SYSTEM
FGR$_TABLE_INFO                SYSTEM
REDEF$                         SYSTEM
REDEF_OBJECT$                  SYSTEM
REDEF_DEP_ERROR$               SYSTEM
RULESET$                       SYSTEM
LOG$                           SYSTEM
RECO_SCRIPT$                   SYSAUX
RECO_SCRIPT_PARAMS$            SYSAUX
RECO_SCRIPT_BLOCK$             SYSAUX
RECO_SCRIPT_ERROR$             SYSAUX
COMPARISON$                    SYSAUX
COMPARISON_COL$                SYSAUX
COMPARISON_SCAN$               SYSAUX
COMPARISON_SCAN_VAL$           SYSAUX
COMPARISON_ROW_DIF$            SYSAUX
STREAMS$_COMPONENT             SYSAUX
STREAMS$_COMPONENT_LINK        SYSAUX
STREAMS$_COMPONENT_PROP        SYSAUX
STREAMS$_DATABASE              SYSAUX
XSTREAM$_SERVER                SYSTEM
XSTREAM$_SUBSET_RULES          SYSTEM
XSTREAM$_SYSGEN_OBJS           SYSTEM
XSTREAM$_PARAMETERS            SYSTEM
XSTREAM$_DML_CONFLICT_HANDLER  SYSTEM
XSTREAM$_SERVER_CONNECTION     SYSTEM
XSTREAM$_DDL_CONFLICT_HANDLER  SYSTEM
XSTREAM$_MAP                   SYSTEM
GOLDENGATE$_PRIVILEGES         SYSTEM
AW$                            SYSAUX
PS$                            SYSAUX
AW_OBJ$                        SYSAUX
AW_PROP$                       SYSAUX
AW_TRACK$                      SYSAUX
AW_PRG$                        SYSAUX
OLAP_MAPPINGS$                 SYSTEM
OLAP_MODELS$                   SYSTEM
OLAP_MODEL_PARENTS$            SYSTEM
OLAP_MODEL_ASSIGNMENTS$        SYSTEM
OLAP_CALCULATED_MEMBERS$       SYSTEM
OLAP_SYNTAX$                   SYSTEM
OLAP_DESCRIPTIONS$             SYSTEM
OLAP_CUBE_BUILD_PROCESSES$     SYSTEM
OLAP_AW_VIEWS$                 SYSTEM
OLAP_AW_VIEW_COLUMNS$          SYSTEM
OLAP_MEASURE_FOLDERS$          SYSTEM
OLAP_MEAS_FOLDER_CONTENTS$     SYSTEM
OLAP_AW_DEPLOYMENT_CONTROLS$   SYSTEM
OLAP_IMPL_OPTIONS$             SYSTEM
OLAP_MULTI_OPTIONS$            SYSTEM
OLAP_CUBE_DIMENSIONS$          SYSTEM
OLAP_DIM_LEVELS$               SYSTEM
OLAP_ATTRIBUTES$               SYSTEM

TABLE_NAME                     TABLESPACE_NAME
------------------------------ ------------------------------
OLAP_ATTRIBUTE_VISIBILITY$     SYSTEM
OLAP_HIERARCHIES$              SYSTEM
OLAP_HIER_LEVELS$              SYSTEM
OLAP_CUBES$                    SYSTEM
OLAP_MEASURES$                 SYSTEM
OLAP_DIMENSIONALITY$           SYSTEM
OLAP_TAB$                      SYSTEM
OLAP_TAB_COL$                  SYSTEM
OLAP_TAB_HIER$                 SYSTEM
SUM$                           SYSTEM
SUMDETAIL$                     SYSTEM
SUMINLINE$                     SYSTEM
SUMKEY$                        SYSTEM
SUMAGG$                        SYSTEM
SUMJOIN$                       SYSTEM
SUMDEP$                        SYSTEM
SUMPRED$                       SYSTEM
SUMQB$                         SYSTEM
HIER$                          SYSTEM
HIERLEVEL$                     SYSTEM
DIM$                           SYSTEM
DIMLEVEL$                      SYSTEM
DIMLEVELKEY$                   SYSTEM
DIMJOINKEY$                    SYSTEM
DIMATTR$                       SYSTEM
INCEXP                         SYSTEM
INCVID                         SYSTEM
INCFIL                         SYSTEM
EXPACT$                        SYSTEM
NOEXP$                         SYSTEM
EXPPKGOBJ$                     SYSTEM
EXPPKGACT$                     SYSTEM
EXPDEPOBJ$                     SYSTEM
EXPDEPACT$                     SYSTEM
EXPIMP_TTS_CT$                 SYSTEM
METAVIEW$                      SYSTEM
METAFILTER$                    SYSTEM
METAXSL$                       SYSTEM
METAXSLPARAM$                  SYSTEM
METASTYLESHEET                 SYSTEM
METASCRIPT$                    SYSTEM
METASCRIPTFILTER$              SYSTEM
METANAMETRANS$                 SYSTEM
METAPATHMAP$                   SYSTEM
EXTERNAL_TAB$                  SYSTEM
EXTERNAL_LOCATION$             SYSTEM
MODEL$                         SYSAUX
MODELTAB$                      SYSAUX
MODELATT$                      SYSAUX
MODELSET$                      SYSAUX
LOGMNR_BUILDLOG                SYSTEM
LOGMNRG_SEED$                  SYSTEM
LOGMNRG_DICTIONARY$            SYSTEM
LOGMNRG_OBJ$                   SYSTEM
LOGMNRG_TAB$                   SYSTEM
LOGMNRG_COL$                   SYSTEM
LOGMNRG_ATTRCOL$               SYSTEM

TABLE_NAME                     TABLESPACE_NAME
------------------------------ ------------------------------
LOGMNRG_TS$                    SYSTEM
LOGMNRG_IND$                   SYSTEM
LOGMNRG_USER$                  SYSTEM
LOGMNRG_TABPART$               SYSTEM
LOGMNRG_TABSUBPART$            SYSTEM
LOGMNRG_TABCOMPART$            SYSTEM
LOGMNRG_TYPE$                  SYSTEM
LOGMNRG_COLTYPE$               SYSTEM
LOGMNRG_ATTRIBUTE$             SYSTEM
LOGMNRG_LOB$                   SYSTEM
LOGMNRG_CDEF$                  SYSTEM
LOGMNRG_CCOL$                  SYSTEM
LOGMNRG_ICOL$                  SYSTEM
LOGMNRG_LOBFRAG$               SYSTEM
LOGMNRG_INDPART$               SYSTEM
LOGMNRG_INDSUBPART$            SYSTEM
LOGMNRG_INDCOMPART$            SYSTEM
LOGMNRG_LOGMNR_BUILDLOG        SYSTEM
LOGMNRG_NTAB$                  SYSTEM
LOGMNRG_OPQTYPE$               SYSTEM
LOGMNRG_SUBCOLTYPE$            SYSTEM
LOGMNRG_KOPM$                  SYSTEM
LOGMNRG_PROPS$                 SYSTEM
LOGMNRG_ENC$                   SYSTEM
LOGMNRG_REFCON$                SYSTEM
LOGMNRG_PARTOBJ$               SYSTEM
DST$AFFECTED_TABLES            SYSTEM
DST$ERROR_TABLE                SYSTEM
DST$TRIGGER_TABLE              SYSTEM
SYS_FBA_FA                     SYSTEM
SYS_FBA_TSFA                   SYSTEM
SYS_FBA_BARRIERSCN             SYSTEM
SYS_FBA_TRACKEDTABLES          SYSTEM
SYS_FBA_PARTITIONS             SYSTEM
SYS_FBA_USERS                  SYSTEM
SYS_FBA_DL                     SYSTEM
REGISTRY$                      SYSTEM
REGISTRY$SCHEMAS               SYSTEM
REGISTRY$LOG                   SYSTEM
REGISTRY$ERROR                 SYSTEM
REGISTRY$HISTORY               SYSTEM
REGISTRY$PROGRESS              SYSTEM
REGISTRY$DEPENDENCIES          SYSTEM
REGISTRY$DATABASE              SYSTEM
AUDIT_ACTIONS                  SYSTEM
WRI$_SEGADV_OBJLIST            SYSAUX
WRI$_SEGADV_CNTRLTAB           SYSAUX
WRI$_REPT_COMPONENTS           SYSAUX
WRI$_REPT_REPORTS              SYSAUX
WRI$_REPT_FILES                SYSAUX
WRI$_REPT_FORMATS              SYSAUX
TRANSACTION_BACKOUT_STATE$     SYSTEM
TRANSACTION_BACKOUT_REPORT$    SYSAUX
UTL_RECOMP_ERRORS              SYSTEM
TRANSFORMATIONS$               SYSTEM
ATTRIBUTE_TRANSFORMATIONS$     SYSTEM
RULE_SET_IEUAC$                SYSTEM

TABLE_NAME                     TABLESPACE_NAME
------------------------------ ------------------------------
RULE_SET$                      SYSTEM
RULE$                          SYSTEM
RULE_MAP$                      SYSTEM
RULE_EC$                       SYSTEM
REC_TAB$                       SYSTEM
REC_VAR$                       SYSTEM
RULE_SET_EE$                   SYSTEM
RULE_SET_TE$                   SYSTEM
RULE_SET_VE$                   SYSTEM
RULE_SET_RE$                   SYSTEM
RULE_SET_ROR$                  SYSTEM
RULE_SET_FOB$                  SYSTEM
RULE_SET_NL$                   SYSTEM
SYS_IOT_OVER_5229              SYSAUX
RULE_SET_RDEP$                 SYSTEM
SYS_IOT_OVER_5235              SYSAUX
SYS_IOT_OVER_5239              SYSAUX
DAM_PARAM_TAB$                 SYSTEM
DAM_CONFIG_PARAM$              SYSTEM
DAM_LAST_ARCH_TS$              SYSTEM
DAM_CLEANUP_JOBS$              SYSTEM
DAM_CLEANUP_EVENTS$            SYSTEM
INVALIDATION_REGISTRY$         SYSTEM
SYS_IOT_OVER_5476              SYSAUX
CHNF$_CLAUSE_DEPENDENTS        SYSTEM
CHNF$_QUERY_OBJECT             SYSTEM
CHNF$_REG_QUERIES              SYSTEM
CHNF$_QUERIES                  SYSTEM
CHNF$_QUERY_BINDS              SYSTEM
SYS_IOT_OVER_5511              SYSAUX
CHNF$_QUERY_DEPENDENCIES       SYSTEM
CHNFDIRECTLOAD$                SYSTEM
CPOOL$                         SYSTEM
SSCR_CAP$                      SYSAUX
SSCR_RES$                      SYSAUX
REG$                           SYSTEM
LOC$                           SYSTEM
AQ$_REPLAY_INFO                SYSTEM
AQ$_QUEUE_TABLE_AFFINITIES     SYSTEM
AQ$_SUBSCRIBER_TABLE           SYSTEM
AQ$_SCHEDULES                  SYSTEM
AQ$_MESSAGE_TYPES              SYSTEM
AQ$_PROPAGATION_STATUS         SYSTEM
AQ$_PENDING_MESSAGES           SYSTEM
AQ$_QUEUE_STATISTICS           SYSTEM
AQ$_PUBLISHER                  SYSTEM
SYS_IOT_OVER_5779              SYSAUX
WRI$_ADV_DEFINITIONS           SYSAUX
WRI$_ADV_DEF_PARAMETERS        SYSAUX
WRI$_ADV_DEF_EXEC_TYPES        SYSAUX
WRI$_ADV_TASKS                 SYSAUX
WRI$_ADV_PARAMETERS            SYSAUX
WRI$_ADV_EXECUTIONS            SYSAUX
WRI$_ADV_EXEC_PARAMETERS       SYSAUX
WRI$_ADV_OBJECTS               SYSAUX
WRI$_ADV_FINDINGS              SYSAUX
WRI$_ADV_INST_FDG              SYSAUX

TABLE_NAME                     TABLESPACE_NAME
------------------------------ ------------------------------
WRI$_ADV_RECOMMENDATIONS       SYSAUX
WRI$_ADV_ACTIONS               SYSAUX
WRI$_ADV_RATIONALE             SYSAUX
WRI$_ADV_REC_ACTIONS           SYSAUX
WRI$_ADV_DIRECTIVE_DEFS        SYSAUX
WRI$_ADV_DIRECTIVE_META        SYSAUX
WRI$_ADV_DIRECTIVE_INSTANCES   SYSAUX
WRI$_ADV_JOURNAL               SYSAUX
WRI$_ADV_MESSAGE_GROUPS        SYSAUX
WRI$_ADV_SQLT_PLAN_HASH        SYSAUX
WRI$_ADV_SQLT_PLAN_STATS       SYSAUX
WRI$_ADV_SQLT_PLANS            SYSAUX
WRI$_ADV_USAGE                 SYSAUX
WRI$_ADV_ADDM_TASKS            SYSAUX
WRI$_ADV_ADDM_INST             SYSAUX
WRI$_ADV_ADDM_FDG              SYSAUX
SCHEDULER$_PROGRAM             SYSTEM
SCHEDULER$_CLASS               SYSTEM
SCHEDULER$_JOB                 SYSTEM
SCHEDULER$_SAVED_OIDS          SYSTEM
SCHEDULER$_LWJOB_OBJ           SYSTEM
SCHEDULER$_LIGHTWEIGHT_JOB     SYSTEM
SCHEDULER$_JOB_ARGUMENT        SYSTEM
SCHEDULER$_WINDOW              SYSTEM
SCHEDULER$_PROGRAM_ARGUMENT    SYSTEM
SCHEDULER$_SRCQ_INFO           SYSTEM
SCHEDULER$_SRCQ_MAP            SYSTEM
SCHEDULER$_EVTQ_SUB            SYSTEM
SCHEDULER$_EVENT_LOG           SYSAUX
SCHEDULER$_JOB_RUN_DETAILS     SYSAUX
SCHEDULER$_WINDOW_DETAILS      SYSAUX
SCHEDULER$_WINDOW_GROUP        SYSTEM
SCHEDULER$_WINGRP_MEMBER       SYSTEM
SCHEDULER$_SCHEDULE            SYSTEM
SCHEDULER$_CHAIN               SYSTEM
SCHEDULER$_STEP                SYSTEM
SCHEDULER$_STEP_STATE          SYSAUX
SCHEDULER$_GLOBAL_ATTRIBUTE    SYSTEM
SCHEDULER$_CREDENTIAL          SYSTEM
SCHEDULER$_RJOB_SRC_DB_INFO    SYSTEM
SCHEDULER$_REMOTE_DBS          SYSTEM
SCHEDULER$_REMOTE_JOB_STATE    SYSTEM
SCHEDULER$_FILE_WATCHER        SYSTEM
SCHEDULER$_FILEWATCHER_HISTORY SYSTEM
SCHEDULER$_FILEWATCHER_RESEND  SYSTEM
SCHEDULER$_NOTIFICATION        SYSTEM
SCHEDULER$_DESTINATIONS        SYSTEM
SCHEDULER$_JOB_DESTINATIONS    SYSTEM
KU_NOEXP_TAB                   SYSTEM
KU_UTLUSE                      SYSTEM
CRC$_RESULT_CACHE_STATS        SYSAUX
WRI$_DBU_FEATURE_USAGE         SYSAUX
WRI$_DBU_FEATURE_METADATA      SYSAUX
WRI$_DBU_HIGH_WATER_MARK       SYSAUX
WRI$_DBU_HWM_METADATA          SYSAUX
WRI$_DBU_USAGE_SAMPLE          SYSAUX
WRI$_DBU_CPU_USAGE             SYSAUX

TABLE_NAME                     TABLESPACE_NAME
------------------------------ ------------------------------
WRI$_DBU_CPU_USAGE_SAMPLE      SYSAUX
WRI$_ALERT_OUTSTANDING         SYSAUX
WRI$_ALERT_HISTORY             SYSAUX
WRI$_ALERT_THRESHOLD           SYSAUX
WRI$_ALERT_THRESHOLD_LOG       SYSTEM
KET$_AUTOTASK_STATUS           SYSAUX
KET$_CLIENT_CONFIG             SYSAUX
KET$_CLIENT_TASKS              SYSAUX
WRI$_TRACING_ENABLED           SYSAUX
WRI$_AGGREGATION_ENABLED       SYSAUX
WRI$_ADV_SQLT_BINDS            SYSAUX
WRI$_ADV_SQLT_STATISTICS       SYSAUX
WRI$_ADV_SQLT_RTN_PLAN         SYSAUX
WRI$_SQLSET_DEFINITIONS        SYSAUX
WRI$_SQLSET_REFERENCES         SYSAUX
WRI$_SQLSET_STATEMENTS         SYSAUX
WRI$_SQLSET_PLANS              SYSAUX
WRI$_SQLSET_STATISTICS         SYSAUX
WRI$_SQLSET_MASK               SYSAUX
WRI$_SQLSET_PLAN_LINES         SYSAUX
WRI$_SQLSET_BINDS              SYSAUX
WRI$_SQLSET_WORKSPACE          SYSTEM
WRI$_SQLSET_WORKSPACE_PLANS    SYSAUX
WRI$_SQLMON_USAGE              SYSTEM
WRH$_FILESTATXS_BL             SYSAUX
WRH$_TEMPSTATXS                SYSAUX
WRH$_DATAFILE                  SYSAUX
WRH$_TEMPFILE                  SYSAUX
WRH$_COMP_IOSTAT               SYSAUX
WRH$_IOSTAT_FUNCTION           SYSAUX
WRH$_IOSTAT_FUNCTION_NAME      SYSAUX
WRH$_IOSTAT_FILETYPE           SYSAUX
WRH$_IOSTAT_FILETYPE_NAME      SYSAUX
WRH$_IOSTAT_DETAIL             SYSAUX
WRH$_SQLSTAT_BL                SYSAUX
WRH$_SQLTEXT                   SYSAUX
WRI$_SQLTEXT_REFCOUNT          SYSAUX
WRH$_SQL_SUMMARY               SYSAUX
WRH$_SQL_PLAN                  SYSAUX
WRH$_SQL_BIND_METADATA         SYSAUX
WRH$_OPTIMIZER_ENV             SYSAUX
WRH$_SYSTEM_EVENT_BL           SYSAUX
WRH$_EVENT_NAME                SYSAUX
WRH$_LATCH_NAME                SYSAUX
WRH$_BG_EVENT_SUMMARY          SYSAUX
WRH$_WAITSTAT_BL               SYSAUX
WRH$_ENQUEUE_STAT              SYSAUX
WRH$_LATCH_BL                  SYSAUX
WRH$_LATCH_CHILDREN_BL         SYSAUX
WRH$_LATCH_PARENT_BL           SYSAUX
WRH$_LATCH_MISSES_SUMMARY_BL   SYSAUX
WRH$_EVENT_HISTOGRAM_BL        SYSAUX
WRH$_MUTEX_SLEEP               SYSAUX
WRH$_LIBRARYCACHE              SYSAUX
WRH$_DB_CACHE_ADVICE_BL        SYSAUX
WRH$_BUFFER_POOL_STATISTICS    SYSAUX
WRH$_ROWCACHE_SUMMARY_BL       SYSAUX

TABLE_NAME                     TABLESPACE_NAME
------------------------------ ------------------------------
WRH$_SGA                       SYSAUX
WRH$_SGASTAT_BL                SYSAUX
WRH$_PGASTAT                   SYSAUX
WRH$_PROCESS_MEMORY_SUMMARY    SYSAUX
WRH$_RESOURCE_LIMIT            SYSAUX
WRH$_SHARED_POOL_ADVICE        SYSAUX
WRH$_STREAMS_POOL_ADVICE       SYSAUX
WRH$_SQL_WORKAREA_HISTOGRAM    SYSAUX
WRH$_PGA_TARGET_ADVICE         SYSAUX
WRH$_SGA_TARGET_ADVICE         SYSAUX
WRH$_MEMORY_TARGET_ADVICE      SYSAUX
WRH$_MEMORY_RESIZE_OPS         SYSAUX
WRH$_INSTANCE_RECOVERY         SYSAUX
WRH$_JAVA_POOL_ADVICE          SYSAUX
WRH$_THREAD                    SYSAUX
WRH$_SYSSTAT_BL                SYSAUX
WRH$_SYS_TIME_MODEL_BL         SYSAUX
WRH$_OSSTAT_BL                 SYSAUX
WRH$_PARAMETER_BL              SYSAUX
WRH$_MVPARAMETER_BL            SYSAUX
WRH$_STAT_NAME                 SYSAUX
WRH$_OSSTAT_NAME               SYSAUX
WRH$_PARAMETER_NAME            SYSAUX
WRH$_PLAN_OPERATION_NAME       SYSAUX
WRH$_PLAN_OPTION_NAME          SYSAUX
WRH$_SQLCOMMAND_NAME           SYSAUX
WRH$_TOPLEVELCALL_NAME         SYSAUX
WRH$_UNDOSTAT                  SYSAUX
WRH$_SEG_STAT_BL               SYSAUX
WRH$_SEG_STAT_OBJ              SYSAUX
WRH$_METRIC_NAME               SYSAUX
WRH$_SYSMETRIC_HISTORY         SYSAUX
WRH$_SYSMETRIC_SUMMARY         SYSAUX
WRH$_SESSMETRIC_HISTORY        SYSAUX
WRH$_FILEMETRIC_HISTORY        SYSAUX
WRH$_WAITCLASSMETRIC_HISTORY   SYSAUX
WRH$_DLM_MISC_BL               SYSAUX
WRH$_CR_BLOCK_SERVER           SYSAUX
WRH$_CURRENT_BLOCK_SERVER      SYSAUX
WRH$_INST_CACHE_TRANSFER_BL    SYSAUX
WRH$_ACTIVE_SESSION_HISTORY_BL SYSAUX
WRH$_TABLESPACE_STAT_BL        SYSAUX
WRH$_LOG                       SYSAUX
WRH$_MTTR_TARGET_ADVICE        SYSAUX
WRH$_TABLESPACE                SYSAUX
WRH$_TABLESPACE_SPACE_USAGE    SYSAUX
WRH$_SERVICE_NAME              SYSAUX
WRH$_SERVICE_STAT_BL           SYSAUX
WRH$_SERVICE_WAIT_CLASS_BL     SYSAUX
WRH$_SESS_TIME_STATS           SYSAUX
WRH$_STREAMS_CAPTURE           SYSAUX
WRH$_STREAMS_APPLY_SUM         SYSAUX
WRH$_BUFFERED_QUEUES           SYSAUX
WRH$_BUFFERED_SUBSCRIBERS      SYSAUX
WRH$_PERSISTENT_QUEUES         SYSAUX
WRH$_PERSISTENT_SUBSCRIBERS    SYSAUX
WRH$_RULE_SET                  SYSAUX

TABLE_NAME                     TABLESPACE_NAME
------------------------------ ------------------------------
WRI$_SCH_CONTROL               SYSAUX
WRI$_SCH_VOTES                 SYSAUX
WRH$_RSRC_CONSUMER_GROUP       SYSAUX
WRH$_RSRC_PLAN                 SYSAUX
WRH$_CLUSTER_INTERCON          SYSAUX
WRH$_IC_DEVICE_STATS           SYSAUX
WRH$_IC_CLIENT_STATS           SYSAUX
WRH$_MEM_DYNAMIC_COMP          SYSAUX
WRH$_INTERCONNECT_PINGS_BL     SYSAUX
WRH$_DISPATCHER                SYSAUX
WRH$_SHARED_SERVER_SUMMARY     SYSAUX
WRH$_DYN_REMASTER_STATS        SYSAUX
WRH$_PERSISTENT_QMN_CACHE      SYSAUX
WRM$_WR_USAGE                  SYSAUX
WRM$_DATABASE_INSTANCE         SYSAUX
WRM$_SNAPSHOT                  SYSAUX
WRM$_SNAPSHOT_DETAILS          SYSAUX
WRM$_SNAP_ERROR                SYSAUX
WRM$_BASELINE                  SYSAUX
WRM$_COLORED_SQL               SYSAUX
WRM$_BASELINE_DETAILS          SYSAUX
WRM$_BASELINE_TEMPLATE         SYSAUX
WRM$_WR_CONTROL                SYSAUX
WRR$_FILTERS                   SYSAUX
WRR$_CAPTURES                  SYSTEM
WRR$_CAPTURE_STATS             SYSAUX
WRR$_CAPTURE_UC_GRAPH          SYSAUX
WRR$_REPLAYS                   SYSTEM
WRR$_REPLAY_STATS              SYSAUX
WRR$_REPLAY_DIVERGENCE         SYSAUX
WRR$_REPLAY_UC_GRAPH           SYSAUX
WRR$_CONNECTION_MAP            SYSAUX
WRR$_REPLAY_SQL_TEXT           SYSAUX
WRR$_REPLAY_SQL_BINDS          SYSAUX
WRR$_SEQUENCE_EXCEPTIONS       SYSAUX
WRR$_REPLAY_CALL_FILTER        SYSAUX
WRR$_REPLAY_FILTER_SET         SYSAUX
WRR$_REPLAY_DEP_GRAPH          SYSAUX
WRR$_REPLAY_COMMITS            SYSAUX
WRR$_REPLAY_REFERENCES         SYSAUX
WRI$_ADV_SQLW_SUM              SYSAUX
WRI$_ADV_SQLW_STMTS            SYSAUX
WRI$_ADV_SQLW_TABLES           SYSAUX
WRI$_ADV_SQLW_TABVOL           SYSAUX
WRI$_ADV_SQLW_COLVOL           SYSAUX
WRI$_ADV_SQLA_MAP              SYSAUX
WRI$_ADV_SQLA_SUM              SYSAUX
WRI$_ADV_SQLA_STMTS            SYSAUX
WRI$_ADV_SQLA_TABLES           SYSAUX
WRI$_ADV_SQLA_TABVOL           SYSAUX
WRI$_ADV_SQLA_COLVOL           SYSAUX
WRI$_ADV_SQLA_TMP              SYSAUX
WRI$_ADV_SQLA_FAKE_REG         SYSAUX
DBMS_PARALLEL_EXECUTE_TASK$    SYSTEM
DBMS_PARALLEL_EXECUTE_CHUNKS$  SYSTEM
DBFS$_STORES                   SYSTEM
DBFS$_MOUNTS                   SYSTEM

TABLE_NAME                     TABLESPACE_NAME
------------------------------ ------------------------------
DBFS$_STATS                    SYSAUX
DBFS_SFS$_TAB                  SYSTEM
DBFS_SFS$_VOL                  SYSTEM
DBFS_SFS$_SNAP                 SYSTEM
DBFS_SFS$_FS                   SYSTEM
DBFS_SFS$_FST                  SYSTEM
DBFS_SFS$_FSTP                 SYSTEM
DBFS_SFS$_FSTO                 SYSTEM
DBFS_HS$_FS                    SYSAUX
DBFS_HS$_PROPERTY              SYSAUX
DBFS_HS$_SFLOCATORTABLE        SYSAUX
DBFS_HS$_BACKUPFILETABLE       SYSAUX
DBFS_HS$_CONTENTFNMAPTBL       SYSAUX
DBFS_HS$_STORECOMMANDS         SYSAUX
DBFS_HS$_STOREID2POLICYCTX     SYSAUX
DBFS_HS$_STOREPROPERTIES       SYSAUX
DBFS_HS$_STOREIDTABLE          SYSAUX
SQL_TK_COLL_CHK$               SYSAUX
SQL_TK_ROW_CHK$                SYSAUX
SQL_TK_REF_CHK$                SYSAUX
SQL_TK_TAB_DESC$               SYSAUX
WRI$_OPTSTAT_SYNOPSIS_PARTGRP  SYSAUX
WRI$_OPTSTAT_SYNOPSIS_HEAD$    SYSAUX
STREAMS$_APPLY_SPILL_MESSAGES  SYSAUX
STREAMS$_INTERNAL_TRANSFORM    SYSTEM
DBMS_LOCK_ALLOCATED            SYSTEM
DBMS_ALERT_INFO                SYSTEM
SCHEDULER$_EVENT_QTAB          SYSTEM
AQ$_SCHEDULER$_EVENT_QTAB_S    SYSTEM
AQ$_SCHEDULER$_EVENT_QTAB_L    SYSTEM
SYS_IOT_OVER_12469             SYSTEM
SCHEDULER$_REMDB_JOBQTAB       SYSTEM
AQ$_SCHEDULER$_REMDB_JOBQTAB_S SYSTEM
AQ$_SCHEDULER$_REMDB_JOBQTAB_L SYSTEM
SYS_IOT_OVER_12504             SYSTEM
SCHEDULER_FILEWATCHER_QT       SYSTEM
AQ$_SCHEDULER_FILEWATCHER_QT_S SYSTEM
AQ$_SCHEDULER_FILEWATCHER_QT_L SYSTEM
SYS_IOT_OVER_12534             SYSTEM
ALERT_QT                       SYSAUX
AQ$_ALERT_QT_S                 SYSAUX
AQ$_ALERT_QT_L                 SYSAUX
SYS_IOT_OVER_12590             SYSAUX
HS$_FDS_CLASS                  SYSTEM
HS$_FDS_INST                   SYSTEM
HS$_BASE_CAPS                  SYSTEM
HS$_CLASS_CAPS                 SYSTEM
HS$_INST_CAPS                  SYSTEM
HS$_BASE_DD                    SYSTEM
HS$_CLASS_DD                   SYSTEM
HS$_INST_DD                    SYSTEM
HS$_CLASS_INIT                 SYSTEM
HS$_INST_INIT                  SYSTEM
HS$_FDS_CLASS_DATE             SYSTEM
HS_BULKLOAD_VIEW_OBJ           SYSTEM
HS$_PARALLEL_METADATA          SYSTEM
HS_PARTITION_COL_NAME          SYSTEM

TABLE_NAME                     TABLESPACE_NAME
------------------------------ ------------------------------
HS_PARTITION_COL_TYPE          SYSTEM
HS$_PARALLEL_PARTITION_DATA    SYSTEM
HS$_PARALLEL_HISTOGRAM_DATA    SYSTEM
HS$_PARALLEL_SAMPLE_DATA       SYSTEM
AQ$_MEM_MC                     SYSTEM
AQ$_AQ$_MEM_MC_S               SYSTEM
AQ$_AQ$_MEM_MC_L               SYSTEM
SYS_IOT_OVER_12764             SYSTEM
AQ_EVENT_TABLE                 SYSTEM
AQ_PROP_TABLE                  SYSTEM
AQ$_AQ_PROP_TABLE_S            SYSTEM
AQ$_AQ_PROP_TABLE_L            SYSTEM
SYS_IOT_OVER_12800             SYSTEM
KUPC$DATAPUMP_QUETAB           SYSTEM
AQ$_KUPC$DATAPUMP_QUETAB_S     SYSTEM
AQ$_KUPC$DATAPUMP_QUETAB_L     SYSTEM
SYS_IOT_OVER_12979             SYSTEM
SYS$SERVICE_METRICS_TAB        SYSAUX
AQ$_SYS$SERVICE_METRICS_TAB_S  SYSAUX
AQ$_SYS$SERVICE_METRICS_TAB_L  SYSAUX
SYS_IOT_OVER_13103             SYSAUX
XDB_INSTALLATION_TAB           SYSTEM
EPG$_AUTH                      SYSTEM
NET$_ACL                       SYSTEM
WALLET$_ACL                    SYSTEM
EMP                            SYSTEM
DESIGNATION_MASTERS            SYSTEM
DEPARTMENT_MASTERS             SYSTEM
STUDENT_MASTERS                SYSTEM
STUDENT_MARKS                  SYSTEM
STAFF_MASTERS                  SYSTEM
BOOK_MASTERS                   SYSTEM
BOOK_TRANSACTIONS              SYSTEM
ATEMPTAB$
SQLLOG$
SQLOBJ$
SQLOBJ$DATA
MAP_OBJECT
CLUSTER_DATABASES
CLUSTER_NODES
CLUSTER_INSTANCES
COL_GROUP_USAGE$
FINALHIST$
PSTUBTBL
WRI$_ADV_ASA_RECO_DATA
PLAN_TABLE$
CHNF$_QUERY_DELTAS
KU$NOEXP_TAB
KU$_LIST_FILTER_TEMP
KU$_LIST_FILTER_TEMP_2
WRI$_SQLSET_PLANS_TOCAP
WRI$_SQLSET_STS_TOPACK
WRH$_FILESTATXS
WRH$_SQLSTAT
WRH$_SYSTEM_EVENT
WRH$_WAITSTAT
WRH$_LATCH

TABLE_NAME                     TABLESPACE_NAME
------------------------------ ------------------------------
WRH$_LATCH_CHILDREN
WRH$_LATCH_PARENT
WRH$_LATCH_MISSES_SUMMARY
WRH$_EVENT_HISTOGRAM
WRH$_DB_CACHE_ADVICE
WRH$_ROWCACHE_SUMMARY
WRH$_SGASTAT
WRH$_SYSSTAT
WRH$_SYS_TIME_MODEL
WRH$_OSSTAT
WRH$_PARAMETER
WRH$_MVPARAMETER
WRH$_SEG_STAT
WRH$_DLM_MISC
WRH$_INST_CACHE_TRANSFER
WRH$_ACTIVE_SESSION_HISTORY
WRH$_TABLESPACE_STAT
WRH$_SERVICE_STAT
WRH$_SERVICE_WAIT_CLASS
WRH$_INTERCONNECT_PINGS
WRR$_REPLAY_SCN_ORDER
WRR$_REPLAY_SEQ_DATA
WRR$_REPLAY_DATA
WRR$_WORKLOAD_ATTRIBUTES
ODCI_SECOBJ$
ODCI_WARNINGS$
ODCI_PMO_ROWIDS$
TTS_TBS$
TTS_USR$
TTS_ERROR$
WRI$_OPTSTAT_SYNOPSIS$
STREAMS$_APPLY_SPILL_MSGS_PART
STREAMS$_COMPONENT_IN
STREAMS$_COMPONENT_LINK_IN
STREAMS$_COMPONENT_PROP_IN
STREAMS$_COMPONENT_STAT_IN
STREAMS$_COMPONENT_EVENT_IN
STREAMS$_LOCAL_FINDINGS_IN
STREAMS$_LOCAL_RECS_IN
STREAMS$_LOCAL_ACTIONS_IN
STREAMS$_COMPONENT_STAT_OUT
STREAMS$_PATH_STAT_OUT
STREAMS$_PATH_BOTTLENECK_OUT
AQ$_SCHEDULER$_EVENT_QTAB_T
AQ$_SCHEDULER$_EVENT_QTAB_H
AQ$_SCHEDULER$_EVENT_QTAB_I
AQ$_SCHEDULER$_REMDB_JOBQTAB_T
AQ$_SCHEDULER$_REMDB_JOBQTAB_H
AQ$_SCHEDULER$_REMDB_JOBQTAB_I
AQ$_SCHEDULER_FILEWATCHER_QT_T
AQ$_SCHEDULER_FILEWATCHER_QT_H
AQ$_SCHEDULER_FILEWATCHER_QT_I
AQ$_ALERT_QT_T
AQ$_ALERT_QT_H
AQ$_ALERT_QT_I
AQ$_AQ$_MEM_MC_T
AQ$_AQ$_MEM_MC_H

TABLE_NAME                     TABLESPACE_NAME
------------------------------ ------------------------------
AQ$_AQ$_MEM_MC_I
AQ$_AQ_PROP_TABLE_T
AQ$_AQ_PROP_TABLE_H
AQ$_AQ_PROP_TABLE_I
IMPDP_STATS
KU$_DATAPUMP_MASTER_11_2
KU$_DATAPUMP_MASTER_11_1_0_7
KU$_DATAPUMP_MASTER_11_1
KU$_DATAPUMP_MASTER_10_1
AQ$_KUPC$DATAPUMP_QUETAB_T
AQ$_KUPC$DATAPUMP_QUETAB_H
AQ$_KUPC$DATAPUMP_QUETAB_I
AQ$_SYS$SERVICE_METRICS_TAB_T
AQ$_SYS$SERVICE_METRICS_TAB_H
AQ$_SYS$SERVICE_METRICS_TAB_I
COUNTRIES_EXT
AQ$_SYS$SERVICE_METRICS_TAB_G
AQ$_KUPC$DATAPUMP_QUETAB_G
AQ$_AQ_PROP_TABLE_G
AQ$_AQ$_MEM_MC_G
AQ$_ALERT_QT_G
AQ$_SCHEDULER_FILEWATCHER_QT_G
AQ$_SCHEDULER$_REMDB_JOBQTAB_G
AQ$_SCHEDULER$_EVENT_QTAB_G
RECENT_RESOURCE_INCARNATIONS$
CHNF$_GROUP_FILTER_IOT
CHNF$_CLAUSES
RULE_SET_ROP$
RULE_SET_IOT$
RULE_SET_PR$
UTL_RECOMP_COMPILED            SYSTEM
UTL_RECOMP_SORTED              SYSTEM

944 rows selected.

SQL> conn scott/tiger
Connected.
SQL> create table tablee (coll number);

Table created.

SQL> select table_name,tablespace_name from user_tables;

TABLE_NAME                     TABLESPACE_NAME
------------------------------ ------------------------------
EMP_BKP                        SYSTEM
DEPT_BKP                       SYSTEM
DEPT_NEW                       SYSTEM
STATE                          SYSTEM
EMP_NN                         SYSTEM
EMP_UNIQUE                     SYSTEM
EMP_PK                         SYSTEM
EMP_CHK                        SYSTEM
ABC                            SYSTEM
EMP_COMP                       SYSTEM
EMP_COMPP                      SYSTEM
DEPT_MASTER                    SYSTEM
EMP_DETAIL                     SYSTEM
DEPT_NEE                       SYSTEM
DEPT_COPY                      SYSTEM
RRRRRR                         SYSTEM
EMP_BK                         SYSTEM
CUSTOMERMASTER                 SYSTEM
EMPLOYEE_PROJECT               SYSTEM
TEMP_D                         SYSTEM
CHENNAI_DEPT                   SYSTEM
TEMP                           SYSTEM
EMP_SEQ                        SYSTEM
XYZ                            SYSTEM
EMP_READONLY                   SYSTEM
EMP_V                          SYSTEM
RAM                            SYSTEM
REGIONS                        SYSTEM
COUNTRIES                      SYSTEM
LOCATIONS                      SYSTEM
DEPARTMENTS                    SYSTEM
JOBS                           SYSTEM
EMPLOYEES                      SYSTEM
JOB_HISTORY                    SYSTEM
EMP_NEW                        SYSTEM
STAFF_ALLOWANCE                SYSTEM
DESIGNATION_MASTERS            SYSTEM
DEPARTMENT_MASTERS             SYSTEM
STUDENT_MASTERS                SYSTEM
STUDENT_MARKS                  SYSTEM
STAFF_MASTERS                  SYSTEM
BOOK_MASTERS                   SYSTEM
BOOK_TRANSACTIONS              SYSTEM
EMP_DUB                        SYSTEM
TAB_MODIFICATIONS              SYSTEM
CUSTOMER_MASTER                SYSTEM
BRANCH_MASTER                  SYSTEM
ACCOUNT_MASTER                 SYSTEM
TRANSACTION_DETAILS            SYSTEM
LOAN_DETAILS                   SYSTEM
EMP                            SYSTEM
DEPT                           SYSTEM
BONUS                          SYSTEM
SALGRADE                       SYSTEM
DUMMY                          SYSTEM
FACULTY                        SYSTEM
LOT                            SYSTEM

TABLE_NAME                     TABLESPACE_NAME
------------------------------ ------------------------------
COURSE                         SYSTEM
BATCH                          SYSTEM
EMPLOYEE                       SYSTEM
TEST                           SYSTEM
TEST_SCORES                    SYSTEM
TABLEE                         SYSTEM
CONTACTS                       SYSTEM
SAL_HISTORY                    SYSTEM
MGR_HISTORY                    SYSTEM
SPECIAL_SAL                    SYSTEM
SALES_WEEK_DATA                SYSTEM
T_TRACK                        SYSTEM
SUPPLIER                       SYSTEM
PRODUCTS                       SYSTEM
EMP_DUP_TAB                    SYSTEM
EMP12                          SYSTEM
TEMP_TABLE                     SYSTEM
EMP_TEMP_TAB                   SYSTEM
ERROR_MASTERS                  SYSTEM
STAFF_MASTER_BACK              SYSTEM
EMP_TEMP
EMP_IOT
T4                             SYSTEM
T3                             SYSTEM
T1                             SYSTEM
T2                             SYSTEM
CUST_TABLE                     SYSTEM
TEMP1                          SYSTEM

85 rows selected.

SQL> create user abc identified by abc default tablespace users
  2  ;
create user abc identified by abc default tablespace users
                              *
ERROR at line 1:
ORA-01031: insufficient privileges


SQL> conn sys/root as sysdba;
Connected.
SQL> create user abc identified by abc default tablespace users
  2  ;

User created.

SQL> conn abc/abc
ERROR:
ORA-01045: user ABC lacks CREATE SESSION privilege; logon denied


Warning: You are no longer connected to ORACLE.
SQL> grant connect,resourses,create any view to abc;
SP2-0640: Not connected
SQL> conn sys/root as sysdba;
Connected.
SQL> grant connect,resourses,create any view to abc;
grant connect,resourses,create any view to abc
              *
ERROR at line 1:
ORA-01919: role 'RESOURSES' does not exist


SQL> grant connect,create any view to abc;

Grant succeeded.

SQL> grant connect,resources,create any view to abc;
grant connect,resources,create any view to abc
              *
ERROR at line 1:
ORA-01919: role 'RESOURCES' does not exist


SQL> grant connect resources,create any view to abc;
grant connect resources,create any view to abc
      *
ERROR at line 1:
ORA-00990: missing or invalid privilege


SQL> grant connect,resource,create any view to abc;

Grant succeeded.

SQL> conn abc/abc;
Connected.
SQL> create table ab (ab number);

Table created.

SQL> select table_name,tablespace_name from tables;
select table_name,tablespace_name from tables
                                       *
ERROR at line 1:
ORA-00942: table or view does not exist


SQL> select table_name,tablespace_name from user_tables;

TABLE_NAME                     TABLESPACE_NAME
------------------------------ ------------------------------
AB                             USERS

SQL> conn sys/root as sysdba;
Connected.
SQL> alter user abc identified by xyz;

User altered.

SQL> conn abc/abc
ERROR:
ORA-01017: invalid username/password; logon denied


Warning: You are no longer connected to ORACLE.
SQL> conn abc/xyz
Connected.
SQL> desc dba_datafiles
ERROR:
ORA-04043: object dba_datafiles does not exist


SQL> desc dba_datafiles;
ERROR:
ORA-04043: object dba_datafiles does not exist


SQL> desc dba_data_files;
ERROR:
ORA-04043: object "SYS"."DBA_DATA_FILES" does not exist


SQL> conn sys/root as sysdba
Connected.
SQL> desc dba_data_files;
 Name                                                                                Null?    Type
 ----------------------------------------------------------------------------------- -------- --------------------------------------------------------
 FILE_NAME                                                                                    VARCHAR2(513)
 FILE_ID                                                                                      NUMBER
 TABLESPACE_NAME                                                                              VARCHAR2(30)
 BYTES                                                                                        NUMBER
 BLOCKS                                                                                       NUMBER
 STATUS                                                                                       VARCHAR2(9)
 RELATIVE_FNO                                                                                 NUMBER
 AUTOEXTENSIBLE                                                                               VARCHAR2(3)
 MAXBYTES                                                                                     NUMBER
 MAXBLOCKS                                                                                    NUMBER
 INCREMENT_BY                                                                                 NUMBER
 USER_BYTES                                                                                   NUMBER
 USER_BLOCKS                                                                                  NUMBER
 ONLINE_STATUS                                                                                VARCHAR2(7)

SQL> select file_name from dba_data_files;

FILE_NAME
------------------------------------------------------------------------------------------------------------------------------------------------------
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\USERS.DBF
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSAUX.DBF
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\UNDOTBS1.DBF
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSTEM.DBF

SQL> create tablespace userdata DATAFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\USERS.DBF' SIZE 10;
create tablespace userdata DATAFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\USERS.DBF' SIZE 10
*
ERROR at line 1:
ORA-01537: cannot add file 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\USERS.DBF' - file already part of database


SQL> create tablespace userdata DATAFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSAUX.DBF' SIZE 10;
create tablespace userdata DATAFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSAUX.DBF' SIZE 10
*
ERROR at line 1:
ORA-01537: cannot add file 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSAUX.DBF' - file already part of database


SQL> create tablespace userdata DATAFILE '' SIZE 10;
create tablespace userdata DATAFILE '' SIZE 10
                                             *
ERROR at line 1:
ORA-03280: invalid DATAFILE filename specified


SQL> create tablespace userdata DATAFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\UNDOTBS1.DBF' SIZE 10;
create tablespace userdata DATAFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\UNDOTBS1.DBF' SIZE 10
*
ERROR at line 1:
ORA-01537: cannot add file 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\UNDOTBS1.DBF' - file already part of database


SQL> create tablespace userdata DATAFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\UNDOTBS1.DBF' SIZE 100;
create tablespace userdata DATAFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\UNDOTBS1.DBF' SIZE 100
*
ERROR at line 1:
ORA-01537: cannot add file 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\UNDOTBS1.DBF' - file already part of database


SQL> create tablespace userdata DATAFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RAMYTBS1.DBF' SIZE 10;
create tablespace userdata DATAFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RAMYTBS1.DBF' SIZE 10
*
ERROR at line 1:
ORA-03214: File Size specified is smaller than minimum required


SQL> create tablespace userdata DATAFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RAMYTBS1.DBF' SIZE 100;
create tablespace userdata DATAFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RAMYTBS1.DBF' SIZE 100
*
ERROR at line 1:
ORA-03214: File Size specified is smaller than minimum required


SQL> create tablespace userdata DATAFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RAMYTBS1.DBF' SIZE 100
  2  ;
create tablespace userdata DATAFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RAMYTBS1.DBF' SIZE 100
*
ERROR at line 1:
ORA-03214: File Size specified is smaller than minimum required


SQL> create tablespace userdata DATAFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RAMYTBS1.DBF' SIZE 100M;

Tablespace created.

SQL> SELECT FILE_NAME FROM DBA_DATA_FILES;

FILE_NAME
------------------------------------------------------------------------------------------------------------------------------------------------------
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\USERS.DBF
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSAUX.DBF
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\UNDOTBS1.DBF
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSTEM.DBF
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RAMYTBS1.DBF

SQL> SELECT TABLESPACE_NAME FROM USER_TABLES;

TABLESPACE_NAME
------------------------------
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM

TABLESPACE_NAME
------------------------------
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSAUX
SYSAUX
SYSTEM
SYSTEM
SYSTEM
SYSAUX
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM

TABLESPACE_NAME
------------------------------
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSAUX
SYSAUX
SYSTEM
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSAUX
SYSAUX
SYSAUX
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM

TABLESPACE_NAME
------------------------------
SYSTEM
SYSTEM
SYSAUX
SYSTEM
SYSTEM
SYSTEM
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM

TABLESPACE_NAME
------------------------------
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSAUX
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSAUX
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSAUX
SYSAUX

TABLESPACE_NAME
------------------------------
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM

TABLESPACE_NAME
------------------------------
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM

TABLESPACE_NAME
------------------------------
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSTEM
SYSAUX
SYSTEM
SYSTEM
SYSTEM
SYSTEM

TABLESPACE_NAME
------------------------------
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSAUX
SYSTEM
SYSAUX
SYSAUX
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSAUX
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSAUX
SYSTEM
SYSTEM
SYSTEM
SYSAUX
SYSAUX
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX

TABLESPACE_NAME
------------------------------
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSAUX
SYSAUX
SYSAUX
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSAUX
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX

TABLESPACE_NAME
------------------------------
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSTEM
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSTEM
SYSAUX
SYSTEM
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX

TABLESPACE_NAME
------------------------------
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX

TABLESPACE_NAME
------------------------------
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSTEM
SYSAUX
SYSAUX
SYSTEM
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSTEM
SYSTEM
SYSTEM
SYSTEM

TABLESPACE_NAME
------------------------------
SYSAUX
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM

TABLESPACE_NAME
------------------------------
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSAUX
SYSAUX
SYSAUX
SYSAUX
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM
SYSTEM

























TABLESPACE_NAME
------------------------------


























































TABLESPACE_NAME
------------------------------






























SYSTEM
SYSTEM

944 rows selected.

SQL> DESC USER_TABLESPACE
ERROR:
ORA-04043: object USER_TABLESPACE does not exist


SQL> DESC USER_TABLESPACES;
 Name                                                                                Null?    Type
 ----------------------------------------------------------------------------------- -------- --------------------------------------------------------
 TABLESPACE_NAME                                                                     NOT NULL VARCHAR2(30)
 BLOCK_SIZE                                                                          NOT NULL NUMBER
 INITIAL_EXTENT                                                                               NUMBER
 NEXT_EXTENT                                                                                  NUMBER
 MIN_EXTENTS                                                                         NOT NULL NUMBER
 MAX_EXTENTS                                                                                  NUMBER
 MAX_SIZE                                                                                     NUMBER
 PCT_INCREASE                                                                                 NUMBER
 MIN_EXTLEN                                                                                   NUMBER
 STATUS                                                                                       VARCHAR2(9)
 CONTENTS                                                                                     VARCHAR2(9)
 LOGGING                                                                                      VARCHAR2(9)
 FORCE_LOGGING                                                                                VARCHAR2(3)
 EXTENT_MANAGEMENT                                                                            VARCHAR2(10)
 ALLOCATION_TYPE                                                                              VARCHAR2(9)
 SEGMENT_SPACE_MANAGEMENT                                                                     VARCHAR2(6)
 DEF_TAB_COMPRESSION                                                                          VARCHAR2(8)
 RETENTION                                                                                    VARCHAR2(11)
 BIGFILE                                                                                      VARCHAR2(3)
 PREDICATE_EVALUATION                                                                         VARCHAR2(7)
 ENCRYPTED                                                                                    VARCHAR2(3)
 COMPRESS_FOR                                                                                 VARCHAR2(12)

SQL> SELECT TABLESPACE_NAME FROM USER_TABLESPACES;

TABLESPACE_NAME
------------------------------
SYSTEM
SYSAUX
UNDOTBS1
TEMP
USERS
USERDATA

6 rows selected.

SQL> DESC USER_TABLESPACES
 Name                                                                                Null?    Type
 ----------------------------------------------------------------------------------- -------- --------------------------------------------------------
 TABLESPACE_NAME                                                                     NOT NULL VARCHAR2(30)
 BLOCK_SIZE                                                                          NOT NULL NUMBER
 INITIAL_EXTENT                                                                               NUMBER
 NEXT_EXTENT                                                                                  NUMBER
 MIN_EXTENTS                                                                         NOT NULL NUMBER
 MAX_EXTENTS                                                                                  NUMBER
 MAX_SIZE                                                                                     NUMBER
 PCT_INCREASE                                                                                 NUMBER
 MIN_EXTLEN                                                                                   NUMBER
 STATUS                                                                                       VARCHAR2(9)
 CONTENTS                                                                                     VARCHAR2(9)
 LOGGING                                                                                      VARCHAR2(9)
 FORCE_LOGGING                                                                                VARCHAR2(3)
 EXTENT_MANAGEMENT                                                                            VARCHAR2(10)
 ALLOCATION_TYPE                                                                              VARCHAR2(9)
 SEGMENT_SPACE_MANAGEMENT                                                                     VARCHAR2(6)
 DEF_TAB_COMPRESSION                                                                          VARCHAR2(8)
 RETENTION                                                                                    VARCHAR2(11)
 BIGFILE                                                                                      VARCHAR2(3)
 PREDICATE_EVALUATION                                                                         VARCHAR2(7)
 ENCRYPTED                                                                                    VARCHAR2(3)
 COMPRESS_FOR                                                                                 VARCHAR2(12)

SQL> SELECT TABLE_NAME,TABLESPACE_NAME FROM USER_TABLES;

TABLE_NAME                     TABLESPACE_NAME
------------------------------ ------------------------------
ICOL$                          SYSTEM
IND$                           SYSTEM
COL$                           SYSTEM
CLU$                           SYSTEM
TAB$                           SYSTEM
LOB$                           SYSTEM
COLTYPE$                       SYSTEM
SUBCOLTYPE$                    SYSTEM
NTAB$                          SYSTEM
REFCON$                        SYSTEM
OPQTYPE$                       SYSTEM
ICOLDEP$                       SYSTEM
VIEWTRCOL$                     SYSTEM
LIBRARY$                       SYSTEM
ASSEMBLY$                      SYSTEM
ATTRCOL$                       SYSTEM
TYPE_MISC$                     SYSTEM
TS$                            SYSTEM
FET$                           SYSTEM
UET$                           SYSTEM
SEG$                           SYSTEM
USER$                          SYSTEM
TSQ$                           SYSTEM
UNDO$                          SYSTEM
FILE$                          SYSTEM
OBJ$                           SYSTEM
PROXY_DATA$                    SYSTEM
PROXY_ROLE_DATA$               SYSTEM
CON$                           SYSTEM
CCOL$                          SYSTEM
CDEF$                          SYSTEM
BOOTSTRAP$                     SYSTEM
OBJERROR$                      SYSTEM
OBJAUTH$                       SYSTEM
UGROUP$                        SYSTEM
SYN$                           SYSTEM
VIEW$                          SYSTEM
TYPED_VIEW$                    SYSTEM
SUPEROBJ$                      SYSTEM
SEQ$                           SYSTEM
PROPS$                         SYSTEM
EDITION$                       SYSTEM
FIXED_OBJ$                     SYSTEM
MIGRATE$                       SYSTEM
DEPENDENCY$                    SYSTEM
ACCESS$                        SYSTEM
VIEWCON$                       SYSTEM
DUAL                           SYSTEM
SYSAUTH$                       SYSTEM
OBJPRIV$                       SYSTEM
DEFROLE$                       SYSTEM
ECOL$                          SYSTEM
EV$                            SYSTEM
EVCOL$                         SYSTEM
DEFERRED_STG$                  SYSTEM
SQLERROR$                      SYSTEM
LINK$                          SYSTEM

TABLE_NAME                     TABLESPACE_NAME
------------------------------ ------------------------------
TRUSTED_LIST$                  SYSTEM
COM$                           SYSTEM
DUC$                           SYSTEM
RECYCLEBIN$                    SYSTEM
IND_ONLINE$                    SYSTEM
CONTEXT$                       SYSTEM
SQL_VERSION$                   SYSTEM
JIJOIN$                        SYSTEM
JIREFRESHSQL$                  SYSTEM
TRIGGER$                       SYSTEM
TRIGGERCOL$                    SYSTEM
TRIGGERJAVAF$                  SYSTEM
TRIGGERJAVAS$                  SYSTEM
TRIGGERJAVAC$                  SYSTEM
TRIGGERJAVAM$                  SYSTEM
TRIGGERDEP$                    SYSTEM
INDREBUILD$                    SYSTEM
COMPRESSION$                   SYSTEM
TRANSIENT_IOT$                 SYSTEM
SMB$CONFIG                     SYSAUX
SQL$                           SYSAUX
SQL$TEXT                       SYSAUX
SQLOBJ$AUXDATA                 SYSAUX
OBJECT_USAGE                   SYSTEM
PROCEDURE$                     SYSTEM
PROCEDUREINFO$                 SYSTEM
ARGUMENT$                      SYSTEM
SOURCE$                        SYSTEM
IDL_UB1$                       SYSTEM
IDL_CHAR$                      SYSTEM
IDL_UB2$                       SYSTEM
IDL_SB4$                       SYSTEM
ERROR$                         SYSTEM
SETTINGS$                      SYSTEM
NCOMP_DLL$                     SYSTEM
PROCEDUREJAVA$                 SYSTEM
PROCEDUREC$                    SYSTEM
PROCEDUREPLSQL$                SYSTEM
WARNING_SETTINGS$              SYSTEM
DIANA_VERSION$                 SYSTEM
PLSCOPE_IDENTIFIER$            SYSAUX
PLSCOPE_ACTION$                SYSAUX
PENDING_TRANS$                 SYSTEM
PENDING_SESSIONS$              SYSTEM
PENDING_SUB_SESSIONS$          SYSTEM
SMON_SCN_TIME                  SYSAUX
MAP_FILE$                      SYSTEM
MAP_FILE_EXTENT$               SYSTEM
MAP_SUBELEMENT$                SYSTEM
MAP_ELEMENT$                   SYSTEM
MAP_EXTELEMENT$                SYSTEM
MAP_COMPLIST$                  SYSTEM
PROFILE$                       SYSTEM
PROFNAME$                      SYSTEM
RESOURCE_COST$                 SYSTEM
JOB$                           SYSTEM
RESOURCE_MAP                   SYSTEM

TABLE_NAME                     TABLESPACE_NAME
------------------------------ ------------------------------
USER_ASTATUS_MAP               SYSTEM
RESOURCE_PLAN$                 SYSTEM
RESOURCE_CONSUMER_GROUP$       SYSTEM
RESOURCE_CATEGORY$             SYSTEM
RESOURCE_PLAN_DIRECTIVE$       SYSTEM
RESOURCE_GROUP_MAPPING$        SYSTEM
RESOURCE_MAPPING_PRIORITY$     SYSTEM
RESOURCE_STORAGE_POOL_MAPPING$ SYSTEM
RESOURCE_CAPABILITY$           SYSTEM
RESOURCE_INSTANCE_CAPABILITY$  SYSTEM
RESOURCE_IO_CALIBRATE$         SYSTEM
TSM_SRC$                       SYSAUX
TSM_DST$                       SYSAUX
SERVICE$                       SYSTEM
DIR$MIGRATE_OPERATIONS         SYSAUX
DIR$SERVICE_OPERATIONS         SYSAUX
DIR$ESCALATE_OPERATIONS        SYSAUX
DIR$QUIESCE_OPERATIONS         SYSAUX
DIR$INSTANCE_ACTIONS           SYSAUX
DIR$RESONATE_OPERATIONS        SYSAUX
DIR$ALERT_HISTORY              SYSAUX
DIR$REASON_STRINGS             SYSAUX
DIR$DATABASE_ATTRIBUTES        SYSAUX
DIR$VICTIM_POLICY              SYSAUX
DIR$NODE_ATTRIBUTES            SYSAUX
DIR$SERVICE_ATTRIBUTES         SYSAUX
_default_auditing_options_     SYSTEM
AUDIT$                         SYSTEM
SYSTEM_PRIVILEGE_MAP           SYSTEM
TABLE_PRIVILEGE_MAP            SYSTEM
STMT_AUDIT_OPTION_MAP          SYSTEM
USER_HISTORY$                  SYSTEM
RLS$                           SYSTEM
RLS_SC$                        SYSTEM
RLS_GRP$                       SYSTEM
RLS_CTX$                       SYSTEM
AUD$                           SYSTEM
FGA$                           SYSTEM
FGACOL$                        SYSTEM
FGA_LOG$                       SYSTEM
APPROLE$                       SYSTEM
ENC$                           SYSTEM
PROXY_INFO$                    SYSTEM
PROXY_ROLE_INFO$               SYSTEM
XS$VERIFIERS                   SYSTEM
XS$SESSIONS                    SYSAUX
XS$SESSION_ROLES               SYSAUX
XS$SESSION_APPNS               SYSAUX
XS$PARAMETERS                  SYSTEM
DEFAULT_PWD$                   SYSTEM
HISTGRM$                       SYSTEM
HIST_HEAD$                     SYSTEM
AUX_STATS$                     SYSTEM
TAB_STATS$                     SYSTEM
IND_STATS$                     SYSTEM
CACHE_STATS_1$                 SYSTEM
CACHE_STATS_0$                 SYSTEM

TABLE_NAME                     TABLESPACE_NAME
------------------------------ ------------------------------
ASSOCIATION$                   SYSTEM
USTATS$                        SYSTEM
STATS_TARGET$                  SYSAUX
COL_USAGE$                     SYSTEM
MON_MODS$                      SYSTEM
MON_MODS_ALL$                  SYSTEM
WRI$_OPTSTAT_TAB_HISTORY       SYSAUX
WRI$_OPTSTAT_IND_HISTORY       SYSAUX
WRI$_OPTSTAT_HISTHEAD_HISTORY  SYSAUX
WRI$_OPTSTAT_HISTGRM_HISTORY   SYSAUX
WRI$_OPTSTAT_AUX_HISTORY       SYSAUX
WRI$_OPTSTAT_OPR               SYSAUX
OPTSTAT_HIST_CONTROL$          SYSTEM
OPTSTAT_USER_PREFS$            SYSTEM
DIR$                           SYSTEM
ID_GENS$                       SYSTEM
OID$                           SYSTEM
TYPE$                          SYSTEM
COLLECTION$                    SYSTEM
ATTRIBUTE$                     SYSTEM
METHOD$                        SYSTEM
PARAMETER$                     SYSTEM
RESULT$                        SYSTEM
TYPEHIERARCHY$                 SYSTEM
KOPM$                          SYSTEM
VTABLE$                        SYSTEM
OPBINDING$                     SYSTEM
OPANCILLARY$                   SYSTEM
OPARG$                         SYSTEM
OPERATOR$                      SYSTEM
INDTYPES$                      SYSTEM
INDOP$                         SYSTEM
INDARRAYTYPE$                  SYSTEM
SECOBJ$                        SYSTEM
JAVAOBJ$                       SYSTEM
JAVASNM$                       SYSTEM
PARTOBJ$                       SYSTEM
PARTCOL$                       SYSTEM
TABPART$                       SYSTEM
INDPART$                       SYSTEM
SUBPARTCOL$                    SYSTEM
TABSUBPART$                    SYSTEM
INDSUBPART$                    SYSTEM
TABCOMPART$                    SYSTEM
INDCOMPART$                    SYSTEM
PARTLOB$                       SYSTEM
LOBFRAG$                       SYSTEM
LOBCOMPPART$                   SYSTEM
DEFSUBPART$                    SYSTEM
DEFSUBPARTLOB$                 SYSTEM
INDPART_PARAM$                 SYSTEM
INSERT_TSN_LIST$               SYSTEM
SUMPARTLOG$                    SYSTEM
SUMDELTA$                      SYSTEM
SNAP_LOGDEP$                   SYSTEM
SNAP_LOADERTIME$               SYSTEM
MLOG$                          SYSTEM

TABLE_NAME                     TABLESPACE_NAME
------------------------------ ------------------------------
SLOG$                          SYSTEM
SNAP_XCMT$                     SYSTEM
SNAP$                          SYSTEM
SNAP_REFTIME$                  SYSTEM
MLOG_REFCOL$                   SYSTEM
SNAP_REFOP$                    SYSTEM
SNAP_COLMAP$                   SYSTEM
SNAP_OBJCOL$                   SYSTEM
REG_SNAP$                      SYSTEM
SNAP_SITE$                     SYSTEM
RGROUP$                        SYSTEM
RGCHILD$                       SYSTEM
CDC_SYSTEM$                    SYSTEM
CDC_CHANGE_SOURCES$            SYSTEM
CDC_CHANGE_SETS$               SYSTEM
CDC_CHANGE_TABLES$             SYSTEM
CDC_SUBSCRIBERS$               SYSTEM
CDC_SUBSCRIBED_TABLES$         SYSTEM
CDC_SUBSCRIBED_COLUMNS$        SYSTEM
CDC_CHANGE_COLUMNS$            SYSTEM
CDC_PROPAGATIONS$              SYSTEM
CDC_PROPAGATED_SETS$           SYSTEM
STREAMS$_SPLIT_MERGE           SYSTEM
STREAMS$_CAPTURE_SERVER        SYSTEM
STREAMS$_CAPTURE_PROCESS       SYSTEM
STREAMS$_APPLY_PROCESS         SYSTEM
STREAMS$_PROPAGATION_PROCESS   SYSTEM
STREAMS$_PROCESS_PARAMS        SYSTEM
STREAMS$_EXTRA_ATTRS           SYSTEM
STREAMS$_PREPARE_OBJECT        SYSTEM
STREAMS$_PREPARE_DDL           SYSTEM
STREAMS$_APPLY_MILESTONE       SYSTEM
STREAMS$_APPLY_PROGRESS        SYSAUX
STREAMS$_KEY_COLUMNS           SYSTEM
STREAMS$_DEF_PROC              SYSTEM
STREAMS$_RULES                 SYSTEM
APPLY$_SOURCE_OBJ              SYSTEM
APPLY$_SOURCE_SCHEMA           SYSTEM
APPLY$_VIRTUAL_OBJ_CONS        SYSTEM
APPLY$_CONSTRAINT_COLUMNS      SYSTEM
APPLY$_DEST_OBJ                SYSTEM
APPLY$_DEST_OBJ_CMAP           SYSTEM
APPLY$_DEST_OBJ_OPS            SYSTEM
STREAMS$_STMT_HANDLERS         SYSTEM
STREAMS$_STMT_HANDLER_STMTS    SYSTEM
APPLY$_CHANGE_HANDLERS         SYSTEM
APPLY$_ERROR                   SYSAUX
APPLY$_ERROR_TXN               SYSTEM
APPLY$_ERROR_HANDLER           SYSTEM
APPLY$_CONF_HDLR_COLUMNS       SYSTEM
STREAMS$_DEST_OBJS             SYSTEM
STREAMS$_DEST_OBJ_COLS         SYSTEM
STREAMS$_PRIVILEGED_USER       SYSTEM
STREAMS$_MESSAGE_RULES         SYSTEM
STREAMS$_MESSAGE_CONSUMERS     SYSTEM
STREAMS$_APPLY_SPILL_TXN       SYSAUX
STREAMS$_APPLY_SPILL_TXN_LIST  SYSAUX

TABLE_NAME                     TABLESPACE_NAME
------------------------------ ------------------------------
FGR$_FILE_GROUPS               SYSTEM
FGR$_FILE_GROUP_VERSIONS       SYSTEM
FGR$_FILE_GROUP_EXPORT_INFO    SYSTEM
FGR$_FILE_GROUP_FILES          SYSTEM
FGR$_TABLESPACE_INFO           SYSTEM
FGR$_TABLE_INFO                SYSTEM
REDEF$                         SYSTEM
REDEF_OBJECT$                  SYSTEM
REDEF_DEP_ERROR$               SYSTEM
RULESET$                       SYSTEM
LOG$                           SYSTEM
RECO_SCRIPT$                   SYSAUX
RECO_SCRIPT_PARAMS$            SYSAUX
RECO_SCRIPT_BLOCK$             SYSAUX
RECO_SCRIPT_ERROR$             SYSAUX
COMPARISON$                    SYSAUX
COMPARISON_COL$                SYSAUX
COMPARISON_SCAN$               SYSAUX
COMPARISON_SCAN_VAL$           SYSAUX
COMPARISON_ROW_DIF$            SYSAUX
STREAMS$_COMPONENT             SYSAUX
STREAMS$_COMPONENT_LINK        SYSAUX
STREAMS$_COMPONENT_PROP        SYSAUX
STREAMS$_DATABASE              SYSAUX
XSTREAM$_SERVER                SYSTEM
XSTREAM$_SUBSET_RULES          SYSTEM
XSTREAM$_SYSGEN_OBJS           SYSTEM
XSTREAM$_PARAMETERS            SYSTEM
XSTREAM$_DML_CONFLICT_HANDLER  SYSTEM
XSTREAM$_SERVER_CONNECTION     SYSTEM
XSTREAM$_DDL_CONFLICT_HANDLER  SYSTEM
XSTREAM$_MAP                   SYSTEM
GOLDENGATE$_PRIVILEGES         SYSTEM
AW$                            SYSAUX
PS$                            SYSAUX
AW_OBJ$                        SYSAUX
AW_PROP$                       SYSAUX
AW_TRACK$                      SYSAUX
AW_PRG$                        SYSAUX
OLAP_MAPPINGS$                 SYSTEM
OLAP_MODELS$                   SYSTEM
OLAP_MODEL_PARENTS$            SYSTEM
OLAP_MODEL_ASSIGNMENTS$        SYSTEM
OLAP_CALCULATED_MEMBERS$       SYSTEM
OLAP_SYNTAX$                   SYSTEM
OLAP_DESCRIPTIONS$             SYSTEM
OLAP_CUBE_BUILD_PROCESSES$     SYSTEM
OLAP_AW_VIEWS$                 SYSTEM
OLAP_AW_VIEW_COLUMNS$          SYSTEM
OLAP_MEASURE_FOLDERS$          SYSTEM
OLAP_MEAS_FOLDER_CONTENTS$     SYSTEM
OLAP_AW_DEPLOYMENT_CONTROLS$   SYSTEM
OLAP_IMPL_OPTIONS$             SYSTEM
OLAP_MULTI_OPTIONS$            SYSTEM
OLAP_CUBE_DIMENSIONS$          SYSTEM
OLAP_DIM_LEVELS$               SYSTEM
OLAP_ATTRIBUTES$               SYSTEM

TABLE_NAME                     TABLESPACE_NAME
------------------------------ ------------------------------
OLAP_ATTRIBUTE_VISIBILITY$     SYSTEM
OLAP_HIERARCHIES$              SYSTEM
OLAP_HIER_LEVELS$              SYSTEM
OLAP_CUBES$                    SYSTEM
OLAP_MEASURES$                 SYSTEM
OLAP_DIMENSIONALITY$           SYSTEM
OLAP_TAB$                      SYSTEM
OLAP_TAB_COL$                  SYSTEM
OLAP_TAB_HIER$                 SYSTEM
SUM$                           SYSTEM
SUMDETAIL$                     SYSTEM
SUMINLINE$                     SYSTEM
SUMKEY$                        SYSTEM
SUMAGG$                        SYSTEM
SUMJOIN$                       SYSTEM
SUMDEP$                        SYSTEM
SUMPRED$                       SYSTEM
SUMQB$                         SYSTEM
HIER$                          SYSTEM
HIERLEVEL$                     SYSTEM
DIM$                           SYSTEM
DIMLEVEL$                      SYSTEM
DIMLEVELKEY$                   SYSTEM
DIMJOINKEY$                    SYSTEM
DIMATTR$                       SYSTEM
INCEXP                         SYSTEM
INCVID                         SYSTEM
INCFIL                         SYSTEM
EXPACT$                        SYSTEM
NOEXP$                         SYSTEM
EXPPKGOBJ$                     SYSTEM
EXPPKGACT$                     SYSTEM
EXPDEPOBJ$                     SYSTEM
EXPDEPACT$                     SYSTEM
EXPIMP_TTS_CT$                 SYSTEM
METAVIEW$                      SYSTEM
METAFILTER$                    SYSTEM
METAXSL$                       SYSTEM
METAXSLPARAM$                  SYSTEM
METASTYLESHEET                 SYSTEM
METASCRIPT$                    SYSTEM
METASCRIPTFILTER$              SYSTEM
METANAMETRANS$                 SYSTEM
METAPATHMAP$                   SYSTEM
EXTERNAL_TAB$                  SYSTEM
EXTERNAL_LOCATION$             SYSTEM
MODEL$                         SYSAUX
MODELTAB$                      SYSAUX
MODELATT$                      SYSAUX
MODELSET$                      SYSAUX
LOGMNR_BUILDLOG                SYSTEM
LOGMNRG_SEED$                  SYSTEM
LOGMNRG_DICTIONARY$            SYSTEM
LOGMNRG_OBJ$                   SYSTEM
LOGMNRG_TAB$                   SYSTEM
LOGMNRG_COL$                   SYSTEM
LOGMNRG_ATTRCOL$               SYSTEM

TABLE_NAME                     TABLESPACE_NAME
------------------------------ ------------------------------
LOGMNRG_TS$                    SYSTEM
LOGMNRG_IND$                   SYSTEM
LOGMNRG_USER$                  SYSTEM
LOGMNRG_TABPART$               SYSTEM
LOGMNRG_TABSUBPART$            SYSTEM
LOGMNRG_TABCOMPART$            SYSTEM
LOGMNRG_TYPE$                  SYSTEM
LOGMNRG_COLTYPE$               SYSTEM
LOGMNRG_ATTRIBUTE$             SYSTEM
LOGMNRG_LOB$                   SYSTEM
LOGMNRG_CDEF$                  SYSTEM
LOGMNRG_CCOL$                  SYSTEM
LOGMNRG_ICOL$                  SYSTEM
LOGMNRG_LOBFRAG$               SYSTEM
LOGMNRG_INDPART$               SYSTEM
LOGMNRG_INDSUBPART$            SYSTEM
LOGMNRG_INDCOMPART$            SYSTEM
LOGMNRG_LOGMNR_BUILDLOG        SYSTEM
LOGMNRG_NTAB$                  SYSTEM
LOGMNRG_OPQTYPE$               SYSTEM
LOGMNRG_SUBCOLTYPE$            SYSTEM
LOGMNRG_KOPM$                  SYSTEM
LOGMNRG_PROPS$                 SYSTEM
LOGMNRG_ENC$                   SYSTEM
LOGMNRG_REFCON$                SYSTEM
LOGMNRG_PARTOBJ$               SYSTEM
DST$AFFECTED_TABLES            SYSTEM
DST$ERROR_TABLE                SYSTEM
DST$TRIGGER_TABLE              SYSTEM
SYS_FBA_FA                     SYSTEM
SYS_FBA_TSFA                   SYSTEM
SYS_FBA_BARRIERSCN             SYSTEM
SYS_FBA_TRACKEDTABLES          SYSTEM
SYS_FBA_PARTITIONS             SYSTEM
SYS_FBA_USERS                  SYSTEM
SYS_FBA_DL                     SYSTEM
REGISTRY$                      SYSTEM
REGISTRY$SCHEMAS               SYSTEM
REGISTRY$LOG                   SYSTEM
REGISTRY$ERROR                 SYSTEM
REGISTRY$HISTORY               SYSTEM
REGISTRY$PROGRESS              SYSTEM
REGISTRY$DEPENDENCIES          SYSTEM
REGISTRY$DATABASE              SYSTEM
AUDIT_ACTIONS                  SYSTEM
WRI$_SEGADV_OBJLIST            SYSAUX
WRI$_SEGADV_CNTRLTAB           SYSAUX
WRI$_REPT_COMPONENTS           SYSAUX
WRI$_REPT_REPORTS              SYSAUX
WRI$_REPT_FILES                SYSAUX
WRI$_REPT_FORMATS              SYSAUX
TRANSACTION_BACKOUT_STATE$     SYSTEM
TRANSACTION_BACKOUT_REPORT$    SYSAUX
UTL_RECOMP_ERRORS              SYSTEM
TRANSFORMATIONS$               SYSTEM
ATTRIBUTE_TRANSFORMATIONS$     SYSTEM
RULE_SET_IEUAC$                SYSTEM

TABLE_NAME                     TABLESPACE_NAME
------------------------------ ------------------------------
RULE_SET$                      SYSTEM
RULE$                          SYSTEM
RULE_MAP$                      SYSTEM
RULE_EC$                       SYSTEM
REC_TAB$                       SYSTEM
REC_VAR$                       SYSTEM
RULE_SET_EE$                   SYSTEM
RULE_SET_TE$                   SYSTEM
RULE_SET_VE$                   SYSTEM
RULE_SET_RE$                   SYSTEM
RULE_SET_ROR$                  SYSTEM
RULE_SET_FOB$                  SYSTEM
RULE_SET_NL$                   SYSTEM
SYS_IOT_OVER_5229              SYSAUX
RULE_SET_RDEP$                 SYSTEM
SYS_IOT_OVER_5235              SYSAUX
SYS_IOT_OVER_5239              SYSAUX
DAM_PARAM_TAB$                 SYSTEM
DAM_CONFIG_PARAM$              SYSTEM
DAM_LAST_ARCH_TS$              SYSTEM
DAM_CLEANUP_JOBS$              SYSTEM
DAM_CLEANUP_EVENTS$            SYSTEM
INVALIDATION_REGISTRY$         SYSTEM
SYS_IOT_OVER_5476              SYSAUX
CHNF$_CLAUSE_DEPENDENTS        SYSTEM
CHNF$_QUERY_OBJECT             SYSTEM
CHNF$_REG_QUERIES              SYSTEM
CHNF$_QUERIES                  SYSTEM
CHNF$_QUERY_BINDS              SYSTEM
SYS_IOT_OVER_5511              SYSAUX
CHNF$_QUERY_DEPENDENCIES       SYSTEM
CHNFDIRECTLOAD$                SYSTEM
CPOOL$                         SYSTEM
SSCR_CAP$                      SYSAUX
SSCR_RES$                      SYSAUX
REG$                           SYSTEM
LOC$                           SYSTEM
AQ$_REPLAY_INFO                SYSTEM
AQ$_QUEUE_TABLE_AFFINITIES     SYSTEM
AQ$_SUBSCRIBER_TABLE           SYSTEM
AQ$_SCHEDULES                  SYSTEM
AQ$_MESSAGE_TYPES              SYSTEM
AQ$_PROPAGATION_STATUS         SYSTEM
AQ$_PENDING_MESSAGES           SYSTEM
AQ$_QUEUE_STATISTICS           SYSTEM
AQ$_PUBLISHER                  SYSTEM
SYS_IOT_OVER_5779              SYSAUX
WRI$_ADV_DEFINITIONS           SYSAUX
WRI$_ADV_DEF_PARAMETERS        SYSAUX
WRI$_ADV_DEF_EXEC_TYPES        SYSAUX
WRI$_ADV_TASKS                 SYSAUX
WRI$_ADV_PARAMETERS            SYSAUX
WRI$_ADV_EXECUTIONS            SYSAUX
WRI$_ADV_EXEC_PARAMETERS       SYSAUX
WRI$_ADV_OBJECTS               SYSAUX
WRI$_ADV_FINDINGS              SYSAUX
WRI$_ADV_INST_FDG              SYSAUX

TABLE_NAME                     TABLESPACE_NAME
------------------------------ ------------------------------
WRI$_ADV_RECOMMENDATIONS       SYSAUX
WRI$_ADV_ACTIONS               SYSAUX
WRI$_ADV_RATIONALE             SYSAUX
WRI$_ADV_REC_ACTIONS           SYSAUX
WRI$_ADV_DIRECTIVE_DEFS        SYSAUX
WRI$_ADV_DIRECTIVE_META        SYSAUX
WRI$_ADV_DIRECTIVE_INSTANCES   SYSAUX
WRI$_ADV_JOURNAL               SYSAUX
WRI$_ADV_MESSAGE_GROUPS        SYSAUX
WRI$_ADV_SQLT_PLAN_HASH        SYSAUX
WRI$_ADV_SQLT_PLAN_STATS       SYSAUX
WRI$_ADV_SQLT_PLANS            SYSAUX
WRI$_ADV_USAGE                 SYSAUX
WRI$_ADV_ADDM_TASKS            SYSAUX
WRI$_ADV_ADDM_INST             SYSAUX
WRI$_ADV_ADDM_FDG              SYSAUX
SCHEDULER$_PROGRAM             SYSTEM
SCHEDULER$_CLASS               SYSTEM
SCHEDULER$_JOB                 SYSTEM
SCHEDULER$_SAVED_OIDS          SYSTEM
SCHEDULER$_LWJOB_OBJ           SYSTEM
SCHEDULER$_LIGHTWEIGHT_JOB     SYSTEM
SCHEDULER$_JOB_ARGUMENT        SYSTEM
SCHEDULER$_WINDOW              SYSTEM
SCHEDULER$_PROGRAM_ARGUMENT    SYSTEM
SCHEDULER$_SRCQ_INFO           SYSTEM
SCHEDULER$_SRCQ_MAP            SYSTEM
SCHEDULER$_EVTQ_SUB            SYSTEM
SCHEDULER$_EVENT_LOG           SYSAUX
SCHEDULER$_JOB_RUN_DETAILS     SYSAUX
SCHEDULER$_WINDOW_DETAILS      SYSAUX
SCHEDULER$_WINDOW_GROUP        SYSTEM
SCHEDULER$_WINGRP_MEMBER       SYSTEM
SCHEDULER$_SCHEDULE            SYSTEM
SCHEDULER$_CHAIN               SYSTEM
SCHEDULER$_STEP                SYSTEM
SCHEDULER$_STEP_STATE          SYSAUX
SCHEDULER$_GLOBAL_ATTRIBUTE    SYSTEM
SCHEDULER$_CREDENTIAL          SYSTEM
SCHEDULER$_RJOB_SRC_DB_INFO    SYSTEM
SCHEDULER$_REMOTE_DBS          SYSTEM
SCHEDULER$_REMOTE_JOB_STATE    SYSTEM
SCHEDULER$_FILE_WATCHER        SYSTEM
SCHEDULER$_FILEWATCHER_HISTORY SYSTEM
SCHEDULER$_FILEWATCHER_RESEND  SYSTEM
SCHEDULER$_NOTIFICATION        SYSTEM
SCHEDULER$_DESTINATIONS        SYSTEM
SCHEDULER$_JOB_DESTINATIONS    SYSTEM
KU_NOEXP_TAB                   SYSTEM
KU_UTLUSE                      SYSTEM
CRC$_RESULT_CACHE_STATS        SYSAUX
WRI$_DBU_FEATURE_USAGE         SYSAUX
WRI$_DBU_FEATURE_METADATA      SYSAUX
WRI$_DBU_HIGH_WATER_MARK       SYSAUX
WRI$_DBU_HWM_METADATA          SYSAUX
WRI$_DBU_USAGE_SAMPLE          SYSAUX
WRI$_DBU_CPU_USAGE             SYSAUX

TABLE_NAME                     TABLESPACE_NAME
------------------------------ ------------------------------
WRI$_DBU_CPU_USAGE_SAMPLE      SYSAUX
WRI$_ALERT_OUTSTANDING         SYSAUX
WRI$_ALERT_HISTORY             SYSAUX
WRI$_ALERT_THRESHOLD           SYSAUX
WRI$_ALERT_THRESHOLD_LOG       SYSTEM
KET$_AUTOTASK_STATUS           SYSAUX
KET$_CLIENT_CONFIG             SYSAUX
KET$_CLIENT_TASKS              SYSAUX
WRI$_TRACING_ENABLED           SYSAUX
WRI$_AGGREGATION_ENABLED       SYSAUX
WRI$_ADV_SQLT_BINDS            SYSAUX
WRI$_ADV_SQLT_STATISTICS       SYSAUX
WRI$_ADV_SQLT_RTN_PLAN         SYSAUX
WRI$_SQLSET_DEFINITIONS        SYSAUX
WRI$_SQLSET_REFERENCES         SYSAUX
WRI$_SQLSET_STATEMENTS         SYSAUX
WRI$_SQLSET_PLANS              SYSAUX
WRI$_SQLSET_STATISTICS         SYSAUX
WRI$_SQLSET_MASK               SYSAUX
WRI$_SQLSET_PLAN_LINES         SYSAUX
WRI$_SQLSET_BINDS              SYSAUX
WRI$_SQLSET_WORKSPACE          SYSTEM
WRI$_SQLSET_WORKSPACE_PLANS    SYSAUX
WRI$_SQLMON_USAGE              SYSTEM
WRH$_FILESTATXS_BL             SYSAUX
WRH$_TEMPSTATXS                SYSAUX
WRH$_DATAFILE                  SYSAUX
WRH$_TEMPFILE                  SYSAUX
WRH$_COMP_IOSTAT               SYSAUX
WRH$_IOSTAT_FUNCTION           SYSAUX
WRH$_IOSTAT_FUNCTION_NAME      SYSAUX
WRH$_IOSTAT_FILETYPE           SYSAUX
WRH$_IOSTAT_FILETYPE_NAME      SYSAUX
WRH$_IOSTAT_DETAIL             SYSAUX
WRH$_SQLSTAT_BL                SYSAUX
WRH$_SQLTEXT                   SYSAUX
WRI$_SQLTEXT_REFCOUNT          SYSAUX
WRH$_SQL_SUMMARY               SYSAUX
WRH$_SQL_PLAN                  SYSAUX
WRH$_SQL_BIND_METADATA         SYSAUX
WRH$_OPTIMIZER_ENV             SYSAUX
WRH$_SYSTEM_EVENT_BL           SYSAUX
WRH$_EVENT_NAME                SYSAUX
WRH$_LATCH_NAME                SYSAUX
WRH$_BG_EVENT_SUMMARY          SYSAUX
WRH$_WAITSTAT_BL               SYSAUX
WRH$_ENQUEUE_STAT              SYSAUX
WRH$_LATCH_BL                  SYSAUX
WRH$_LATCH_CHILDREN_BL         SYSAUX
WRH$_LATCH_PARENT_BL           SYSAUX
WRH$_LATCH_MISSES_SUMMARY_BL   SYSAUX
WRH$_EVENT_HISTOGRAM_BL        SYSAUX
WRH$_MUTEX_SLEEP               SYSAUX
WRH$_LIBRARYCACHE              SYSAUX
WRH$_DB_CACHE_ADVICE_BL        SYSAUX
WRH$_BUFFER_POOL_STATISTICS    SYSAUX
WRH$_ROWCACHE_SUMMARY_BL       SYSAUX

TABLE_NAME                     TABLESPACE_NAME
------------------------------ ------------------------------
WRH$_SGA                       SYSAUX
WRH$_SGASTAT_BL                SYSAUX
WRH$_PGASTAT                   SYSAUX
WRH$_PROCESS_MEMORY_SUMMARY    SYSAUX
WRH$_RESOURCE_LIMIT            SYSAUX
WRH$_SHARED_POOL_ADVICE        SYSAUX
WRH$_STREAMS_POOL_ADVICE       SYSAUX
WRH$_SQL_WORKAREA_HISTOGRAM    SYSAUX
WRH$_PGA_TARGET_ADVICE         SYSAUX
WRH$_SGA_TARGET_ADVICE         SYSAUX
WRH$_MEMORY_TARGET_ADVICE      SYSAUX
WRH$_MEMORY_RESIZE_OPS         SYSAUX
WRH$_INSTANCE_RECOVERY         SYSAUX
WRH$_JAVA_POOL_ADVICE          SYSAUX
WRH$_THREAD                    SYSAUX
WRH$_SYSSTAT_BL                SYSAUX
WRH$_SYS_TIME_MODEL_BL         SYSAUX
WRH$_OSSTAT_BL                 SYSAUX
WRH$_PARAMETER_BL              SYSAUX
WRH$_MVPARAMETER_BL            SYSAUX
WRH$_STAT_NAME                 SYSAUX
WRH$_OSSTAT_NAME               SYSAUX
WRH$_PARAMETER_NAME            SYSAUX
WRH$_PLAN_OPERATION_NAME       SYSAUX
WRH$_PLAN_OPTION_NAME          SYSAUX
WRH$_SQLCOMMAND_NAME           SYSAUX
WRH$_TOPLEVELCALL_NAME         SYSAUX
WRH$_UNDOSTAT                  SYSAUX
WRH$_SEG_STAT_BL               SYSAUX
WRH$_SEG_STAT_OBJ              SYSAUX
WRH$_METRIC_NAME               SYSAUX
WRH$_SYSMETRIC_HISTORY         SYSAUX
WRH$_SYSMETRIC_SUMMARY         SYSAUX
WRH$_SESSMETRIC_HISTORY        SYSAUX
WRH$_FILEMETRIC_HISTORY        SYSAUX
WRH$_WAITCLASSMETRIC_HISTORY   SYSAUX
WRH$_DLM_MISC_BL               SYSAUX
WRH$_CR_BLOCK_SERVER           SYSAUX
WRH$_CURRENT_BLOCK_SERVER      SYSAUX
WRH$_INST_CACHE_TRANSFER_BL    SYSAUX
WRH$_ACTIVE_SESSION_HISTORY_BL SYSAUX
WRH$_TABLESPACE_STAT_BL        SYSAUX
WRH$_LOG                       SYSAUX
WRH$_MTTR_TARGET_ADVICE        SYSAUX
WRH$_TABLESPACE                SYSAUX
WRH$_TABLESPACE_SPACE_USAGE    SYSAUX
WRH$_SERVICE_NAME              SYSAUX
WRH$_SERVICE_STAT_BL           SYSAUX
WRH$_SERVICE_WAIT_CLASS_BL     SYSAUX
WRH$_SESS_TIME_STATS           SYSAUX
WRH$_STREAMS_CAPTURE           SYSAUX
WRH$_STREAMS_APPLY_SUM         SYSAUX
WRH$_BUFFERED_QUEUES           SYSAUX
WRH$_BUFFERED_SUBSCRIBERS      SYSAUX
WRH$_PERSISTENT_QUEUES         SYSAUX
WRH$_PERSISTENT_SUBSCRIBERS    SYSAUX
WRH$_RULE_SET                  SYSAUX

TABLE_NAME                     TABLESPACE_NAME
------------------------------ ------------------------------
WRI$_SCH_CONTROL               SYSAUX
WRI$_SCH_VOTES                 SYSAUX
WRH$_RSRC_CONSUMER_GROUP       SYSAUX
WRH$_RSRC_PLAN                 SYSAUX
WRH$_CLUSTER_INTERCON          SYSAUX
WRH$_IC_DEVICE_STATS           SYSAUX
WRH$_IC_CLIENT_STATS           SYSAUX
WRH$_MEM_DYNAMIC_COMP          SYSAUX
WRH$_INTERCONNECT_PINGS_BL     SYSAUX
WRH$_DISPATCHER                SYSAUX
WRH$_SHARED_SERVER_SUMMARY     SYSAUX
WRH$_DYN_REMASTER_STATS        SYSAUX
WRH$_PERSISTENT_QMN_CACHE      SYSAUX
WRM$_WR_USAGE                  SYSAUX
WRM$_DATABASE_INSTANCE         SYSAUX
WRM$_SNAPSHOT                  SYSAUX
WRM$_SNAPSHOT_DETAILS          SYSAUX
WRM$_SNAP_ERROR                SYSAUX
WRM$_BASELINE                  SYSAUX
WRM$_COLORED_SQL               SYSAUX
WRM$_BASELINE_DETAILS          SYSAUX
WRM$_BASELINE_TEMPLATE         SYSAUX
WRM$_WR_CONTROL                SYSAUX
WRR$_FILTERS                   SYSAUX
WRR$_CAPTURES                  SYSTEM
WRR$_CAPTURE_STATS             SYSAUX
WRR$_CAPTURE_UC_GRAPH          SYSAUX
WRR$_REPLAYS                   SYSTEM
WRR$_REPLAY_STATS              SYSAUX
WRR$_REPLAY_DIVERGENCE         SYSAUX
WRR$_REPLAY_UC_GRAPH           SYSAUX
WRR$_CONNECTION_MAP            SYSAUX
WRR$_REPLAY_SQL_TEXT           SYSAUX
WRR$_REPLAY_SQL_BINDS          SYSAUX
WRR$_SEQUENCE_EXCEPTIONS       SYSAUX
WRR$_REPLAY_CALL_FILTER        SYSAUX
WRR$_REPLAY_FILTER_SET         SYSAUX
WRR$_REPLAY_DEP_GRAPH          SYSAUX
WRR$_REPLAY_COMMITS            SYSAUX
WRR$_REPLAY_REFERENCES         SYSAUX
WRI$_ADV_SQLW_SUM              SYSAUX
WRI$_ADV_SQLW_STMTS            SYSAUX
WRI$_ADV_SQLW_TABLES           SYSAUX
WRI$_ADV_SQLW_TABVOL           SYSAUX
WRI$_ADV_SQLW_COLVOL           SYSAUX
WRI$_ADV_SQLA_MAP              SYSAUX
WRI$_ADV_SQLA_SUM              SYSAUX
WRI$_ADV_SQLA_STMTS            SYSAUX
WRI$_ADV_SQLA_TABLES           SYSAUX
WRI$_ADV_SQLA_TABVOL           SYSAUX
WRI$_ADV_SQLA_COLVOL           SYSAUX
WRI$_ADV_SQLA_TMP              SYSAUX
WRI$_ADV_SQLA_FAKE_REG         SYSAUX
DBMS_PARALLEL_EXECUTE_TASK$    SYSTEM
DBMS_PARALLEL_EXECUTE_CHUNKS$  SYSTEM
DBFS$_STORES                   SYSTEM
DBFS$_MOUNTS                   SYSTEM

TABLE_NAME                     TABLESPACE_NAME
------------------------------ ------------------------------
DBFS$_STATS                    SYSAUX
DBFS_SFS$_TAB                  SYSTEM
DBFS_SFS$_VOL                  SYSTEM
DBFS_SFS$_SNAP                 SYSTEM
DBFS_SFS$_FS                   SYSTEM
DBFS_SFS$_FST                  SYSTEM
DBFS_SFS$_FSTP                 SYSTEM
DBFS_SFS$_FSTO                 SYSTEM
DBFS_HS$_FS                    SYSAUX
DBFS_HS$_PROPERTY              SYSAUX
DBFS_HS$_SFLOCATORTABLE        SYSAUX
DBFS_HS$_BACKUPFILETABLE       SYSAUX
DBFS_HS$_CONTENTFNMAPTBL       SYSAUX
DBFS_HS$_STORECOMMANDS         SYSAUX
DBFS_HS$_STOREID2POLICYCTX     SYSAUX
DBFS_HS$_STOREPROPERTIES       SYSAUX
DBFS_HS$_STOREIDTABLE          SYSAUX
SQL_TK_COLL_CHK$               SYSAUX
SQL_TK_ROW_CHK$                SYSAUX
SQL_TK_REF_CHK$                SYSAUX
SQL_TK_TAB_DESC$               SYSAUX
WRI$_OPTSTAT_SYNOPSIS_PARTGRP  SYSAUX
WRI$_OPTSTAT_SYNOPSIS_HEAD$    SYSAUX
STREAMS$_APPLY_SPILL_MESSAGES  SYSAUX
STREAMS$_INTERNAL_TRANSFORM    SYSTEM
DBMS_LOCK_ALLOCATED            SYSTEM
DBMS_ALERT_INFO                SYSTEM
SCHEDULER$_EVENT_QTAB          SYSTEM
AQ$_SCHEDULER$_EVENT_QTAB_S    SYSTEM
AQ$_SCHEDULER$_EVENT_QTAB_L    SYSTEM
SYS_IOT_OVER_12469             SYSTEM
SCHEDULER$_REMDB_JOBQTAB       SYSTEM
AQ$_SCHEDULER$_REMDB_JOBQTAB_S SYSTEM
AQ$_SCHEDULER$_REMDB_JOBQTAB_L SYSTEM
SYS_IOT_OVER_12504             SYSTEM
SCHEDULER_FILEWATCHER_QT       SYSTEM
AQ$_SCHEDULER_FILEWATCHER_QT_S SYSTEM
AQ$_SCHEDULER_FILEWATCHER_QT_L SYSTEM
SYS_IOT_OVER_12534             SYSTEM
ALERT_QT                       SYSAUX
AQ$_ALERT_QT_S                 SYSAUX
AQ$_ALERT_QT_L                 SYSAUX
SYS_IOT_OVER_12590             SYSAUX
HS$_FDS_CLASS                  SYSTEM
HS$_FDS_INST                   SYSTEM
HS$_BASE_CAPS                  SYSTEM
HS$_CLASS_CAPS                 SYSTEM
HS$_INST_CAPS                  SYSTEM
HS$_BASE_DD                    SYSTEM
HS$_CLASS_DD                   SYSTEM
HS$_INST_DD                    SYSTEM
HS$_CLASS_INIT                 SYSTEM
HS$_INST_INIT                  SYSTEM
HS$_FDS_CLASS_DATE             SYSTEM
HS_BULKLOAD_VIEW_OBJ           SYSTEM
HS$_PARALLEL_METADATA          SYSTEM
HS_PARTITION_COL_NAME          SYSTEM

TABLE_NAME                     TABLESPACE_NAME
------------------------------ ------------------------------
HS_PARTITION_COL_TYPE          SYSTEM
HS$_PARALLEL_PARTITION_DATA    SYSTEM
HS$_PARALLEL_HISTOGRAM_DATA    SYSTEM
HS$_PARALLEL_SAMPLE_DATA       SYSTEM
AQ$_MEM_MC                     SYSTEM
AQ$_AQ$_MEM_MC_S               SYSTEM
AQ$_AQ$_MEM_MC_L               SYSTEM
SYS_IOT_OVER_12764             SYSTEM
AQ_EVENT_TABLE                 SYSTEM
AQ_PROP_TABLE                  SYSTEM
AQ$_AQ_PROP_TABLE_S            SYSTEM
AQ$_AQ_PROP_TABLE_L            SYSTEM
SYS_IOT_OVER_12800             SYSTEM
KUPC$DATAPUMP_QUETAB           SYSTEM
AQ$_KUPC$DATAPUMP_QUETAB_S     SYSTEM
AQ$_KUPC$DATAPUMP_QUETAB_L     SYSTEM
SYS_IOT_OVER_12979             SYSTEM
SYS$SERVICE_METRICS_TAB        SYSAUX
AQ$_SYS$SERVICE_METRICS_TAB_S  SYSAUX
AQ$_SYS$SERVICE_METRICS_TAB_L  SYSAUX
SYS_IOT_OVER_13103             SYSAUX
XDB_INSTALLATION_TAB           SYSTEM
EPG$_AUTH                      SYSTEM
NET$_ACL                       SYSTEM
WALLET$_ACL                    SYSTEM
EMP                            SYSTEM
DESIGNATION_MASTERS            SYSTEM
DEPARTMENT_MASTERS             SYSTEM
STUDENT_MASTERS                SYSTEM
STUDENT_MARKS                  SYSTEM
STAFF_MASTERS                  SYSTEM
BOOK_MASTERS                   SYSTEM
BOOK_TRANSACTIONS              SYSTEM
ATEMPTAB$
SQLLOG$
SQLOBJ$
SQLOBJ$DATA
MAP_OBJECT
CLUSTER_DATABASES
CLUSTER_NODES
CLUSTER_INSTANCES
COL_GROUP_USAGE$
FINALHIST$
PSTUBTBL
WRI$_ADV_ASA_RECO_DATA
PLAN_TABLE$
CHNF$_QUERY_DELTAS
KU$NOEXP_TAB
KU$_LIST_FILTER_TEMP
KU$_LIST_FILTER_TEMP_2
WRI$_SQLSET_PLANS_TOCAP
WRI$_SQLSET_STS_TOPACK
WRH$_FILESTATXS
WRH$_SQLSTAT
WRH$_SYSTEM_EVENT
WRH$_WAITSTAT
WRH$_LATCH

TABLE_NAME                     TABLESPACE_NAME
------------------------------ ------------------------------
WRH$_LATCH_CHILDREN
WRH$_LATCH_PARENT
WRH$_LATCH_MISSES_SUMMARY
WRH$_EVENT_HISTOGRAM
WRH$_DB_CACHE_ADVICE
WRH$_ROWCACHE_SUMMARY
WRH$_SGASTAT
WRH$_SYSSTAT
WRH$_SYS_TIME_MODEL
WRH$_OSSTAT
WRH$_PARAMETER
WRH$_MVPARAMETER
WRH$_SEG_STAT
WRH$_DLM_MISC
WRH$_INST_CACHE_TRANSFER
WRH$_ACTIVE_SESSION_HISTORY
WRH$_TABLESPACE_STAT
WRH$_SERVICE_STAT
WRH$_SERVICE_WAIT_CLASS
WRH$_INTERCONNECT_PINGS
WRR$_REPLAY_SCN_ORDER
WRR$_REPLAY_SEQ_DATA
WRR$_REPLAY_DATA
WRR$_WORKLOAD_ATTRIBUTES
ODCI_SECOBJ$
ODCI_WARNINGS$
ODCI_PMO_ROWIDS$
TTS_TBS$
TTS_USR$
TTS_ERROR$
WRI$_OPTSTAT_SYNOPSIS$
STREAMS$_APPLY_SPILL_MSGS_PART
STREAMS$_COMPONENT_IN
STREAMS$_COMPONENT_LINK_IN
STREAMS$_COMPONENT_PROP_IN
STREAMS$_COMPONENT_STAT_IN
STREAMS$_COMPONENT_EVENT_IN
STREAMS$_LOCAL_FINDINGS_IN
STREAMS$_LOCAL_RECS_IN
STREAMS$_LOCAL_ACTIONS_IN
STREAMS$_COMPONENT_STAT_OUT
STREAMS$_PATH_STAT_OUT
STREAMS$_PATH_BOTTLENECK_OUT
AQ$_SCHEDULER$_EVENT_QTAB_T
AQ$_SCHEDULER$_EVENT_QTAB_H
AQ$_SCHEDULER$_EVENT_QTAB_I
AQ$_SCHEDULER$_REMDB_JOBQTAB_T
AQ$_SCHEDULER$_REMDB_JOBQTAB_H
AQ$_SCHEDULER$_REMDB_JOBQTAB_I
AQ$_SCHEDULER_FILEWATCHER_QT_T
AQ$_SCHEDULER_FILEWATCHER_QT_H
AQ$_SCHEDULER_FILEWATCHER_QT_I
AQ$_ALERT_QT_T
AQ$_ALERT_QT_H
AQ$_ALERT_QT_I
AQ$_AQ$_MEM_MC_T
AQ$_AQ$_MEM_MC_H

TABLE_NAME                     TABLESPACE_NAME
------------------------------ ------------------------------
AQ$_AQ$_MEM_MC_I
AQ$_AQ_PROP_TABLE_T
AQ$_AQ_PROP_TABLE_H
AQ$_AQ_PROP_TABLE_I
IMPDP_STATS
KU$_DATAPUMP_MASTER_11_2
KU$_DATAPUMP_MASTER_11_1_0_7
KU$_DATAPUMP_MASTER_11_1
KU$_DATAPUMP_MASTER_10_1
AQ$_KUPC$DATAPUMP_QUETAB_T
AQ$_KUPC$DATAPUMP_QUETAB_H
AQ$_KUPC$DATAPUMP_QUETAB_I
AQ$_SYS$SERVICE_METRICS_TAB_T
AQ$_SYS$SERVICE_METRICS_TAB_H
AQ$_SYS$SERVICE_METRICS_TAB_I
COUNTRIES_EXT
AQ$_SYS$SERVICE_METRICS_TAB_G
AQ$_KUPC$DATAPUMP_QUETAB_G
AQ$_AQ_PROP_TABLE_G
AQ$_AQ$_MEM_MC_G
AQ$_ALERT_QT_G
AQ$_SCHEDULER_FILEWATCHER_QT_G
AQ$_SCHEDULER$_REMDB_JOBQTAB_G
AQ$_SCHEDULER$_EVENT_QTAB_G
RECENT_RESOURCE_INCARNATIONS$
CHNF$_GROUP_FILTER_IOT
CHNF$_CLAUSES
RULE_SET_ROP$
RULE_SET_IOT$
RULE_SET_PR$
UTL_RECOMP_COMPILED            SYSTEM
UTL_RECOMP_SORTED              SYSTEM

944 rows selected.

SQL> DESC DATA
ERROR:
ORA-04043: object DATA does not exist


SQL> DESC DBA_DATA_FILES;
 Name                                                                                Null?    Type
 ----------------------------------------------------------------------------------- -------- --------------------------------------------------------
 FILE_NAME                                                                                    VARCHAR2(513)
 FILE_ID                                                                                      NUMBER
 TABLESPACE_NAME                                                                              VARCHAR2(30)
 BYTES                                                                                        NUMBER
 BLOCKS                                                                                       NUMBER
 STATUS                                                                                       VARCHAR2(9)
 RELATIVE_FNO                                                                                 NUMBER
 AUTOEXTENSIBLE                                                                               VARCHAR2(3)
 MAXBYTES                                                                                     NUMBER
 MAXBLOCKS                                                                                    NUMBER
 INCREMENT_BY                                                                                 NUMBER
 USER_BYTES                                                                                   NUMBER
 USER_BLOCKS                                                                                  NUMBER
 ONLINE_STATUS                                                                                VARCHAR2(7)

SQL> SELECT FILE_NAME,TABLESPACE_NAME FROM DBA_DATA_TABLE;
SELECT FILE_NAME,TABLESPACE_NAME FROM DBA_DATA_TABLE
                                      *
ERROR at line 1:
ORA-00942: table or view does not exist


SQL> SELECT FILE_NAME,TABLESPACE_NAME FROM DBA_DATA_TABLES;
SELECT FILE_NAME,TABLESPACE_NAME FROM DBA_DATA_TABLES
                                      *
ERROR at line 1:
ORA-00942: table or view does not exist


SQL> SELECT FILE_NAME,TABLESPACE_NAME FROM DBA_DATA_FILES;

FILE_NAME
------------------------------------------------------------------------------------------------------------------------------------------------------
TABLESPACE_NAME
------------------------------
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\USERS.DBF
USERS

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSAUX.DBF
SYSAUX

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\UNDOTBS1.DBF
UNDOTBS1

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSTEM.DBF
SYSTEM

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RAMYTBS1.DBF
USERDATA


SQL> CREATAE UNDO TABLESPACE RDBMS_UNDO DATAFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\UNDORAMY.DBF' SIZE 100;
SP2-0734: unknown command beginning "CREATAE UN..." - rest of line ignored.
SQL> CREATAE UNDO TABLESPACE RDBMS_UNDO DATAFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\UNDORAMY.DBF' SIZE 100M;
SP2-0734: unknown command beginning "CREATAE UN..." - rest of line ignored.
SQL> CREATE UNDO TABLESPACE RDBMS_UNDO DATAFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\UNDORAMY.DBF' SIZE 100M;

Tablespace created.

SQL> SELECT FILE_NAME,TABLESPACE_NAME FROM DBA_DATA_FILES;

FILE_NAME
------------------------------------------------------------------------------------------------------------------------------------------------------
TABLESPACE_NAME
------------------------------
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\USERS.DBF
USERS

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSAUX.DBF
SYSAUX

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\UNDOTBS1.DBF
UNDOTBS1

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSTEM.DBF
SYSTEM

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RAMYTBS1.DBF
USERDATA

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\UNDORAMY.DBF
RDBMS_UNDO


6 rows selected.

SQL> SHOW USER;
USER is "SYS"
SQL> CREATE TEMPORARY TABLESPACE RDBMS_TEMP TEMPFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\TEMPRAMY.DBF' SIZE 100M;

Tablespace created.

SQL> SELECT TABLESPACE_NAME FROM USER_TABLESPACES;

TABLESPACE_NAME
------------------------------
SYSTEM
SYSAUX
UNDOTBS1
TEMP
USERS
USERDATA
RDBMS_UNDO
RDBMS_TEMP

8 rows selected.

SQL> SELECT TABLESPACE_NAME,FILE_NAME FROM USER_TABLESPACES;
SELECT TABLESPACE_NAME,FILE_NAME FROM USER_TABLESPACES
                       *
ERROR at line 1:
ORA-00904: "FILE_NAME": invalid identifier


SQL> SELECT TABLESPACE_NAME,FILE_NAME FROM DBA_DATA_FILES;

TABLESPACE_NAME
------------------------------
FILE_NAME
------------------------------------------------------------------------------------------------------------------------------------------------------
USERS
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\USERS.DBF

SYSAUX
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSAUX.DBF

UNDOTBS1
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\UNDOTBS1.DBF

SYSTEM
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSTEM.DBF

USERDATA
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RAMYTBS1.DBF

RDBMS_UNDO
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\UNDORAMY.DBF


6 rows selected.

SQL> SELECT TABLESPACE_NAME,FILE_NAME FROM DBA_TEMP_FILES;

TABLESPACE_NAME
------------------------------
FILE_NAME
------------------------------------------------------------------------------------------------------------------------------------------------------
TEMP
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\TEMP.DBF

RDBMS_TEMP
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\TEMPRAMY.DBF


SQL> CREATE USER ABC IDENTIFIED BY ABC DEFAULT TABLESPACE USERDATA TEMPORARY TABLESPACE RDBMS_TEMP;
CREATE USER ABC IDENTIFIED BY ABC DEFAULT TABLESPACE USERDATA TEMPORARY TABLESPACE RDBMS_TEMP
            *
ERROR at line 1:
ORA-01920: user name 'ABC' conflicts with another user or role name


SQL> CREATE USER ABC1 IDENTIFIED BY ABC DEFAULT TABLESPACE USERDATA TEMPORARY TABLESPACE RDBMS_TEMP;

User created.

SQL> CONN ABC1/ABC
ERROR:
ORA-01045: user ABC1 lacks CREATE SESSION privilege; logon denied


Warning: You are no longer connected to ORACLE.
SQL> GRANT CONNECT,RESOURCE TO ABC1
  2  ;
SP2-0640: Not connected
SQL> GRANT CONNECT,RESOURCE TO ABC1;
SP2-0640: Not connected
SQL> grant connect,resource,create any view to abc1;
SP2-0640: Not connected
SQL> conn sys/root as sysdba
Connected.
SQL> grant connect,resource,create any view to abc1;

Grant succeeded.

SQL> conn abc1/abc
ERROR:
ORA-01017: invalid username/password; logon denied


Warning: You are no longer connected to ORACLE.
SQL> conn abc1/abc;
ERROR:
ORA-01017: invalid username/password; logon denied


SQL> conn ABC1/ABC;
Connected.
SQL> DESC USER_TABLESPACES;
 Name                                                                                Null?    Type
 ----------------------------------------------------------------------------------- -------- --------------------------------------------------------
 TABLESPACE_NAME                                                                     NOT NULL VARCHAR2(30)
 BLOCK_SIZE                                                                          NOT NULL NUMBER
 INITIAL_EXTENT                                                                               NUMBER
 NEXT_EXTENT                                                                                  NUMBER
 MIN_EXTENTS                                                                         NOT NULL NUMBER
 MAX_EXTENTS                                                                                  NUMBER
 MAX_SIZE                                                                                     NUMBER
 PCT_INCREASE                                                                                 NUMBER
 MIN_EXTLEN                                                                                   NUMBER
 STATUS                                                                                       VARCHAR2(9)
 CONTENTS                                                                                     VARCHAR2(9)
 LOGGING                                                                                      VARCHAR2(9)
 FORCE_LOGGING                                                                                VARCHAR2(3)
 EXTENT_MANAGEMENT                                                                            VARCHAR2(10)
 ALLOCATION_TYPE                                                                              VARCHAR2(9)
 SEGMENT_SPACE_MANAGEMENT                                                                     VARCHAR2(6)
 DEF_TAB_COMPRESSION                                                                          VARCHAR2(8)
 RETENTION                                                                                    VARCHAR2(11)
 BIGFILE                                                                                      VARCHAR2(3)
 PREDICATE_EVALUATION                                                                         VARCHAR2(7)
 ENCRYPTED                                                                                    VARCHAR2(3)
 COMPRESS_FOR                                                                                 VARCHAR2(12)

SQL> SELECT TABLESPACE_NAME FROM USER_TABLESPACES;

TABLESPACE_NAME
------------------------------
SYSTEM
SYSAUX
UNDOTBS1
TEMP
USERS
USERDATA
RDBMS_UNDO
RDBMS_TEMP

8 rows selected.

SQL> ALTER TABLESPACE USERDATA OFFLINE;
ALTER TABLESPACE USERDATA OFFLINE
*
ERROR at line 1:
ORA-01031: insufficient privileges


SQL> CONN SYS/ROOT AS SYSDBA;
ERROR:
ORA-01031: insufficient privileges


Warning: You are no longer connected to ORACLE.
SQL> conn sys/root as sysdba;
Connected.
SQL> ALTER TABLESPACE USERDATA OFFLINE;

Tablespace altered.

SQL> select online status;
select online status
       *
ERROR at line 1:
ORA-00936: missing expression


SQL> select online status from dba_data_files;
select online status from dba_data_files
       *
ERROR at line 1:
ORA-00936: missing expression


SQL> select online_status from dba_data_files;

ONLINE_
-------
ONLINE
ONLINE
ONLINE
SYSTEM
OFFLINE
ONLINE

6 rows selected.

SQL> ALTER TABLESPACE USERDATA OnLINE;

Tablespace altered.

SQL> select online_status from dba_data_files;

ONLINE_
-------
ONLINE
ONLINE
ONLINE
SYSTEM
ONLINE
ONLINE

6 rows selected.

SQL> alter tabalespace userdata read only;
alter tabalespace userdata read only
      *
ERROR at line 1:
ORA-00940: invalid ALTER command


SQL> alter tablespace userdata read only;

Tablespace altered.

SQL> desc dba_data_files;
 Name                                                                                Null?    Type
 ----------------------------------------------------------------------------------- -------- --------------------------------------------------------
 FILE_NAME                                                                                    VARCHAR2(513)
 FILE_ID                                                                                      NUMBER
 TABLESPACE_NAME                                                                              VARCHAR2(30)
 BYTES                                                                                        NUMBER
 BLOCKS                                                                                       NUMBER
 STATUS                                                                                       VARCHAR2(9)
 RELATIVE_FNO                                                                                 NUMBER
 AUTOEXTENSIBLE                                                                               VARCHAR2(3)
 MAXBYTES                                                                                     NUMBER
 MAXBLOCKS                                                                                    NUMBER
 INCREMENT_BY                                                                                 NUMBER
 USER_BYTES                                                                                   NUMBER
 USER_BLOCKS                                                                                  NUMBER
 ONLINE_STATUS                                                                                VARCHAR2(7)

SQL> select * from dba_data_files;

FILE_NAME
------------------------------------------------------------------------------------------------------------------------------------------------------
   FILE_ID TABLESPACE_NAME                     BYTES     BLOCKS STATUS    RELATIVE_FNO AUT   MAXBYTES  MAXBLOCKS INCREMENT_BY USER_BYTES USER_BLOCKS
---------- ------------------------------ ---------- ---------- --------- ------------ --- ---------- ---------- ------------ ---------- -----------
ONLINE_
-------
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\USERS.DBF
         4 USERS                           104857600      12800 AVAILABLE            4 YES 1.1811E+10    1441792         1280  103809024       12672
ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSAUX.DBF
         2 SYSAUX                          723517440      88320 AVAILABLE            2 YES 3.4360E+10    4194302         1280  722468864       88192
ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\UNDOTBS1.DBF
         3 UNDOTBS1                        398458880      48640 AVAILABLE            3 YES  524288000      64000          640  397410304       48512
ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSTEM.DBF
         1 SYSTEM                          387973120      47360 AVAILABLE            1 YES  629145600      76800         1280  386924544       47232
SYSTEM

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RAMYTBS1.DBF
         5 USERDATA                        104857600      12800 AVAILABLE            5 NO           0          0            0  103809024       12672
ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\UNDORAMY.DBF
         6 RDBMS_UNDO                      104857600      12800 AVAILABLE            6 NO           0          0            0  103809024       12672
ONLINE


6 rows selected.

SQL> select file_name,tablespace_name from dba_data_files;

FILE_NAME
------------------------------------------------------------------------------------------------------------------------------------------------------
TABLESPACE_NAME
------------------------------
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\USERS.DBF
USERS

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSAUX.DBF
SYSAUX

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\UNDOTBS1.DBF
UNDOTBS1

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSTEM.DBF
SYSTEM

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RAMYTBS1.DBF
USERDATA

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\UNDORAMY.DBF
RDBMS_UNDO


6 rows selected.

SQL> alter tablespace userdata offline;

Tablespace altered.

SQL> alter tablespace userdata online;

Tablespace altered.

SQL> alter tablespace rdbms_undo read write;
alter tablespace rdbms_undo read write
*
ERROR at line 1:
ORA-30021: Operation not allowed on undo tablespace


SQL> alter tablespace rdbms_undo read,write;
alter tablespace rdbms_undo read,write
                                *
ERROR at line 1:
ORA-02142: missing or invalid ALTER TABLESPACE option


SQL> alter tablespace userdata read write;

Tablespace altered.

SQL> alter tablespace userdata read only;

Tablespace altered.

SQL> drop tablespace userdata including content and datafile;
drop tablespace userdata including content and datafile
                                   *
ERROR at line 1:
ORA-01911: CONTENTS keyword expected


SQL> drop tablespace userdata including contents and datafile;
drop tablespace userdata including contents and datafile
                                                *
ERROR at line 1:
ORA-00905: missing keyword


SQL> drop tablespace userdata including contents and datafiles;

Tablespace dropped.

SQL> drop tablespace rdbms_undo including contents and datafiles;

Tablespace dropped.

SQL> desc dba_temp_files;
 Name                                                                                Null?    Type
 ----------------------------------------------------------------------------------- -------- --------------------------------------------------------
 FILE_NAME                                                                                    VARCHAR2(513)
 FILE_ID                                                                                      NUMBER
 TABLESPACE_NAME                                                                     NOT NULL VARCHAR2(30)
 BYTES                                                                                        NUMBER
 BLOCKS                                                                                       NUMBER
 STATUS                                                                                       VARCHAR2(7)
 RELATIVE_FNO                                                                                 NUMBER
 AUTOEXTENSIBLE                                                                               VARCHAR2(3)
 MAXBYTES                                                                                     NUMBER
 MAXBLOCKS                                                                                    NUMBER
 INCREMENT_BY                                                                                 NUMBER
 USER_BYTES                                                                                   NUMBER
 USER_BLOCKS                                                                                  NUMBER

SQL> select file_name from dba_temp_files;

FILE_NAME
------------------------------------------------------------------------------------------------------------------------------------------------------
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\TEMP.DBF
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\TEMPRAMY.DBF

SQL> select file_name,tablespace_name from dba_temp_files;

FILE_NAME
------------------------------------------------------------------------------------------------------------------------------------------------------
TABLESPACE_NAME
------------------------------
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\TEMP.DBF
TEMP

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\TEMPRAMY.DBF
RDBMS_TEMP


SQL> drop tablespace rdbms_temp from dba_temp_files;
drop tablespace rdbms_temp from dba_temp_files
                           *
ERROR at line 1:
ORA-02173: invalid option for DROP TABLESPACE


SQL> drop tablespace rdbms_temp including contents and datafiles;

Tablespace dropped.

SQL> drop tablespace temp including contents and datafiles;
drop tablespace temp including contents and datafiles
*
ERROR at line 1:
ORA-12906: cannot drop default temporary tablespace


SQL> desc dba_data_files;
 Name                                                                                Null?    Type
 ----------------------------------------------------------------------------------- -------- --------------------------------------------------------
 FILE_NAME                                                                                    VARCHAR2(513)
 FILE_ID                                                                                      NUMBER
 TABLESPACE_NAME                                                                              VARCHAR2(30)
 BYTES                                                                                        NUMBER
 BLOCKS                                                                                       NUMBER
 STATUS                                                                                       VARCHAR2(9)
 RELATIVE_FNO                                                                                 NUMBER
 AUTOEXTENSIBLE                                                                               VARCHAR2(3)
 MAXBYTES                                                                                     NUMBER
 MAXBLOCKS                                                                                    NUMBER
 INCREMENT_BY                                                                                 NUMBER
 USER_BYTES                                                                                   NUMBER
 USER_BLOCKS                                                                                  NUMBER
 ONLINE_STATUS                                                                                VARCHAR2(7)

SQL> select tablespace_name,substr(file_name,1,60), (bytes/1024)/1024 MB,status,autoextensible from dba_data_files;

TABLESPACE_NAME
------------------------------
SUBSTR(FILE_NAME,1,60)
------------------------------------------------------------------------------------------------------------------------------------------------------
        MB STATUS    AUT
---------- --------- ---
USERS
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\USERS.DBF
       100 AVAILABLE YES

SYSAUX
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSAUX.DBF
       690 AVAILABLE YES

UNDOTBS1
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\UNDOTBS1.DBF
       380 AVAILABLE YES

SYSTEM
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSTEM.DBF
       370 AVAILABLE YES


SQL> set pagesize 90
SQL> set linesize 180
SQL> select tablespace_name,substr(file_name,1,60), (bytes/1024)/1024 MB,status,autoextensible from dba_data_files;

TABLESPACE_NAME
------------------------------
SUBSTR(FILE_NAME,1,60)
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
        MB STATUS    AUT
---------- --------- ---
USERS
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\USERS.DBF
       100 AVAILABLE YES

SYSAUX
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSAUX.DBF
       690 AVAILABLE YES

UNDOTBS1
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\UNDOTBS1.DBF
       380 AVAILABLE YES

SYSTEM
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSTEM.DBF
       370 AVAILABLE YES


SQL> alter database datafile ''
  2
SQL> select file_name from dba_data_files;

FILE_NAME
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\USERS.DBF
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSAUX.DBF
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\UNDOTBS1.DBF
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSTEM.DBF

SQL> alter database datafile 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\USERS.DBF' size 200m;
alter database datafile 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\USERS.DBF' size 200m
                                                                      *
ERROR at line 1:
ORA-01916: keyword ONLINE, OFFLINE, RESIZE, AUTOEXTEND or END/DROP expected


SQL> alter tablespace users 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\USERS.DBF' size 200m;
alter tablespace users 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\USERS.DBF' size 200m
                       *
ERROR at line 1:
ORA-02142: missing or invalid ALTER TABLESPACE option


SQL> alter database datafile 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\USERS.DBF' resize 200m;

Database altered.

SQL> alter tablespace user_data 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\USER_daata.DBF' size 200m;
alter tablespace user_data 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\USER_daata.DBF' size 200m
                           *
ERROR at line 1:
ORA-02142: missing or invalid ALTER TABLESPACE option


SQL> alter tablespace user_data 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\ramy_daata.DBF' size 200m;
alter tablespace user_data 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\ramy_daata.DBF' size 200m
                           *
ERROR at line 1:
ORA-02142: missing or invalid ALTER TABLESPACE option


SQL> alter tablespace user_data add datafile'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\ramy_daata.DBF' size 200m;
alter tablespace user_data add datafile'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\ramy_daata.DBF' size 200m
*
ERROR at line 1:
ORA-00959: tablespace 'USER_DATA' does not exist


SQL> alter tablespace user_data add datafile 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\ramy_daata.DBF' size 200m;
alter tablespace user_data add datafile 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\ramy_daata.DBF' size 200m
*
ERROR at line 1:
ORA-00959: tablespace 'USER_DATA' does not exist


SQL> alter tablespace user_data add datafile 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\ramy_daata.DBF' size 200m;
alter tablespace user_data add datafile 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\ramy_daata.DBF' size 200m
*
ERROR at line 1:
ORA-00959: tablespace 'USER_DATA' does not exist


SQL> alter tablespace user_data add datafile 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\ramy_daata.DBF' size 200m;
alter tablespace user_data add datafile 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\ramy_daata.DBF' size 200m
*
ERROR at line 1:
ORA-00959: tablespace 'USER_DATA' does not exist


SQL>
SQL> create tablespace user_data datafile 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\ramy1.DBF' size 100m;

Tablespace created.

SQL> alter tablespace user_data add datafile 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\ramy_daata.DBF' size 200m;

Tablespace altered.

SQL> select tablespace_name from user_tablespaces;

TABLESPACE_NAME
------------------------------
SYSTEM
SYSAUX
UNDOTBS1
TEMP
USERS
USER_DATA

6 rows selected.

SQL> select file_name,tablespace_name from user_tablespaces;
select file_name,tablespace_name from user_tablespaces
       *
ERROR at line 1:
ORA-00904: "FILE_NAME": invalid identifier


SQL> select file_name,tablespace_name from dba_data_files;

FILE_NAME
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
TABLESPACE_NAME
------------------------------
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\USERS.DBF
USERS

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSAUX.DBF
SYSAUX

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\UNDOTBS1.DBF
UNDOTBS1

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSTEM.DBF
SYSTEM

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RAMY1.DBF
USER_DATA

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RAMY_DAATA.DBF
USER_DATA


6 rows selected.