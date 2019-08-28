SQL> CREATE TABLESPACE DATA01 DATAFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\datafile01.DBF' SIZE 500M EXTENT MANAGEMENT DICTIONARY DEFAULT STORAGE (initial 1M NEXT 1M PCTINCREASE 0);
CREATE TABLESPACE DATA01 DATAFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\datafile01.DBF' SIZE 500M EXTENT MANAGEMENT DICTIONARY DEFAULT STORAGE (initial 1M NEXT 1M PCTINCREASE 0)
*
ERROR at line 1:
ORA-12913: Cannot create dictionary managed tablespace


SQL> CREATE TABLESPACE DATA01 DATAFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\datafile01.DBF' SIZE 500M EXTENT MANAGEMENT DICTIONARY DEFAULT STORAGE;
CREATE TABLESPACE DATA01 DATAFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\datafile01.DBF' SIZE 500M EXTENT MANAGEMENT DICTIONARY DEFAULT STORAGE
                                                                                                                                          *
ERROR at line 1:
ORA-00906: missing left parenthesis


SQL> CREATE TABLESPACE DATA01 DATAFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\datafile01.DBF' SIZE 500M;

Tablespace created.

SQL> CREATE TABLESPACE DATA02 DATAFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\datafile02.DBF' SIZE 500M EXTENT MANAGEMENT LOCAL UNIFORM SIZE 100K;

Tablespace created.

SQL> CREATE TABLESPACE INDX01 DATAFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\indx01.DBF' SIZE 500M EXTENT MANAGEMENT LOCAL UNIFORM SIZE 4K AUTOEXTEND ON NEXT 500K MAXSIZE 2M;
CREATE TABLESPACE INDX01 DATAFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\indx01.DBF' SIZE 500M EXTENT MANAGEMENT LOCAL UNIFORM SIZE 4K AUTOEXTEND ON NEXT 500K MAXSIZE 2M
                                                                                                                                   *
ERROR at line 1:
ORA-02180: invalid option for CREATE TABLESPACE


SQL> CREATE TABLESPACE INDX01 DATAFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\indx01.DBF' SIZE 500M EXTENT MANAGEMENT LOCAL UNIFORM SIZE 4K AUTOEXTEND ON NEXT 500K MAXSIZE 2M;
CREATE TABLESPACE INDX01 DATAFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\indx01.DBF' SIZE 500M EXTENT MANAGEMENT LOCAL UNIFORM SIZE 4K AUTOEXTEND ON NEXT 500K MAXSIZE 2M
                                                                                                                                   *
ERROR at line 1:
ORA-02180: invalid option for CREATE TABLESPACE


SQL>
SQL>
SQL> CREATE TABLESPACE INDX01 DATAFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\indx01.DBF' SIZE 500M EXTENT MANAGEMENT LOCAL UNIFORM SIZE 4K;
CREATE TABLESPACE INDX01 DATAFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\indx01.DBF' SIZE 500M EXTENT MANAGEMENT LOCAL UNIFORM SIZE 4K
*
ERROR at line 1:
ORA-03249: Uniform size for auto segment space managed tablespace should have atleast 5 blocks


SQL> CREATE TABLESPACE INDX01 DATAFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\indx01.DBF' SIZE 500M EXTENT MANAGEMENT LOCAL UNIFORM SIZE 40K;

Tablespace created.

SQL> ALTER DATABASE DATAFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\indx01.DBF' AUTOEXTEND ON NEXT 500K MAXSIZE 2M;

Database altered.

SQL> 
SQL> 
SQL> CREATE TABLESPACE RONLY 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\ronly01.DBF' 100k;
CREATE TABLESPACE RONLY 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\ronly01.DBF' 100k
                        *
ERROR at line 1:
ORA-02180: invalid option for CREATE TABLESPACE 


SQL> CREATE TABLESPACE RONLY DATAFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\ronly01.DBF' 100k;
CREATE TABLESPACE RONLY DATAFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\ronly01.DBF' 100k
                                                                                 *
ERROR at line 1:
ORA-02180: invalid option for CREATE TABLESPACE 


SQL> CREATE TABLESPACE RONLY DATAFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\ronly01.DBF' SIZE 100k;

Tablespace created.

SQL> DESC DBA-DATA_FILES;
SP2-0565: Illegal identifier.
SQL> DESC DBA_DATA_FILES;
 Name                                                                                                  Null?    Type
 ----------------------------------------------------------------------------------------------------- -------- --------------------------------------------------------------------
 FILE_NAME                                                                                                      VARCHAR2(513)
 FILE_ID                                                                                                        NUMBER
 TABLESPACE_NAME                                                                                                VARCHAR2(30)
 BYTES                                                                                                          NUMBER
 BLOCKS                                                                                                         NUMBER
 STATUS                                                                                                         VARCHAR2(9)
 RELATIVE_FNO                                                                                                   NUMBER
 AUTOEXTENSIBLE                                                                                                 VARCHAR2(3)
 MAXBYTES                                                                                                       NUMBER
 MAXBLOCKS                                                                                                      NUMBER
 INCREMENT_BY                                                                                                   NUMBER
 USER_BYTES                                                                                                     NUMBER
 USER_BLOCKS                                                                                                    NUMBER
 ONLINE_STATUS                                                                                                  VARCHAR2(7)

SQL> SELECT FILE_NAME,BYTES,TABLESPACE_NAME FROM DBA_DATA_FILES;

FILE_NAME                                                                                                                                                                           
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
     BYTES TABLESPACE_NAME                                                                                                                                                          
---------- ------------------------------                                                                                                                                           
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\USERS.DBF                                                                                                                                         
 209715200 USERS                                                                                                                                                                    
                                                                                                                                                                                    
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSAUX.DBF                                                                                                                                        
 723517440 SYSAUX                                                                                                                                                                   
                                                                                                                                                                                    
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\UNDOTBS1.DBF                                                                                                                                      
 398458880 UNDOTBS1                                                                                                                                                                 
                                                                                                                                                                                    
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSTEM.DBF                                                                                                                                        
 387973120 SYSTEM                                                                                                                                                                   
                                                                                                                                                                                    
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RAMY1.DBF                                                                                                                                         
 104857600 USER_DATA                                                                                                                                                                
                                                                                                                                                                                    
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RAMY_DAATA.DBF                                                                                                                                    
 209715200 USER_DATA                                                                                                                                                                
                                                                                                                                                                                    
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\DATAFILE01.DBF                                                                                                                                    
 524288000 DATA01                                                                                                                                                                   
                                                                                                                                                                                    
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\DATAFILE02.DBF                                                                                                                                    
 524288000 DATA02                                                                                                                                                                   
                                                                                                                                                                                    
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\INDX01.DBF                                                                                                                                        
 524288000 INDX01                                                                                                                                                                   
                                                                                                                                                                                    
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RONLY01.DBF                                                                                                                                       
    106496 RONLY                                                                                                                                                                    
                                                                                                                                                                                    

