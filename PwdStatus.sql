CREATE TABLE IF NOT EXISTS dbo."PwdStatus"
(
    "OwnerId"                   INTEGER                                   NOT NULL,
    "OwnerTypeId"               SMALLINT                                  NOT NULL,
    "ForcePwdReset"             VARCHAR(255) COLLATE dbo.case_insensitive NOT NULL,
    "DateCreated"               TIMESTAMP                                 NOT NULL,
    "DateAmended"               TIMESTAMP                                 NOT NULL,
    "WhoAmended_NT_Username"    VARCHAR(255) COLLATE dbo.case_insensitive NOT NULL,
    "WhoAmended_Hostname"       VARCHAR(255) COLLATE dbo.case_insensitive NOT NULL,
    "AuditId"                   UUID                                      NULL,
    "AuditActionType"           CHAR(2)      COLLATE dbo.case_insensitive NOT NULL,
    "AuditSequenceNo"           INTEGER      GENERATED ALWAYS AS IDENTITY NOT NULL,
    "LoginName"                 VARCHAR(256) COLLATE dbo.case_insensitive NOT NULL,
    "Hostname"                  VARCHAR(256) COLLATE dbo.case_insensitive NOT NULL,
    "ActionTime"                TIMESTAMP                                 NULL,
     CONSTRAINT "PK_PwdStatus" PRIMARY KEY
     (
        "AuditSequenceNo"
	 )
	
);
CREATE INDEX IF NOT EXISTS  "INDEX IX_PwdStatus_NC01" 
ON dbo."PwdStatus"
    (
        "AuditId" ASC NULLS FIRST
    );
GRANT INSERT ON dbo."PwdStatus" TO PUBLIC;
