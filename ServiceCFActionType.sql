CREATE TABLE IF NOT EXISTS  dbo."ServiceCFActionType"
(	
    "ActionType"	 VARCHAR(10)  COLLATE dbo.case_insensitive NOT NULL,
    "XMLSchemaElement"	 VARCHAR(255) COLLATE dbo.case_insensitive NOT NULL,
    "Description"	 VARCHAR(255) COLLATE dbo.case_insensitive NULL,
    "AuditId"		 UUID	                                   NULL,
    "AuditActionType"    CHAR(2) COLLATE dbo.case_insensitive      NOT NULL,
    "AuditSequenceNo"    INTEGER GENERATED ALWAYS AS IDENTITY      NOT NULL ,
    "LoginName"		 VARCHAR(256) COLLATE dbo.case_insensitive NULL,
    "HostName"		 VARCHAR(256) COLLATE dbo.case_insensitive NULL,
    "ActionTime"	 TIMESTAMP			           NULL,
    "ActionValue"	 INTEGER		                   NULL,
    "ActionCategory"	 VARCHAR(50) COLLATE dbo.case_insensitive  NULL,
     CONSTRAINT "PK_ServiceCFActionType" PRIMARY KEY   
     (
	  "AuditSequenceNo"
     )  
);

CREATE UNIQUE INDEX IF NOT EXISTS "IX_ServiceCFActionType_NC01" 
ON dbo."ServiceCFActionType"
   
     (
	    "AuditId" ASC NULLS FIRST
     );

GRANT  INSERT  ON dbo."ServiceCFActionType"  TO PUBLIC;