10 rows selected.

SQL> spool off



SQL> SELECT * FROM DBA_DATA_FILES;

FILE_NAME
--------------------------------------------------------------------------------
   FILE_ID TABLESPACE_NAME                     BYTES     BLOCKS STATUS
---------- ------------------------------ ---------- ---------- ---------
RELATIVE_FNO AUT   MAXBYTES  MAXBLOCKS INCREMENT_BY USER_BYTES USER_BLOCKS
------------ --- ---------- ---------- ------------ ---------- -----------
ONLINE_
-------
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\USERS.DBF
         4 USERS                           209715200      25600 AVAILABLE
           4 YES 1.1811E+10    1441792         1280  208666624       25472
ONLINE


FILE_NAME
--------------------------------------------------------------------------------
   FILE_ID TABLESPACE_NAME                     BYTES     BLOCKS STATUS
---------- ------------------------------ ---------- ---------- ---------
RELATIVE_FNO AUT   MAXBYTES  MAXBLOCKS INCREMENT_BY USER_BYTES USER_BLOCKS
------------ --- ---------- ---------- ------------ ---------- -----------
ONLINE_
-------
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSAUX.DBF
         2 SYSAUX                          723517440      88320 AVAILABLE
           2 YES 3.4360E+10    4194302         1280  722468864       88192
ONLINE


FILE_NAME
--------------------------------------------------------------------------------
   FILE_ID TABLESPACE_NAME                     BYTES     BLOCKS STATUS
---------- ------------------------------ ---------- ---------- ---------
RELATIVE_FNO AUT   MAXBYTES  MAXBLOCKS INCREMENT_BY USER_BYTES USER_BLOCKS
------------ --- ---------- ---------- ------------ ---------- -----------
ONLINE_
-------
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\UNDOTBS1.DBF
         3 UNDOTBS1                        398458880      48640 AVAILABLE
           3 YES  524288000      64000          640  397410304       48512
ONLINE


FILE_NAME
--------------------------------------------------------------------------------
   FILE_ID TABLESPACE_NAME                     BYTES     BLOCKS STATUS
---------- ------------------------------ ---------- ---------- ---------
RELATIVE_FNO AUT   MAXBYTES  MAXBLOCKS INCREMENT_BY USER_BYTES USER_BLOCKS
------------ --- ---------- ---------- ------------ ---------- -----------
ONLINE_
-------
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSTEM.DBF
         1 SYSTEM                          387973120      47360 AVAILABLE
           1 YES  629145600      76800         1280  386924544       47232
SYSTEM


FILE_NAME
--------------------------------------------------------------------------------
   FILE_ID TABLESPACE_NAME                     BYTES     BLOCKS STATUS
---------- ------------------------------ ---------- ---------- ---------
RELATIVE_FNO AUT   MAXBYTES  MAXBLOCKS INCREMENT_BY USER_BYTES USER_BLOCKS
------------ --- ---------- ---------- ------------ ---------- -----------
ONLINE_
-------
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RAMY1.DBF
         5 USER_DATA                       104857600      12800 AVAILABLE
           5 NO           0          0            0  103809024       12672
ONLINE


FILE_NAME
--------------------------------------------------------------------------------
   FILE_ID TABLESPACE_NAME                     BYTES     BLOCKS STATUS
---------- ------------------------------ ---------- ---------- ---------
RELATIVE_FNO AUT   MAXBYTES  MAXBLOCKS INCREMENT_BY USER_BYTES USER_BLOCKS
------------ --- ---------- ---------- ------------ ---------- -----------
ONLINE_
-------
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RAMY_DAATA.DBF
         6 USER_DATA                       209715200      25600 AVAILABLE
           6 NO           0          0            0  208666624       25472
ONLINE


FILE_NAME
--------------------------------------------------------------------------------
   FILE_ID TABLESPACE_NAME                     BYTES     BLOCKS STATUS
---------- ------------------------------ ---------- ---------- ---------
RELATIVE_FNO AUT   MAXBYTES  MAXBLOCKS INCREMENT_BY USER_BYTES USER_BLOCKS
------------ --- ---------- ---------- ------------ ---------- -----------
ONLINE_
-------
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\DATAFILE01.DBF
         7 DATA01                          524288000      64000 AVAILABLE
           7 NO           0          0            0  523239424       63872
ONLINE


FILE_NAME
--------------------------------------------------------------------------------
   FILE_ID TABLESPACE_NAME                     BYTES     BLOCKS STATUS
---------- ------------------------------ ---------- ---------- ---------
RELATIVE_FNO AUT   MAXBYTES  MAXBLOCKS INCREMENT_BY USER_BYTES USER_BLOCKS
------------ --- ---------- ---------- ------------ ---------- -----------
ONLINE_
-------
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\DATAFILE02.DBF
         8 DATA02                          524288000      64000 AVAILABLE
           8 NO           0          0            0  524173312       63986
ONLINE


FILE_NAME
--------------------------------------------------------------------------------
   FILE_ID TABLESPACE_NAME                     BYTES     BLOCKS STATUS
---------- ------------------------------ ---------- ---------- ---------
RELATIVE_FNO AUT   MAXBYTES  MAXBLOCKS INCREMENT_BY USER_BYTES USER_BLOCKS
------------ --- ---------- ---------- ------------ ---------- -----------
ONLINE_
-------
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\INDX01.DBF
         9 INDX01                          524288000      64000 AVAILABLE
           9 YES  524288000      64000           63  524206080       63990
ONLINE


FILE_NAME
--------------------------------------------------------------------------------
   FILE_ID TABLESPACE_NAME                     BYTES     BLOCKS STATUS
---------- ------------------------------ ---------- ---------- ---------
RELATIVE_FNO AUT   MAXBYTES  MAXBLOCKS INCREMENT_BY USER_BYTES USER_BLOCKS
------------ --- ---------- ---------- ------------ ---------- -----------
ONLINE_
-------
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RONLY01.DBF
        10 RONLY                              106496         13 AVAILABLE
          10 NO           0          0            0      65536           8
ONLINE


10 rows selected.

SQL> SET PAGESIZE 90
SQL> SET LINESIZE 190
SQL> SELECT * FROM DBA_DATA_FILES;

