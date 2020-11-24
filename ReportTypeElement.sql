CREATE TABLE IF NOT EXISTS  dbo."ReportTypeElement"
(	
    "ReportTypeId"	 INTEGER			           NOT NULL,
    "ElementId"		 INTEGER			           NOT NULL,
    "ElementName"	 VARCHAR(50)  COLLATE dbo.case_insensitive NOT NULL,
    "Mandatory"		 CHAR(1)      COLLATE dbo.case_insensitive NOT NULL,
    "UIVisible"		 CHAR(1)      COLLATE dbo.case_insensitive NOT NULL,
    "UIOrder"		 INTEGER			           NOT NULL,
    "AuditId"		 UUID	                                   NULL,
    "AuditActionType"    CHAR(2)      COLLATE dbo.case_insensitive NOT NULL,
    "AuditSequenceNo"    INTEGER      GENERATED ALWAYS AS IDENTITY NOT NULL ,
    "LoginName"		 VARCHAR(256) COLLATE dbo.case_insensitive NULL,
    "HostName"		 VARCHAR(256) COLLATE dbo.case_insensitive NULL,
    "ActionTime"	 IMESTAMP			   NULL,
    CONSTRAINT "PK_ReportTypeElement" PRIMARY KEY  
    (
	   "AuditSequenceNo"
    )  
);

CREATE UNIQUE INDEX IF NOT EXISTS "IX_ReportTypeElement_NC01" 
ON dbo."ReportTypeElement"
    (
	    "AuditId" ASC NULLS FIRST
    );

GRANT  INSERT  ON dbo."ReportTypeElement"  TO PUBLIC;
