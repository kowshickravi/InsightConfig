CREATE TABLE IF NOT EXISTS dbo."ServerCustomer"
(	
    "ServerId"		     INTEGER		                           NOT NULL,
    "CustomerId"	     INTEGER			                       NOT NULL,
    "RankOrder"		     INTEGER			                       NOT NULL,
    "AuditId"		     UUID	                                   NULL,
    "AuditActionType"    CHAR(2)      COLLATE dbo.case_insensitive NOT NULL,
    "AuditSequenceNo"    INTEGER      GENERATED ALWAYS AS IDENTITY NOT NULL,
    "LoginName"		     VARCHAR(256) COLLATE dbo.case_insensitive NULL,
    "HostName"		     VARCHAR(256) COLLATE dbo.case_insensitive NULL,
    "ActionTime"	     TIMESTAMP	        NULL,
     CONSTRAINT "PK_ServerCustomer" PRIMARY KEY  
     (
	      "AuditSequenceNo"
     )  
);

CREATE UNIQUE INDEX IF NOT EXISTS "IX_ServerCustomer_NC01" 
ON dbo."ServerCustomer"
    (
	     "AuditId" ASC NULLS FIRST
    );

GRANT  INSERT  ON dbo."ServerCustomer"  TO PUBLIC;
