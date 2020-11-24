CREATE TABLE IF NOT EXISTS QueueDataSource
(
    "QueueDataSourceId"		INTEGER				          NOT NULL,
    "Description"		VARCHAR(255  COLLATE dbo.case_insensitive NOT NULL,
    "DateCreated"		TIMESTAMP			          NOT NULL,
    "DateAmended"		TIMESTAMP			          NOT NULL,
    "WhoAmended_NT_UserName"    VARCHAR(255) COLLATE dbo.case_insensitive NOT NULL,
    "WhoAmended_HostName"	VARCHAR(255) COLLATE dbo.case_insensitive NOT NULL,
    "AuditId"			UUID	                                  NULL,
    "AuditActionType"		CHAR(2)      COLLATE dbo.case_insensitive NOT NULL,
    "AuditSequenceNo"		INTEGER	     GENERATED ALWAYS AS IDENTITY NOT NULL,
    "LoginName"			VARCHAR(256) COLLATE dbo.case_insensitive NULL,
    "HostName"		        VARCHAR(256) COLLATE dbo.case_insensitive NULL,
    "ActionTime"		TIMESTAMP	                          NULL,
     CONSTRAINT "PK_QueueDataSource" PRIMARY KEY 
     (
	    "AuditSequenceNo"
     )
);
