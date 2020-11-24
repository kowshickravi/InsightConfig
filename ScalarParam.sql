CREATE TABLE IF NOT EXISTS dbo."ScalarParamKeys"
(
    "ScalarParamKeyId"		SMALLINT		                  NOT NULL,
    "ScalarKey"			VARCHAR(25)  COLLATE dbo.case_insensitive NOT NULL,
    "CustomerServiceId"		INTEGER			                  NOT NULL,
    "Description"		VARCHAR(255) COLLATE dbo.case_insensitive NULL,
    "DateCreated"		TIMESTAMP			          NOT NULL,
    "DateAmended"		TIMESTAMP			          NOT NULL,
    "WhoAmended_nt_username"    VARCHAR(255) COLLATE dbo.case_insensitive NOT NULL,
    "WhoAmended_hostname"	VARCHAR(255) COLLATE dbo.case_insensitive NOT NULL,
    "AuditId"		        UUID		                          NULL,
    "AuditActionType"		CHAR(2)	     COLLATE dbo.case_insensitive NOT NULL,
    "AuditSequenceNo"		INTEGER      GENERATED ALWAYS AS IDENTITY NOT NULL ,
    "LoginName"			VARCHAR(256) COLLATE dbo.case_insensitive NULL,
    "HostName"			VARCHAR(256) COLLATE dbo.case_insensitive NULL,
    "ActionTime"		TIMESTAMP		                  NULL,
     CONSTRAINT "PK_ScalarParamKeys_CU01" PRIMARY KEY  
    (
			
			"AuditSequenceNo"
    )		
);


GRANT INSERT ON dbo."ScalarParamKeys" TO PUBLIC;