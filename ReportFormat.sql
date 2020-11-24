CREATE TABLE IF NOT EXISTS dbo."ReportFormat"
(	
    "FormatType"	     CHAR(2)      COLLATE dbo.case_insensitive NOT NULL,
    "FormatDescription"    VARCHAR(20)  COLLATE dbo.case_insensitive NOT NULL,
    "AuditId"		   UUID	                                     NULL,
    "AuditActionType"      CHAR(2)      COLLATE dbo.case_insensitive NOT NULL,
    "AuditSequenceNo"      INTEGER      GENERATED ALWAYS AS IDENTITY NOT NULL,
    "LoginName"		   VARCHAR(256) COLLATE dbo.case_insensitive NULL,
    "HostName"	           VARCHAR(256) COLLATE dbo.case_insensitive NULL,
    "ActionTime"	   TIMESTAMP		                     NULL,
     CONSTRAINT "PK_ReportFormat" PRIMARY KEY  
    (
	"AuditSequenceNo"
    )  
);

CREATE  UNIQUE INDEX IF NOT EXISTS  "IX_ReportFormat_NC01" ON dbo."ReportFormat"
    (
        "AuditId" ASC NULLS FIRST
    );

GRANT  INSERT  ON dbo."ReportFormat"  TO PUBLIC;
