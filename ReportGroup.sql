CREATE TABLE IF NOT EXISTS dbo."ReportGroup"
(	
    "ReportGroupId"	       INTEGER			                 NOT NULL,
    "ReportGroupName"	       VARCHAR(20) COLLATE dbo.case_insensitive  NOT NULL,
    "CustomerServiceTypeId"    INTEGER				         NOT NULL,
    "UIVisible"		       CHAR(1)     COLLATE dbo.case_insensitive  NOT NULL,
    "UIOrder"		       INTEGER			                 NOT NULL,
    "AuditId"		       UUID	                                 NULL,
    "AuditActionType"	       CHAR(2)      COLLATE dbo.case_insensitive NOT NULL,
    "AuditSequenceNo"	       INTEGER	    GENERATED ALWAYS AS IDENTITY NOT NULL ,
    "LoginName"		       VARCHAR(256) COLLATE dbo.case_insensitive NULL,
    "HostName"		       VARCHAR(256) COLLATE dbo.case_insensitive NULL,
    "ActionTime"	       TIMESTAMP			         NULL,
	CONSTRAINT "PK_ReportGroup" PRIMARY KEY   
	(
		"AuditSequenceNo"
	)  
);

CREATE  UNIQUE INDEX IF NOT EXISTS "IX_ReportGroup_NC01" 
ON dbo."ReportGroup"
(
	"AuditId"
);

GRANT  INSERT  ON dbo."ReportGroup"  TO PUBLIC;

