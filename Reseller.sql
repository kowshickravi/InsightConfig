CREATE TABLE IF NOT EXISTS dbo."Reseller"
(	
    "CustomerId"	          INTEGER	                             NOT NULL,
    "BannerOnOutbound"		  CHAR(1)       COLLATE dbo.case_insensitive NOT NULL,
    "OutBoundBanner"		  VARCHAR(50)   COLLATE dbo.case_insensitive NOT NULL,
    "OutBoundBannerText"	  VARCHAR(1500) COLLATE dbo.case_insensitive NOT NULL,
    "OutboundOopsEmailAddress"    VARCHAR(255)  COLLATE dbo.case_insensitive NOT NULL,
    "BannerOnInbound"		  CHAR(1)       COLLATE dbo.case_insensitive NOT NULL,
    "InBoundBanner"		  VARCHAR(50)   COLLATE dbo.case_insensitive NOT NULL,
    "InBoundBannerText"		  VARCHAR(1500) COLLATE dbo.case_insensitive NOT NULL,
    "isTrial"			  CHAR(1)       COLLATE dbo.case_insensitive NOT NULL,
    "CheckUs_Email"		  TEXT		                             NULL,
    "DateCreated"		  TIMESTAMP		                     NOT NULL,     
    "DateAmended"		  TIMESTAMP		                     NOT NULL,   
    "DateDeleted"		  TIMESTAMP			             NULL,
    "WhoAmended_nt_username"      VARCHAR(255)  COLLATE dbo.case_insensitive NOT NULL,
    "WhoAmended_hostname"	  VARCHAR(255)  COLLATE dbo.case_insensitive NOT NULL,
    "AuditId"			  UUID	                                     NULL,
    "AuditActionType"		  CHAR(2)       COLLATE dbo.case_insensitive NOT NULL,
    "AuditSequenceNo"		  INTEGER       GENERATED ALWAYS AS IDENTITY NOT NULL,
    "LoginName"			  VARCHAR(256)  COLLATE dbo.case_insensitive NULL,
    "HostName"			  VARCHAR(256)  COLLATE dbo.case_insensitive NULL,
    "ActionTime"		  TIMESTAMP			             NULL,
	CONSTRAINT "PK_Reseller" PRIMARY KEY
	(
		"AuditSequenceNo"
	)  
);

CREATE UNIQUE INDEX "IX_Reseller_NC01"
ON dbo."Reseller"
   (
	"AuditId" ASC NULLS FIRST
   );
GRANT  INSERT  ON dbo."Reseller"  TO PUBLIC;
