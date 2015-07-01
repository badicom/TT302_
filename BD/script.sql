USE [v0071053_transportare_gps]
GO
/****** Object:  Table [dbo].[GPS_LOCATION]    Script Date: 07/01/2015 10:50:22 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GPS_LOCATION]') AND type in (N'U'))
DROP TABLE [dbo].[GPS_LOCATION]
GO
/****** Object:  Table [dbo].[GPS_LOCATION]    Script Date: 07/01/2015 10:50:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[GPS_LOCATION]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[GPS_LOCATION](
	[ID_GPS_LOCATION] [int] NOT NULL,
	[LAST_UPDATE] [date] NOT NULL,
	[LATITUDE] [decimal](10, 7) NOT NULL,
	[LONGITUDE] [decimal](10, 7) NOT NULL,
	[PHONE_NUMBER] [varchar](50) NOT NULL,
	[USER_NAME] [varchar](50) NOT NULL,
	[SESSION_ID] [varchar](50) NOT NULL,
	[SPEED] [int] NOT NULL,
	[DIRECTION] [int] NOT NULL,
	[DISTANCE] [decimal](10, 1) NOT NULL,
	[GPS_TIME] [date] NOT NULL,
	[LOCATION_METHOD] [varchar](50) NOT NULL,
	[ACCURACY] [int] NOT NULL,
	[EXTRA_INFO] [varchar](255) NOT NULL,
	[EVENT_TYPE] [varchar](50) NOT NULL,
 CONSTRAINT [PK_GPS_LOCATION] PRIMARY KEY CLUSTERED 
(
	[ID_GPS_LOCATION] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON, FILLFACTOR = 1) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
IF NOT EXISTS (SELECT * FROM sys.indexes WHERE object_id = OBJECT_ID(N'[dbo].[GPS_LOCATION]') AND name = N'IX_GPS_LOCATION')
CREATE NONCLUSTERED INDEX [IX_GPS_LOCATION] ON [dbo].[GPS_LOCATION] 
(
	[SESSION_ID] ASC,
	[PHONE_NUMBER] ASC,
	[USER_NAME] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, DROP_EXISTING = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
GO