FILE_NAME
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
   FILE_ID TABLESPACE_NAME                     BYTES     BLOCKS STATUS    RELATIVE_FNO AUT   MAXBYTES  MAXBLOCKS INCREMENT_BY USER_BYTES USER_BLOCKS ONLINE_
---------- ------------------------------ ---------- ---------- --------- ------------ --- ---------- ---------- ------------ ---------- ----------- -------
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\USERS.DBF
         4 USERS                           209715200      25600 AVAILABLE            4 YES 1.1811E+10    1441792        1280  208666624       25472 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSAUX.DBF
         2 SYSAUX                          723517440      88320 AVAILABLE            2 YES 3.4360E+10    4194302        1280  722468864       88192 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\UNDOTBS1.DBF
         3 UNDOTBS1                        398458880      48640 AVAILABLE            3 YES  524288000      64000         640  397410304       48512 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSTEM.DBF
         1 SYSTEM                          387973120      47360 AVAILABLE            1 YES  629145600      76800        1280  386924544       47232 SYSTEM

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RAMY1.DBF
         5 USER_DATA                       104857600      12800 AVAILABLE            5 NO           0          0           0  103809024       12672 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RAMY_DAATA.DBF
         6 USER_DATA                       209715200      25600 AVAILABLE            6 NO           0          0           0  208666624       25472 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\DATAFILE01.DBF
         7 DATA01                          524288000      64000 AVAILABLE            7 NO           0          0           0  523239424       63872 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\DATAFILE02.DBF
         8 DATA02                          524288000      64000 AVAILABLE            8 NO           0          0           0  524173312       63986 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\INDX01.DBF
         9 INDX01                          524288000      64000 AVAILABLE            9 YES  524288000      64000          63  524206080       63990 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RONLY01.DBF
        10 RONLY                              106496         13 AVAILABLE           10 NO           0          0           0                                              65536    8 ONLINE


10 rows selected.

SQL> SELECT FILE_NAME,TABLESPACE_NAME,USER_BYTES/1024 FROM DBA_DATA_FILES;

FILE_NAME
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
TABLESPACE_NAME                USER_BYTES/1024
------------------------------ ---------------
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\USERS.DBF
USERS                                   203776

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSAUX.DBF
SYSAUX                                  705536

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\UNDOTBS1.DBF
UNDOTBS1                                388096

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSTEM.DBF
SYSTEM                                  377856

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RAMY1.DBF
USER_DATA                               101376

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RAMY_DAATA.DBF
USER_DATA                               203776

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\DATAFILE01.DBF
DATA01                                  510976

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\DATAFILE02.DBF
DATA02                                  511888

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\INDX01.DBF
INDX01                                  511920

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RONLY01.DBF
RONLY                                       64


10 rows selected.

SQL> SELECT FILE_NAME,TABLESPACE_NAME,USER_BYTES/1024*1024 FROM DBA_DATA_FILES;

FILE_NAME
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
TABLESPACE_NAME                USER_BYTES/1024*1024
------------------------------ --------------------
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\USERS.DBF
USERS                                     208666624

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSAUX.DBF
SYSAUX                                    722468864

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\UNDOTBS1.DBF
UNDOTBS1                                  397410304

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSTEM.DBF
SYSTEM                                    386924544

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RAMY1.DBF
USER_DATA                                 103809024

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RAMY_DAATA.DBF
USER_DATA                                 208666624

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\DATAFILE01.DBF
DATA01                                    523239424

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\DATAFILE02.DBF
DATA02                                    524173312

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\INDX01.DBF
INDX01                                    524206080

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RONLY01.DBF
RONLY                                         65536


10 rows selected.

SQL> SELECT FILE_NAME,TABLESPACE_NAME,USER_BYTES/(1024*1024) FROM DBA_DATA_FILES;

FILE_NAME
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
TABLESPACE_NAME                USER_BYTES/(1024*1024)
------------------------------ ----------------------
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\USERS.DBF
USERS                                             199

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSAUX.DBF
SYSAUX                                            689

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\UNDOTBS1.DBF
UNDOTBS1                                          379

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSTEM.DBF
SYSTEM                                            369

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RAMY1.DBF
USER_DATA                                          99

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RAMY_DAATA.DBF
USER_DATA                                         199

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\DATAFILE01.DBF
DATA01                                            499

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\DATAFILE02.DBF
DATA02                                     499.890625

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\INDX01.DBF
INDX01                                     499.921875

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RONLY01.DBF
RONLY                                           .0625


10 rows selected.

SQL> SELECT FILE_NAME,TABLESPACE_NAME,(USER_BYTES/1024)/1024 FROM DBA_DATA_FILES;

FILE_NAME
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
TABLESPACE_NAME                (USER_BYTES/1024)/1024
------------------------------ ----------------------
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\USERS.DBF
USERS                                             199

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSAUX.DBF
SYSAUX                                            689

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\UNDOTBS1.DBF
UNDOTBS1                                          379

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSTEM.DBF
SYSTEM                                            369

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RAMY1.DBF
USER_DATA                                          99

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RAMY_DAATA.DBF
USER_DATA                                         199

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\DATAFILE01.DBF
DATA01                                            499

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\DATAFILE02.DBF
DATA02                                     499.890625

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\INDX01.DBF
INDX01                                     499.921875

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RONLY01.DBF
RONLY                                           .0625


10 rows selected.

SQL> SELECT FILE_NAME,TABLESPACE_NAME,(BYTES/1024)/1024 FROM DBA_DATA_FILES;

FILE_NAME
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
TABLESPACE_NAME                (BYTES/1024)/1024
------------------------------ -----------------
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\USERS.DBF
USERS                                        200

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSAUX.DBF
SYSAUX                                       690

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\UNDOTBS1.DBF
UNDOTBS1                                     380

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSTEM.DBF
SYSTEM                                       370

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RAMY1.DBF
USER_DATA                                    100

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RAMY_DAATA.DBF
USER_DATA                                    200

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\DATAFILE01.DBF
DATA01                                       500

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\DATAFILE02.DBF
DATA02                                       500

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\INDX01.DBF
INDX01                                       500

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RONLY01.DBF
RONLY                                   .1015625


10 rows selected.

SQL> ALTER DATABASE DATAFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\DATAFILE02.DBF' RESIZE 512500K;

Database altered.

SQL> SELECT FILE_NAME,TABLESPACE_NAME,(BYTES/1024)/1024 FROM DBA_DATA_FILES WHERE TABLESPACE_NAME='DATA02';

FILE_NAME
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
TABLESPACE_NAME                (BYTES/1024)/1024
------------------------------ -----------------
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\DATAFILE02.DBF
DATA02                                500.492188


