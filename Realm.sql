CREATE TABLE IF NOT EXISTS dbo."Realm"
(
    "CustomerId"                INTEGER                                   NOT NULL,
    "RealmName"                 VARCHAR(255) COLLATE dbo.case_insensitive NOT NULL,
    "DateCreated"               TIMESTAMP                                 NOT NULL,
    "DateAmended"               TIMESTAMP                                 NOT NULL,
    "WhoAmended_NT_username"    VARCHAR(255) COLLATE dbo.case_insensitive NOT NULL,
    "WhoAmended_hostname"       VARCHAR(255) COLLATE dbo.case_insensitive NOT NULL,
    "AuditId"                   UUID                                      NULL,
    "AuditActionType"           CHAR(2)      COLLATE dbo.case_insensitive NOT NULL,
    "AuditSequenceNo"           INTEGER      GENERATED ALWAYS AS IDENTITY NOT NULL,
    "LoginName"                 VARCHAR(256) COLLATE dbo.case_insensitive NULL,
    "HostName"                  VARCHAR(256) COLLATE dbo.case_insensitive NULL,
    "ActionTime"                TIMESTAMP                                 NULL,
    CONSTRAINT "PK_Realm" PRIMARY KEY
    (
	   "AuditSequenceNo"
    )
);
CREATE INDEX IF NOT EXISTS "INDEX IX_Realm_NC01"
ON dbo."Realm"
    (
         "AuditId" ASC NULLS FIRST
    );
GRANT INSERT ON dbo."Realm" TO PUBLIC;