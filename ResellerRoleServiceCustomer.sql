CREATE TABLE dbo."ResellerRoleServiceCustomer"
(	
    "ResellerRoleServiceCustomerId"    INTEGER		                         NOT NULL,
    "ResellerId"		       INTEGER			                 NOT NULL,
    "RoleId"			       INTEGER		                         NOT NULL,
    "CustomerServiceTypeId"	       INTEGER		                         NULL,
    "CustomerInclusionState"           SMALLINT	                                 NOT NULL,
    "CustomerId"		       INTEGER		                         NULL,
    "AuditId"			       UUID	                                 NULL,
    "AuditActionType"		       CHAR(2) COLLATE dbo.case_insensitive	 NOT NULL,
    "AuditSequenceNo"		       INTEGER GENERATED ALWAYS AS IDENTITY	 NOT NULL ,
    "LoginName"			       VARCHAR(256) COLLATE dbo.case_insensitive NULL,
    "HostName"			       VARCHAR(256) COLLATE dbo.case_insensitive NULL,
    "ActionTime"		       TIMESTAMP		                 NULL,
     CONSTRAINT "PK_ResellerRoleServiceCustomer" PRIMARY KEY 
     (
         "AuditSequenceNo" 
     )
);


CREATE UNIQUE INDEX IF NOT EXISTS "IX_ResellerRoleServiceCustomer_NC01" 
ON dbo."ResellerRoleServiceCustomer" 
    (
	 "AuditId" ASC NULLS FIRST
    );

GRANT  INSERT  ON dbo."ResellerRoleServiceCustomer"  TO PUBLIC;