SQL> SELECT * FROM DBA_DATA_FILES;

FILE_NAME
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
   FILE_ID TABLESPACE_NAME                     BYTES     BLOCKS STATUS    RELATIVE_FNO AUT   MAXBYTES  MAXBLOCKS INCREMENT_BY USER_BYTES USER_BLOCKS ONLINE_
---------- ------------------------------ ---------- ---------- --------- ------------ --- ---------- ---------- ------------ ---------- ----------- -------
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\USERS.DBF
         4 USERS                           209715200      25600 AVAILABLE            4 YES 1.1811E+10    1441792        1280  208666624       25472 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSAUX.DBF
         2 SYSAUX                          723517440      88320 AVAILABLE            2 YES 3.4360E+10    4194302        1280  722468864       88192 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\UNDOTBS1.DBF
         3 UNDOTBS1                        398458880      48640 AVAILABLE            3 YES  524288000      64000         640  397410304       48512 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSTEM.DBF
         1 SYSTEM                          387973120      47360 AVAILABLE            1 YES  629145600      76800        1280  386924544       47232 SYSTEM

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RAMY1.DBF
         5 USER_DATA                       104857600      12800 AVAILABLE            5 NO           0          0           0  103809024       12672 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RAMY_DAATA.DBF
         6 USER_DATA                       209715200      25600 AVAILABLE            6 NO           0          0           0  208666624       25472 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\DATAFILE01.DBF
         7 DATA01                          524288000      64000 AVAILABLE            7 NO           0          0           0  523239424       63872 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\DATAFILE02.DBF
         8 DATA02                          524804096      64063 AVAILABLE            8 NO           0          0           0  524705792       64051 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\INDX01.DBF
         9 INDX01                          524288000      64000 AVAILABLE            9 YES  524288000      64000          63  524206080       63990 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RONLY01.DBF
        10 RONLY                              106496         13 AVAILABLE           10 NO           0          0           0       65536           8 ONLINE


10 rows selected.

SQL>  ALTER TABLESPACE INDX01 RENAME DATAFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\INDX01.DBF' TO 'C:\ORACLEXE\APP\ORACLE\ORADATA\u06\INDX01.DBF';
 ALTER TABLESPACE INDX01 RENAME DATAFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\INDX01.DBF' TO 'C:\ORACLEXE\APP\ORACLE\ORADATA\u06\INDX01.DBF'
*
ERROR at line 1:
ORA-01525: error in renaming data files
ORA-01121: cannot rename database file 9 - file is in use or recovery
ORA-01110: data file 9: 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\INDX01.DBF'


SQL> ALTER TABLESPACE INDX01 OFFLINE;

Tablespace altered.

SQL> SELECT * FROM DBA_DATA_FILES;

FILE_NAME
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
   FILE_ID TABLESPACE_NAME                     BYTES     BLOCKS STATUS    RELATIVE_FNO AUT   MAXBYTES  MAXBLOCKS INCREMENT_BY USER_BYTES USER_BLOCKS ONLINE_
---------- ------------------------------ ---------- ---------- --------- ------------ --- ---------- ---------- ------------ ---------- ----------- -------
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\USERS.DBF
         4 USERS                           209715200      25600 AVAILABLE            4 YES 1.1811E+10    1441792        1280  208666624       25472 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSAUX.DBF
         2 SYSAUX                          723517440      88320 AVAILABLE            2 YES 3.4360E+10    4194302        1280  722468864       88192 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\UNDOTBS1.DBF
         3 UNDOTBS1                        398458880      48640 AVAILABLE            3 YES  524288000      64000         640  397410304       48512 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSTEM.DBF
         1 SYSTEM                          387973120      47360 AVAILABLE            1 YES  629145600      76800        1280  386924544       47232 SYSTEM

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RAMY1.DBF
         5 USER_DATA                       104857600      12800 AVAILABLE            5 NO           0          0           0  103809024       12672 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RAMY_DAATA.DBF
         6 USER_DATA                       209715200      25600 AVAILABLE            6 NO           0          0           0  208666624       25472 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\DATAFILE01.DBF
         7 DATA01                          524288000      64000 AVAILABLE            7 NO           0          0           0  523239424       63872 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\DATAFILE02.DBF
         8 DATA02                          524804096      64063 AVAILABLE            8 NO           0          0           0  524705792       64051 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\INDX01.DBF
         9 INDX01                                               AVAILABLE            9
             OFFLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RONLY01.DBF
        10 RONLY                              106496         13 AVAILABLE           10 NO           0          0           0                                              65536    8 ONLINE


10 rows selected.

SQL>  ALTER TABLESPACE INDX01 RENAME DATAFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\INDX01.DBF' TO 'C:\ORACLEXE\APP\ORACLE\ORADATA\u06\INDX01.DBF';
 ALTER TABLESPACE INDX01 RENAME DATAFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\INDX01.DBF' TO 'C:\ORACLEXE\APP\ORACLE\ORADATA\u06\INDX01.DBF'
*
ERROR at line 1:
ORA-01525: error in renaming data files
ORA-01141: error renaming data file 9 - new file 'C:\ORACLEXE\APP\ORACLE\ORADATA\u06\INDX01.DBF' not found
ORA-01110: data file 9: 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\INDX01.DBF'
ORA-27041: unable to open file
OSD-04002: unable to open file
O/S-Error: (OS 2) The system cannot find the file specified.


SQL>
SQL>  ALTER TABLESPACE INDX01 RENAME DATAFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\INDX01.DBF' TO 'C:\ORACLEXE\APP\ORACLE\ORADATA\u06\INDX01.DBF';

Tablespace altered.

SQL> ALTER TABLESPACE INDX01 ONLINE;

Tablespace altered.

SQL> SELECT * FROM DBA_DATA_FILES WHERE FILE_NAME ='INDX01';

no rows selected

SQL> SELECT * FROM DBA_DATA_FILES WHERE TABLESPACE_NAME ='INDX01';

FILE_NAME
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
   FILE_ID TABLESPACE_NAME                     BYTES     BLOCKS STATUS    RELATIVE_FNO AUT   MAXBYTES  MAXBLOCKS INCREMENT_BY USER_BYTES USER_BLOCKS ONLINE_
---------- ------------------------------ ---------- ---------- --------- ------------ --- ---------- ---------- ------------ ---------- ----------- -------
C:\ORACLEXE\APP\ORACLE\ORADATA\U06\INDX01.DBF
         9 INDX01                          524288000      64000 AVAILABLE            9 YES  524288000      64000          63  524206080       63990 ONLINE


