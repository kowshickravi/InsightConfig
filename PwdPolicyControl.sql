CREATE TABLE IF NOT EXISTS dbo."PwdPolicyControl"
(
    "OwnerId"                   INTEGER                                   NOT NULL,
    "OwnerTypeId"               SMALLINT                                  NOT NULL,
    "UseDefault"                CHAR(1)     COLLATE dbo.case_insensitive  NOT NULL,
    "PwdPolicyLevel"            CHAR(1)     COLLATE dbo.case_insensitive  NOT NULL,
    "PwdPolicyId"               UUID                                      NOT NULL,
    "DateCreated"               TIMESTAMP                                 NOT NULL,
    "DateAmended"               TIMESTAMP                                 NOT NULL,
    "WhoAmended_NT_UserName"    VARCHAR(255) COLLATE dbo.case_insensitive NOT NULL,
    "WhoAmended_Hostname"       VARCHAR(255) COLLATE dbo.case_insensitive NOT NULL,
    "AuditId"                   UUID                                      NULL,
    "AuditActionType"           CHAR(2)      COLLATE dbo.case_insensitive NOT NULL,
    "AuditSequenceNo"           INTEGER      GENERATED ALWAYS AS IDENTITY NOT NULL ,
    "LoginName"                 VARCHAR(256) COLLATE dbo.case_insensitive NULL,
    "HostName"                  VARCHAR(256) COLLATE dbo.case_insensitive NULL,
    "ActionTime"                TIMESTAMP                                 NULL,
     CONSTRAINT "PK_PwdPolicyControl" PRIMARY KEY  
    (
	    "AuditSequenceNo"
    )
);
CREATE UNIQUE INDEX IF NOT EXISTS "INDEX IX_PwdPolicyControl_NC01"
ON dbo."PwdPolicyControl"
    (
	   "AuditId" ASC NULLS FIRST
    );
GRANT  INSERT  ON dbo."PwdPolicyControl" TO  PUBLIC;  