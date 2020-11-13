alter index sys.DBMS_LOCK_EXPIRATION_IND rebuild;

DROP INDEX SYS.DBMS_LOCK_EXPIRATION_IND;

CREATE INDEX SYS.DBMS_LOCK_EXPIRATION_IND ON SYS.DBMS_LOCK_ALLOCATED
(EXPIRATION)
LOGGING
TABLESPACE SYSTEM
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            NEXT             1M
            MINEXTENTS       1
            MAXEXTENTS       UNLIMITED
            PCTINCREASE      0
            FREELISTS        1
            FREELIST GROUPS  1
            BUFFER_POOL      DEFAULT
           );