SQL> CREATE TABLE TABLE1 (X NUMBER(2)) TABLESPACE RONLY;

Table created.

SQL> ALTER TABLESPACE RONLY READ ONLY;

Tablespace altered.

SQL> CREATE TABLE TABLE1 (Y NUMBER(2)) TABLESPACE RONLY;
CREATE TABLE TABLE1 (Y NUMBER(2)) TABLESPACE RONLY
             *
ERROR at line 1:
ORA-00955: name is already used by an existing object


SQL> CREATE TABLE TABLE2 (Y NUMBER(2)) TABLESPACE RONLY;
CREATE TABLE TABLE2 (Y NUMBER(2)) TABLESPACE RONLY
*
ERROR at line 1:
ORA-01647: tablespace 'RONLY' is read-only, cannot allocate space in it


SQL> DROP TABLE TABLE1;

Table dropped.

SQL> CREATE TABLE TABLE1 (X NUMBER(2)) TABLESPACE RONLY;
CREATE TABLE TABLE1 (X NUMBER(2)) TABLESPACE RONLY
*
ERROR at line 1:
ORA-01647: tablespace 'RONLY' is read-only, cannot allocate space in it


SQL> ALTER TABLESPACE RONLY READ WRITE;

Tablespace altered.

SQL> CREATE TABLE TABLE1 (X NUMBER(2)) TABLESPACE RONLY;

Table created.

SQL> CREATE TABLE TABLE2 (Y NUMBER(2)) TABLESPACE RONLY;
CREATE TABLE TABLE2 (Y NUMBER(2)) TABLESPACE RONLY
*
ERROR at line 1:
ORA-01658: unable to create INITIAL extent for segment in tablespace RONLY


SQL> DROP TABLESPACE RONLY INCLUDING CONTENTS AND FILES;
DROP TABLESPACE RONLY INCLUDING CONTENTS AND FILES
                                             *
ERROR at line 1:
ORA-00905: missing keyword


SQL> SELECT BYTES TABLESPACE_NAME FROM DBA_DATA_FILES;

TABLESPACE_NAME
---------------
      209715200
      723517440
      398458880
      387973120
      104857600
      209715200
      524288000
      524804096
      524288000
         106496

10 rows selected.

SQL> SELECT BYTE,TABLESPACE_NAME FROM DBA_DATA_FILES;
SELECT BYTE,TABLESPACE_NAME FROM DBA_DATA_FILES
       *
ERROR at line 1:
ORA-00904: "BYTE": invalid identifier


SQL> SELECT BYTES,TABLESPACE_NAME FROM DBA_DATA_FILES;

     BYTES TABLESPACE_NAME
---------- ------------------------------
 209715200 USERS
 723517440 SYSAUX
 398458880 UNDOTBS1
 387973120 SYSTEM
 104857600 USER_DATA
 209715200 USER_DATA
 524288000 DATA01
 524804096 DATA02
 524288000 INDX01
    106496 RONLY

10 rows selected.

SQL> ALTER TABLESPACE DATAFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RONLY01.DBF' RESIZE 500K;
ALTER TABLESPACE DATAFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RONLY01.DBF' RESIZE 500K
                          *
ERROR at line 1:
ORA-02142: missing or invalid ALTER TABLESPACE option


SQL> ALTER TABLESPACE DATAFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RONLY01.DBF' RESIZE 20M;
ALTER TABLESPACE DATAFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RONLY01.DBF' RESIZE 20M
                          *
ERROR at line 1:
ORA-02142: missing or invalid ALTER TABLESPACE option


SQL> ALTER TABLESPACE DATAFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RONLY01.DBF' RESIZE 20M;
ALTER TABLESPACE DATAFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RONLY01.DBF' RESIZE 20M
                          *
ERROR at line 1:
ORA-02142: missing or invalid ALTER TABLESPACE option


SQL> ALTER DATABASE  DATAFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RONLY01.DBF' RESIZE 20M;

Database altered.

SQL> CREATE TABLE TABLE2 (Y NUMBER(2)) TABLESPACE RONLY;

Table created.

SQL> CREATE TABLE TABL1 (X NUMBER(2)) TABLESPACE RONLY;

Table created.

SQL> DROP TABLESPACE RONLY INCLUDING CONTENTS AND DATAFILES;

Tablespace dropped.

SQL> CREATE TABLESPACE RONLY DATAFILE 'C:\ORACLEXE\APP\ORACLE\ORADATA\XE\ronly01.DBF' SIZE 100k;

Tablespace created.

SQL> SELECT * FROM DBA_DATA_FILES WHERE TABLESPACE_NAME='RONLY';

FILE_NAME
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
   FILE_ID TABLESPACE_NAME                     BYTES     BLOCKS STATUS    RELATIVE_FNO AUT   MAXBYTES  MAXBLOCKS INCREMENT_BY USER_BYTES USER_BLOCKS ONLINE_
---------- ------------------------------ ---------- ---------- --------- ------------ --- ---------- ---------- ------------ ---------- ----------- -------
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RONLY01.DBF
        10 RONLY                              106496         13 AVAILABLE           10 NO           0          0           0       65536           8 ONLINE


SQL> DROP TABLESPACE RONLY INCLUDING CONTENTS AND DATAFILES;

Tablespace dropped.

SQL> SELECT * FROM DBA_DATA_FILES WHERE TABLESPACE_NAME='RONLY';

no rows selected

SQL> set linesize 600
SQL> SELECT * FROM DBA_DATA_FILES WHERE TABLESPACE_NAME='RONLY';

no rows selected

SQL> SELECT * FROM DBA_DATA_FILEs;

FILE_NAME



     FILE_ID TABLESPACE_NAME                     BYTES     BLOCKS STATUS    RELATIVE_FNO
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- ---------- ------------------------------ ---------- ---------- --------- ------------AUT   MAXBYTES  MAXBLOCKS INCREMENT_BY USER_BYTES USER_BLOCKS ONLINE_
--- ---------- ---------- ------------ ---------- ----------- -------
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\USERS.DBF



           4 USERS                           209715200      25600 AVAILABLE            4
YES 1.1811E+10    1441792         1280  208666624       25472 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSAUX.DBF



           2 SYSAUX                          723517440      88320 AVAILABLE            2
YES 3.4360E+10    4194302         1280  722468864       88192 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\UNDOTBS1.DBF



           3 UNDOTBS1                        398458880      48640 AVAILABLE            3
YES  524288000      64000          640  397410304       48512 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSTEM.DBF



           1 SYSTEM                          387973120      47360 AVAILABLE            1
