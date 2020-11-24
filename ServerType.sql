CREATE TABLE  IF NOT EXISTS dbo."ServerType"
(	
    "ServerTypeId"	 INTEGER				   NOT NULL,
    "Description"	 VARCHAR(255) COLLATE dbo.case_insensitive NOT NULL,
    "AuditId"		 UUID	                                   NULL,
    "AuditActionType"    CHAR(2)      COLLATE dbo.case_insensitive NOT NULL,
    "AuditSequenceNo"    INTEGER	  GENERATED ALWAYS AS IDENTITY NOT NULL,
    "LoginName"		 VARCHAR(256) COLLATE dbo.case_insensitive NULL,
    "HostName"		 VARCHAR(256) COLLATE dbo.case_insensitive NULL,
    "ActionTime"	 TIMESTAMP			           NULL,
    CONSTRAINT "PK_ServerType" PRIMARY KEY   
    (
	 "AuditSequenceNo"
    )  
);

CREATE UNIQUE INDEX IF NOT EXISTS "IX_ServerType_NC01" 
ON dbo."ServerType"
    (
	     "AuditId" ASC NULLS FIRST
    );

GRANT  INSERT  ON dbo."ServerType"  TO PUBLIC;
