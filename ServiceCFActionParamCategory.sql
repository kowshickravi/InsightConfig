CREATE TABLE IF NOT EXISTS  dbo."ServiceCFActionParamCategory"
(	
    "ParamCategory"      VARCHAR(10)  COLLATE dbo.case_insensitive NOT NULL,
    "Description"	 VARCHAR(255) COLLATE dbo.case_insensitive NULL,
    "AuditId"		 UUID	                                   NULL,
    "AuditActionType"    CHAR(2)      COLLATE dbo.case_insensitive NOT NULL,
    "AuditSequenceNo"    INTEGER      GENERATED ALWAYS AS IDENTITY NOT NULL ,
    "LoginName"		 VARCHAR(256) COLLATE dbo.case_insensitive NULL,
    "HostName"		 VARCHAR(256) COLLATE dbo.case_insensitive NULL,
    "ActionTime"	 TIMESTAMP	                           NULL,
     CONSTRAINT "PK_ServiceCFActionParamCategory" PRIMARY KEY  
     (
	     "AuditSequenceNo"
     )  
);

CREATE UNIQUE INDEX IF NOT EXISTS "IX_ServiceCFActionParamCategory_NC01"
ON dbo."ServiceCFActionParamCategory"
    (
	    "AuditId" ASC NULLS FIRST
    );

GRANT  INSERT  ON dbo."ServiceCFActionParamCategory"  TO PUBLIC;