YES  629145600      76800         1280  386924544       47232 SYSTEM

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RAMY1.DBF



           5 USER_DATA                       104857600      12800 AVAILABLE            5
NO           0          0            0  103809024       12672 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RAMY_DAATA.DBF



           6 USER_DATA                       209715200      25600 AVAILABLE            6
NO           0          0            0  208666624       25472 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\DATAFILE01.DBF



           7 DATA01                          524288000      64000 AVAILABLE            7
NO           0          0            0  523239424       63872 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\DATAFILE02.DBF



           8 DATA02                          524804096      64063 AVAILABLE            8
NO           0          0            0  524705792       64051 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\U06\INDX01.DBF



           9 INDX01                          524288000      64000 AVAILABLE            9
YES  524288000      64000           63  524206080       63990 ONLINE


9 rows selected.

SQL> set pagesize 500
SQL> SELECT * FROM DBA_DATA_FILEs;

FILE_NAME


                                                                                                             FILE_ID TABLESPACE_NAME
         BYTES     BLOCKS STATUS    RELATIVE_FNO
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- ---------- ------------------------------ ---------- ---------- --------- ------------
AUT   MAXBYTES  MAXBLOCKS INCREMENT_BY USER_BYTES USER_BLOCKS ONLINE_
--- ---------- ---------- ------------ ---------- ----------- -------
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\USERS.DBF


                                                                                                                   4 USERS
             209715200      25600 AVAILABLE            4
YES 1.1811E+10    1441792         1280  208666624       25472 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSAUX.DBF


                                                                                                                   2 SYSAUX
             723517440      88320 AVAILABLE            2
YES 3.4360E+10    4194302         1280  722468864       88192 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\UNDOTBS1.DBF


                                                                                                                   3 UNDOTBS1
             398458880      48640 AVAILABLE            3
YES  524288000      64000          640  397410304       48512 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSTEM.DBF


                                                                                                                   1 SYSTEM
             387973120      47360 AVAILABLE            1
YES  629145600      76800         1280  386924544       47232 SYSTEM

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RAMY1.DBF


                                                                                                                   5 USER_DATA
             104857600      12800 AVAILABLE            5
NO           0          0            0  103809024       12672 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RAMY_DAATA.DBF


                                                                                                                   6 USER_DATA
             209715200      25600 AVAILABLE            6
NO           0          0            0  208666624       25472 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\DATAFILE01.DBF


                                                                                                                   7 DATA01
             524288000      64000 AVAILABLE            7
NO           0          0            0  523239424       63872 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\DATAFILE02.DBF


                                                                                                                   8 DATA02
             524804096      64063 AVAILABLE            8
NO           0          0            0  524705792       64051 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\U06\INDX01.DBF


                                                                                                                   9 INDX01
             524288000      64000 AVAILABLE            9
YES  524288000      64000           63  524206080       63990 ONLINE


9 rows selected.

SQL> set pagesize 600
SQL> set linesize 600
SQL> SELECT * FROM DBA_DATA_FILEs;

FILE_NAME


                                                                                                             FILE_ID TABLESPACE_NAME
         BYTES     BLOCKS STATUS    RELATIVE_FNO
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------- ---------- ------------------------------ ---------- ---------- --------- ------------
AUT   MAXBYTES  MAXBLOCKS INCREMENT_BY USER_BYTES USER_BLOCKS ONLINE_
--- ---------- ---------- ------------ ---------- ----------- -------
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\USERS.DBF


                                                                                                                   4 USERS
             209715200      25600 AVAILABLE            4
YES 1.1811E+10    1441792         1280  208666624       25472 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSAUX.DBF


                                                                                                                   2 SYSAUX
             723517440      88320 AVAILABLE            2
YES 3.4360E+10    4194302         1280  722468864       88192 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\UNDOTBS1.DBF


                                                                                                                   3 UNDOTBS1
             398458880      48640 AVAILABLE            3
YES  524288000      64000          640  397410304       48512 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSTEM.DBF


                                                                                                                   1 SYSTEM
             387973120      47360 AVAILABLE            1
YES  629145600      76800         1280  386924544       47232 SYSTEM

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RAMY1.DBF


                                                                                                                   5 USER_DATA
             104857600      12800 AVAILABLE            5
NO           0          0            0  103809024       12672 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RAMY_DAATA.DBF


                                                                                                                   6 USER_DATA
             209715200      25600 AVAILABLE            6
NO           0          0            0  208666624       25472 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\DATAFILE01.DBF


                                                                                                                   7 DATA01
             524288000      64000 AVAILABLE            7
NO           0          0            0  523239424       63872 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\DATAFILE02.DBF


                                                                                                                   8 DATA02
             524804096      64063 AVAILABLE            8
NO           0          0            0  524705792       64051 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\U06\INDX01.DBF


                                                                                                                   9 INDX01
             524288000      64000 AVAILABLE            9
YES  524288000      64000           63  524206080       63990 ONLINE


9 rows selected.

SQL> set linesize 400
SQL> SELECT * FROM DBA_DATA_FILEs;

FILE_NAME
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
   FILE_ID TABLESPACE_NAME                     BYTES     BLOCKS STATUS    RELATIVE_FNO AUT   MAXBYTES  MAXBLOCKS INCREMENT_BY USER_BYTES USER_BLOCKS ONLINE_
---------- ------------------------------ ---------- ---------- --------- ------------ --- ---------- ---------- ------------ ---------- ----------- -------
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\USERS.DBF
         4 USERS                           209715200      25600 AVAILABLE            4 YES 1.1811E+10    1441792        1280  208666624       25472 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSAUX.DBF
         2 SYSAUX                          723517440      88320 AVAILABLE            2 YES 3.4360E+10    4194302        1280  722468864       88192 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\UNDOTBS1.DBF
         3 UNDOTBS1                        398458880      48640 AVAILABLE            3 YES  524288000      64000         640  397410304       48512 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSTEM.DBF
         1 SYSTEM                          387973120      47360 AVAILABLE            1 YES  629145600      76800        1280  386924544       47232 SYSTEM

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RAMY1.DBF
         5 USER_DATA                       104857600      12800 AVAILABLE            5 NO           0          0           0  103809024       12672 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RAMY_DAATA.DBF
         6 USER_DATA                       209715200      25600 AVAILABLE            6 NO           0          0           0  208666624       25472 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\DATAFILE01.DBF
         7 DATA01                          524288000      64000 AVAILABLE            7 NO           0          0           0  523239424       63872 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\DATAFILE02.DBF
         8 DATA02                          524804096      64063 AVAILABLE            8 NO           0          0           0  524705792       64051 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\U06\INDX01.DBF
         9 INDX01                          524288000      64000 AVAILABLE            9 YES  524288000      64000          63  524206080       63990 ONLINE


