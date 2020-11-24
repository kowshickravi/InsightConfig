CREATE TABLE IF NOT EXISTS dbo."Server"
(	
    "ServerId"	         INTEGER			           NOT NULL,
    "ServerName"	 VARCHAR(255) COLLATE dbo.case_insensitive NOT NULL,
    "DatabaseName"	 VARCHAR(255) COLLATE dbo.case_insensitive NOT NULL,
    "UserName"           VARCHAR(255) COLLATE dbo.case_insensitive NOT NULL,
    "Password"	         VARCHAR(255) COLLATE dbo.case_insensitive NOT NULL,
    "LoginTimeout"	 INTEGER			           NOT NULL,
    "OnLine"	         CHAR(1)      COLLATE dbo.case_insensitive NOT NULL,
    "ServerTypeId"	 INTEGER			           NOT NULL,
    "AuditId"	         UUID	                                   NULL,
    "AuditActionType"    CHAR(2)      COLLATE dbo.case_insensitive NOT NULL,
    "AuditSequenceNo"    INTEGER      GENERATED ALWAYS AS IDENTITY NOT NULL,
    "LoginName"	         VARCHAR(256) COLLATE dbo.case_insensitive NULL,
    "HostName"	         VARCHAR(256) COLLATE dbo.case_insensitive NULL,
    "ActionTime"	 TIMESTAMP	                           NULL,
    CONSTRAINT "PK_Server" PRIMARY KEY   
    (
	   "AuditSequenceNo"
    )  
);

CREATE UNIQUE INDEX IF NOT EXISTS "IX_Server_NC01" ON dbo."Server"
    (
	    "AuditId" ASC NULLS FIRST
    );

GRANT  INSERT  ON dbo."Server"  TO PUBLIC;
