CREATE TABLE IF NOT EXISTS  dbo."ReportTypeFormat"
(	
    "ReportTypeId"	 INTEGER				   NOT NULL,
    "ReportFormatType"	 CHAR(2)      COLLATE dbo.case_insensitive NOT NULL,
    "AuditId"		 UUID	                                   NULL,
    "AuditActionType"    CHAR(2)      COLLATE dbo.case_insensitive NOT NULL,
    "AuditSequenceNo"    INTEGER      GENERATED ALWAYS AS IDENTITY NOT NULL,
    "LoginName"	         VARCHAR(256) COLLATE dbo.case_insensitive NULL,
    "HostName"		 VARCHAR(256) COLLATE dbo.case_insensitive NULL,
    "ActionTime"	 TIMESTAMP			           NULL,
	CONSTRAINT "PK_ReportTypeFormat" PRIMARY KEY   
	(
		"AuditSequenceNo"
	)  
);

CREATE UNIQUE INDEX "IX_ReportTypeFormat_NC01" 
ON dbo."ReportTypeFormat"
  (
	   "AuditId" ASC NULLS FIRST
  );

GRANT  INSERT  ON dbo."ReportTypeFormat"  TO PUBLIC;