9 rows selected.

SQL> set linesize 300
SQL> SELECT * FROM DBA_DATA_FILEs;

FILE_NAME
------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
   FILE_ID TABLESPACE_NAME                     BYTES     BLOCKS STATUS    RELATIVE_FNO AUT   MAXBYTES  MAXBLOCKS INCREMENT_BY USER_BYTES USER_BLOCKS ONLINE_
---------- ------------------------------ ---------- ---------- --------- ------------ --- ---------- ---------- ------------ ---------- ----------- -------
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\USERS.DBF
         4 USERS                           209715200      25600 AVAILABLE            4 YES 1.1811E+10    1441792        1280  208666624       25472 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSAUX.DBF
         2 SYSAUX                          723517440      88320 AVAILABLE            2 YES 3.4360E+10    4194302        1280  722468864       88192 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\UNDOTBS1.DBF
         3 UNDOTBS1                        398458880      48640 AVAILABLE            3 YES  524288000      64000         640  397410304       48512 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSTEM.DBF
         1 SYSTEM                          387973120      47360 AVAILABLE            1 YES  629145600      76800        1280  386924544       47232 SYSTEM

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RAMY1.DBF
         5 USER_DATA                       104857600      12800 AVAILABLE            5 NO           0          0           0  103809024       12672 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RAMY_DAATA.DBF
         6 USER_DATA                       209715200      25600 AVAILABLE            6 NO           0          0           0  208666624       25472 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\DATAFILE01.DBF
         7 DATA01                          524288000      64000 AVAILABLE            7 NO           0          0           0  523239424       63872 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\DATAFILE02.DBF
         8 DATA02                          524804096      64063 AVAILABLE            8 NO           0          0           0  524705792       64051 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\U06\INDX01.DBF
         9 INDX01                          524288000      64000 AVAILABLE            9 YES  524288000      64000          63  524206080       63990 ONLINE


9 rows selected.

SQL> set linesize 200
SQL> SELECT * FROM DBA_DATA_FILEs;

FILE_NAME
--------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
   FILE_ID TABLESPACE_NAME                     BYTES     BLOCKS STATUS    RELATIVE_FNO AUT   MAXBYTES  MAXBLOCKS INCREMENT_BY USER_BYTES USER_BLOCKS ONLINE_
---------- ------------------------------ ---------- ---------- --------- ------------ --- ---------- ---------- ------------ ---------- ----------- -------
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\USERS.DBF
         4 USERS                           209715200      25600 AVAILABLE            4 YES 1.1811E+10    1441792        1280  208666624       25472 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSAUX.DBF
         2 SYSAUX                          723517440      88320 AVAILABLE            2 YES 3.4360E+10    4194302        1280  722468864       88192 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\UNDOTBS1.DBF
         3 UNDOTBS1                        398458880      48640 AVAILABLE            3 YES  524288000      64000         640  397410304       48512 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSTEM.DBF
         1 SYSTEM                          387973120      47360 AVAILABLE            1 YES  629145600      76800        1280  386924544       47232 SYSTEM

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RAMY1.DBF
         5 USER_DATA                       104857600      12800 AVAILABLE            5 NO           0          0           0  103809024       12672 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RAMY_DAATA.DBF
         6 USER_DATA                       209715200      25600 AVAILABLE            6 NO           0          0           0  208666624       25472 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\DATAFILE01.DBF
         7 DATA01                          524288000      64000 AVAILABLE            7 NO           0          0           0  523239424       63872 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\DATAFILE02.DBF
         8 DATA02                          524804096      64063 AVAILABLE            8 NO           0          0           0  524705792       64051 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\U06\INDX01.DBF
         9 INDX01                          524288000      64000 AVAILABLE            9 YES  524288000      64000          63  524206080       63990 ONLINE


9 rows selected.

SQL> set linesize 100
SQL> SELECT * FROM DBA_DATA_FILEs;

FILE_NAME
----------------------------------------------------------------------------------------------------
   FILE_ID TABLESPACE_NAME                     BYTES     BLOCKS STATUS    RELATIVE_FNO AUT
---------- ------------------------------ ---------- ---------- --------- ------------ ---
  MAXBYTES  MAXBLOCKS INCREMENT_BY USER_BYTES USER_BLOCKS ONLINE_
---------- ---------- ------------ ---------- ----------- -------
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\USERS.DBF
         4 USERS                           209715200      25600 AVAILABLE            4 YES
1.1811E+10    1441792         1280  208666624       25472 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSAUX.DBF
         2 SYSAUX                          723517440      88320 AVAILABLE            2 YES
3.4360E+10    4194302         1280  722468864       88192 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\UNDOTBS1.DBF
         3 UNDOTBS1                        398458880      48640 AVAILABLE            3 YES
 524288000      64000          640  397410304       48512 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSTEM.DBF
         1 SYSTEM                          387973120      47360 AVAILABLE            1 YES
 629145600      76800         1280  386924544       47232 SYSTEM

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RAMY1.DBF
         5 USER_DATA                       104857600      12800 AVAILABLE            5 NO
         0          0            0  103809024       12672 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RAMY_DAATA.DBF
         6 USER_DATA                       209715200      25600 AVAILABLE            6 NO
         0          0            0  208666624       25472 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\DATAFILE01.DBF
         7 DATA01                          524288000      64000 AVAILABLE            7 NO
         0          0            0  523239424       63872 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\DATAFILE02.DBF
         8 DATA02                          524804096      64063 AVAILABLE            8 NO
         0          0            0  524705792       64051 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\U06\INDX01.DBF
         9 INDX01                          524288000      64000 AVAILABLE            9 YES
 524288000      64000           63  524206080       63990 ONLINE


9 rows selected.

SQL> set linesize 190
SQL> SELECT * FROM DBA_DATA_FILEs;

FILE_NAME
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
   FILE_ID TABLESPACE_NAME                     BYTES     BLOCKS STATUS    RELATIVE_FNO AUT   MAXBYTES  MAXBLOCKS INCREMENT_BY USER_BYTES USER_BLOCKS ONLINE_
