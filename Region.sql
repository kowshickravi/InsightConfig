CREATE TABLE IF NOT EXISTS dbo."Region"
(
    "RegionId"                  SMALLINT                                  NOT NULL,
    "RegionCode"                VARCHAR(10)  COLLATE dbo.case_insensitive NOT NULL,
    "Description"               VARCHAR(255) COLLATE dbo.case_insensitive NULL,
    "DateCreated"               TIMESTAMP                                 NOT NULL,
    "DateAmended"               TIMESTAMP                                 NOT NULL,
    "WhoAmended_nt_username"    VARCHAR(255) COLLATE dbo.case_insensitive NOT NULL,
    "WhoAmended_hostname"       VARCHAR(255) COLLATE dbo.case_insensitive NOT NULL,
    "AuditId"                   UUID                                      NULL,
    "AuditActionType"           CHAR(2)      COLLATE dbo.case_insensitive NOT NULL,
    "AuditSequenceNo"           INTEGER      GENERATED ALWAYS AS IDENTITY NOT NULL ,
    "LoginName"                 VARCHAR(256) COLLATE dbo.case_insensitive NULL,
    "HostName"                  VARCHAR(256) COLLATE dbo.case_insensitive NULL,
    "ActionTime"                TIMESTAMP                                 NULL,
    CONSTRAINT "PK_Region_CU01" PRIMARY KEY 
    ( 
	    "AuditSequenceNo"
    )
); 
GRANT INSERT ON dbo."Region" TO PUBLIC;