---------- ------------------------------ ---------- ---------- --------- ------------ --- ---------- ---------- ------------ ---------- ----------- -------
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\USERS.DBF
         4 USERS                           209715200      25600 AVAILABLE            4 YES 1.1811E+10    1441792        1280  208666624       25472 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSAUX.DBF
         2 SYSAUX                          723517440      88320 AVAILABLE            2 YES 3.4360E+10    4194302        1280  722468864       88192 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\UNDOTBS1.DBF
         3 UNDOTBS1                        398458880      48640 AVAILABLE            3 YES  524288000      64000         640  397410304       48512 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSTEM.DBF
         1 SYSTEM                          387973120      47360 AVAILABLE            1 YES  629145600      76800        1280  386924544       47232 SYSTEM

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RAMY1.DBF
         5 USER_DATA                       104857600      12800 AVAILABLE            5 NO           0          0           0  103809024       12672 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RAMY_DAATA.DBF
         6 USER_DATA                       209715200      25600 AVAILABLE            6 NO           0          0           0  208666624       25472 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\DATAFILE01.DBF
         7 DATA01                          524288000      64000 AVAILABLE            7 NO           0          0           0  523239424       63872 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\DATAFILE02.DBF
         8 DATA02                          524804096      64063 AVAILABLE            8 NO           0          0           0  524705792       64051 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\U06\INDX01.DBF
         9 INDX01                          524288000      64000 AVAILABLE            9 YES  524288000      64000          63  524206080       63990 ONLINE


9 rows selected.

SQL> set pagesize 600
SQL> SELECT * FROM DBA_DATA_FILEs;

FILE_NAME
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
   FILE_ID TABLESPACE_NAME                     BYTES     BLOCKS STATUS    RELATIVE_FNO AUT   MAXBYTES  MAXBLOCKS INCREMENT_BY USER_BYTES USER_BLOCKS ONLINE_
---------- ------------------------------ ---------- ---------- --------- ------------ --- ---------- ---------- ------------ ---------- ----------- -------
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\USERS.DBF
         4 USERS                           209715200      25600 AVAILABLE            4 YES 1.1811E+10    1441792        1280  208666624       25472 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSAUX.DBF
         2 SYSAUX                          723517440      88320 AVAILABLE            2 YES 3.4360E+10    4194302        1280  722468864       88192 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\UNDOTBS1.DBF
         3 UNDOTBS1                        398458880      48640 AVAILABLE            3 YES  524288000      64000         640  397410304       48512 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSTEM.DBF
         1 SYSTEM                          387973120      47360 AVAILABLE            1 YES  629145600      76800        1280  386924544       47232 SYSTEM

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RAMY1.DBF
         5 USER_DATA                       104857600      12800 AVAILABLE            5 NO           0          0           0  103809024       12672 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RAMY_DAATA.DBF
         6 USER_DATA                       209715200      25600 AVAILABLE            6 NO           0          0           0  208666624       25472 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\DATAFILE01.DBF
         7 DATA01                          524288000      64000 AVAILABLE            7 NO           0          0           0  523239424       63872 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\XE\DATAFILE02.DBF
         8 DATA02                          524804096      64063 AVAILABLE            8 NO           0          0           0  524705792       64051 ONLINE

C:\ORACLEXE\APP\ORACLE\ORADATA\U06\INDX01.DBF
         9 INDX01                          524288000      64000 AVAILABLE            9 YES  524288000      64000          63  524206080       63990 ONLINE


9 rows selected.

SQL> ALTER SYSTEM SET DB_CREATE_FILE_DEST='C:\ORACLEXE\APP\ORACLE\ORADATA\XE\U06' SCOPE=MEMORY;
ALTER SYSTEM SET DB_CREATE_FILE_DEST='C:\ORACLEXE\APP\ORACLE\ORADATA\XE\U06' SCOPE=MEMORY
*
ERROR at line 1:
ORA-02097: parameter cannot be modified because specified value is invalid
ORA-01261: Parameter db_create_file_dest destination string cannot be translated
ORA-01263: Name given for file destination directory is invalid
OSD-04018: Unable to access the specified directory or device.
O/S-Error: (OS 2) The system cannot find the file specified.


SQL> ALTER SYSTEM SET DB_CREATE_FILE_DEST='C:\ORACLEXE\APP\ORACLE\ORADATA\XE\U05' SCOPE=MEMORY;
ALTER SYSTEM SET DB_CREATE_FILE_DEST='C:\ORACLEXE\APP\ORACLE\ORADATA\XE\U05' SCOPE=MEMORY
*
ERROR at line 1:
ORA-02097: parameter cannot be modified because specified value is invalid
ORA-01261: Parameter db_create_file_dest destination string cannot be translated
ORA-01263: Name given for file destination directory is invalid
OSD-04018: Unable to access the specified directory or device.
O/S-Error: (OS 2) The system cannot find the file specified.


SQL> ALTER SYSTEM SET DB_CREATE_FILE_DEST='C:\ORACLEXE\APP\ORACLE\ORADATA\XE\U05' SCOPE=MEMORY;
ALTER SYSTEM SET DB_CREATE_FILE_DEST='C:\ORACLEXE\APP\ORACLE\ORADATA\XE\U05' SCOPE=MEMORY
*
ERROR at line 1:
ORA-02097: parameter cannot be modified because specified value is invalid
ORA-01261: Parameter db_create_file_dest destination string cannot be translated
ORA-01263: Name given for file destination directory is invalid
OSD-04018: Unable to access the specified directory or device.
O/S-Error: (OS 2) The system cannot find the file specified.


SQL> ALTER SYSTEM SET DB_CREATE_FILE_DEST='C:\ORACLEXE\APP\ORACLE\ORADATA\u05' SCOPE=MEMORY;

System altered.

SQL> create tablespace data03 datafile size 5m;

Tablespace created.

SQL> select tablespace_name,file_name,bytes from dba_data_files;

TABLESPACE_NAME
------------------------------
FILE_NAME
----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
     BYTES
----------
USERS
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\USERS.DBF
 209715200

SYSAUX
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSAUX.DBF
 723517440

UNDOTBS1
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\UNDOTBS1.DBF
 398458880

SYSTEM
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\SYSTEM.DBF
 387973120

USER_DATA
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RAMY1.DBF
 104857600

USER_DATA
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\RAMY_DAATA.DBF
 209715200

DATA01
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\DATAFILE01.DBF
 524288000

DATA02
C:\ORACLEXE\APP\ORACLE\ORADATA\XE\DATAFILE02.DBF
 524804096

INDX01
C:\ORACLEXE\APP\ORACLE\ORADATA\U06\INDX01.DBF
 524288000

DATA03
C:\ORACLEXE\APP\ORACLE\ORADATA\U05\XE\DATAFILE\O1_MF_DATA03_GOQT68BK_.DBF
   5242880


10 rows selected.

SQL>

