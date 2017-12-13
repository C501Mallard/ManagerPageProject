USE [master]
GO
/****** Object:  Database [FADB]    Script Date: 2017/12/14 上午 02:21:25 ******/
CREATE DATABASE [FADB]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'test1', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\test1.mdf' , SIZE = 11456KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'test1_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL13.MSSQLSERVER\MSSQL\DATA\test1_log.ldf' , SIZE = 8512KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [FADB] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [FADB].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [FADB] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [FADB] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [FADB] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [FADB] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [FADB] SET ARITHABORT OFF 
GO
ALTER DATABASE [FADB] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [FADB] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [FADB] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [FADB] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [FADB] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [FADB] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [FADB] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [FADB] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [FADB] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [FADB] SET  DISABLE_BROKER 
GO
ALTER DATABASE [FADB] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [FADB] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [FADB] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [FADB] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [FADB] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [FADB] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [FADB] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [FADB] SET RECOVERY FULL 
GO
ALTER DATABASE [FADB] SET  MULTI_USER 
GO
ALTER DATABASE [FADB] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [FADB] SET DB_CHAINING OFF 
GO
ALTER DATABASE [FADB] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [FADB] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [FADB] SET DELAYED_DURABILITY = DISABLED 
GO
EXEC sys.sp_db_vardecimal_storage_format N'FADB', N'ON'
GO
ALTER DATABASE [FADB] SET QUERY_STORE = OFF
GO
USE [FADB]
GO
ALTER DATABASE SCOPED CONFIGURATION SET LEGACY_CARDINALITY_ESTIMATION = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET LEGACY_CARDINALITY_ESTIMATION = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET MAXDOP = 0;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET MAXDOP = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET PARAMETER_SNIFFING = ON;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET PARAMETER_SNIFFING = PRIMARY;
GO
ALTER DATABASE SCOPED CONFIGURATION SET QUERY_OPTIMIZER_HOTFIXES = OFF;
GO
ALTER DATABASE SCOPED CONFIGURATION FOR SECONDARY SET QUERY_OPTIMIZER_HOTFIXES = PRIMARY;
GO
USE [FADB]
GO
/****** Object:  Table [dbo].[ClassingFA]    Script Date: 2017/12/14 上午 02:21:25 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ClassingFA](
	[ClassingFA_ID] [int] NOT NULL,
	[Class_ID] [real] NOT NULL,
	[ChtName] [nvarchar](500) NOT NULL,
	[EngName] [nvarchar](500) NOT NULL,
	[UsageRangeDosageLimit] [nvarchar](3000) NULL,
	[UsageLimit] [nvarchar](3000) NULL,
	[ClassingFASpec] [nvarchar](3000) NULL,
 CONSTRAINT [PK_ClassingFA] PRIMARY KEY CLUSTERED 
(
	[ClassingFA_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FA_Class]    Script Date: 2017/12/14 上午 02:21:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FA_Class](
	[Class_ID] [real] NOT NULL,
	[ClassName] [nvarchar](20) NOT NULL,
	[ClassDiscript] [nvarchar](max) NOT NULL,
 CONSTRAINT [PK_FA_Class] PRIMARY KEY CLUSTERED 
(
	[Class_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FA61]    Script Date: 2017/12/14 上午 02:21:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FA61](
	[ClassName] [nvarchar](100) NOT NULL,
	[ChtName] [nvarchar](500) NULL,
	[EngName] [nvarchar](500) NULL,
	[UsageRangeDosageLimit] [nvarchar](3000) NULL,
	[UsageLimit] [nvarchar](3000) NULL,
	[ClassingFASpec] [nvarchar](3000) NULL,
	[ClassDescript] [nvarchar](3000) NULL,
	[ClassingFA_ID] [nchar](4) NOT NULL,
	[Class_ID] [nchar](4) NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[FavoriteCFA]    Script Date: 2017/12/14 上午 02:21:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[FavoriteCFA](
	[UID] [nchar](30) NOT NULL,
	[ClassingFA_ID] [int] NOT NULL,
 CONSTRAINT [PK_FavoriteCFA] PRIMARY KEY CLUSTERED 
(
	[UID] ASC,
	[ClassingFA_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Group_Members]    Script Date: 2017/12/14 上午 02:21:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Group_Members](
	[UID] [nchar](30) NOT NULL,
	[GroupID] [int] NOT NULL,
 CONSTRAINT [PK_Group_Members] PRIMARY KEY CLUSTERED 
(
	[UID] ASC,
	[GroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[LookupFA]    Script Date: 2017/12/14 上午 02:21:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[LookupFA](
	[LFA_ID] [int] NOT NULL,
	[LFA_Lat] [real] NULL,
	[LFA_Long] [real] NULL,
	[LFA_DateTime] [datetime] NOT NULL,
	[UID] [nchar](30) NOT NULL,
	[ClassingFA_ID] [int] NOT NULL,
 CONSTRAINT [PK_LookupFA] PRIMARY KEY CLUSTERED 
(
	[LFA_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PushNotification]    Script Date: 2017/12/14 上午 02:21:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PushNotification](
	[PN_ID] [int] NOT NULL,
	[PN_Title] [nchar](20) NOT NULL,
	[PN_Content] [nchar](60) NOT NULL,
	[PN_DateTime] [datetime] NOT NULL,
	[GroupID] [int] NOT NULL,
 CONSTRAINT [PK_PushNotification] PRIMARY KEY CLUSTERED 
(
	[PN_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QuizBank]    Script Date: 2017/12/14 上午 02:21:26 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QuizBank](
	[Quiz_ID] [int] NOT NULL,
	[Qz_Solution] [varchar](4) NOT NULL,
	[Qz_Content] [nvarchar](500) NOT NULL,
	[Qz_Item1] [nvarchar](500) NOT NULL,
	[Qz_Item2] [nvarchar](500) NOT NULL,
	[Qz_Item3] [nvarchar](500) NOT NULL,
	[Qz_Item4] [nvarchar](500) NOT NULL,
 CONSTRAINT [PK_QuizBank] PRIMARY KEY CLUSTERED 
(
	[Quiz_ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[QzR_No]    Script Date: 2017/12/14 上午 02:21:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[QzR_No](
	[QzR_No] [int] NOT NULL,
	[QzR_DateTime] [datetime] NOT NULL,
	[QzR_Result] [char](1) NOT NULL,
	[Quiz_ID] [int] NOT NULL,
	[UID] [nchar](30) NOT NULL,
 CONSTRAINT [PK_QzR_No] PRIMARY KEY CLUSTERED 
(
	[QzR_No] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Disceases]    Script Date: 2017/12/14 上午 02:21:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Disceases](
	[Disceases] [nvarchar](20) NOT NULL,
	[UID] [nchar](30) NOT NULL,
 CONSTRAINT [PK_User_Disceases] PRIMARY KEY CLUSTERED 
(
	[Disceases] ASC,
	[UID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[User_Group]    Script Date: 2017/12/14 上午 02:21:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[User_Group](
	[GroupID] [int] NOT NULL,
	[GroupName] [nchar](16) NOT NULL,
 CONSTRAINT [PK_User_Group] PRIMARY KEY CLUSTERED 
(
	[GroupID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 2017/12/14 上午 02:21:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[UID] [nchar](28) NOT NULL,
	[AccountName] [nvarchar](50) NOT NULL,
	[Auth_Way] [varchar](20) NOT NULL,
	[Token] [nvarchar](200) NULL,
	[Gender] [char](1) NULL,
	[Weight] [int] NULL,
	[Birthday] [date] NULL,
	[JoinDate] [datetime] NOT NULL,
	[AdminGroup] [char](1) NOT NULL,
	[Enabled] [char](1) NOT NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[UID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_AdminGroup]  DEFAULT ('N') FOR [AdminGroup]
GO
ALTER TABLE [dbo].[Users] ADD  CONSTRAINT [DF_Users_Enabled]  DEFAULT ('Y') FOR [Enabled]
GO
/****** Object:  StoredProcedure [dbo].[table_query_FA]    Script Date: 2017/12/14 上午 02:21:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE proc [dbo].[table_query_FA]
	@ChName nvarchar(500),
	@EngName nvarchar(500),
	@ClassName nvarchar(500)
	--@table_class nvarchar(500)
	--@ClassName nvarchar(500),
	--@ChName nvarchar(500),
	--@EngName nvarchar(500),
	--@UsageRangeDosageLimit nvarchar(500),
	--@UsageLimit nvarchar(500),
	--@ClassingFASpec nvarchar(500),
	--@ClassDescript nvarchar(500)
as
begin
	--SELECT ChName,EngName FROM FA61 WHERE (ClassName=@ClassName AND ChName=@ChName  AND EngName=@EngName  AND UsageRangeDosageLimit=@UsageRangeDosageLimit
	-- AND  UsageLimit=@UsageLimit  AND ClassingFASpec=@ClassingFASpec  AND ClassDescript=@ClassDescript)

	--select ChName,EngName from FA61 where ClassName = @ClassName

	SELECT ChName,EngName FROM FA61 WHERE ClassName=@ClassName AND ChName=@ChName  AND EngName=@EngName 
end

--select 中文品名,英文品名,使用食品範圍及限量,使用限制,規格,類別說明 from 食品添加物資料集61 where 類別='(三) 抗氧化劑'
--select distinct 類別 from FA61 order by 類別  asc
--select 類別 from FA61
GO
/****** Object:  StoredProcedure [dbo].[新增原始食品添加物資料集]    Script Date: 2017/12/14 上午 02:21:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
-- db_id 資料庫名稱
--序號 char(5) primary key
CREATE proc [dbo].[新增原始食品添加物資料集]
as
begin
	
	if object_id('FA61', 'U') is null
		begin
			print '資料表不存在'
			
			--SET IDENTITY_INSERT  FA61 On
			create table FA61 (類別 nvarchar(100) null,中文品名 nvarchar(500) null,
			英文品名 nvarchar(500) null,使用食品範圍及限量 nvarchar(3000),使用限制 nvarchar(3000),
			規格 nvarchar(3000),類別說明  nvarchar(3000),id_num bigint IDENTITY(1,1))
			--SET IDENTITY_INSERT  FA61 Off
		end
	else
		begin
			print '資料表存在'
			DROP TABLE FA61

			create table FA61 (類別 nvarchar(100) null,中文品名 nvarchar(500) null,
			英文品名 nvarchar(500) null,使用食品範圍及限量 nvarchar(3000),使用限制 nvarchar(3000),
			規格 nvarchar(3000),類別說明  nvarchar(3000),id_num bigint IDENTITY(1,1))

			--declare	@c_class varchar(300),
			--		@c_C_name varchar(300),
			--		@c_E_name varchar(300),
			--		@c_range varchar(300),
			--		@c_limit varchar(300),
			--		@c_ulimit varchar(300),
			--		@c_classdis varchar(300),
			--		--@c_id_num bigint,
			--		@i int=1
				
			--	INSERT into  dbo.FA61(dbo.類別,dbo.中文品名,dbo.英文品名,dbo.使用食品範圍及限量,dbo.使用限制, dbo.規格, dbo.類別說明)
			--	VALUES('a','a','a','a','a','a','a')
				--VALUES(@c_class,@c_C_name,@c_E_name,@c_range,@c_limit,@c_ulimit,@c_classdis)
				
		end
end
--exec 新增原始食品添加物資料集
GO
/****** Object:  StoredProcedure [dbo].[新增題庫]    Script Date: 2017/12/14 上午 02:21:27 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create proc [dbo].[新增題庫]
as
begin
	
	if object_id('QuizBank', 'U') is null
		begin
			print '資料表不存在'
			
			--SET IDENTITY_INSERT  FA61 Ona
			create table QuizBank (Qz_Title nvarchar(500) not null,Qz_Item1 nvarchar(500) null,Qz_Item2 nvarchar(500) null,
			Qz_Item3 nvarchar(500) null,Qz_Item4 nvarchar(500) null,
			Qz_Solution varchar(4) not null,Qz_Desription  nvarchar(500) null,Qz_Content int null,Quiz_ID bigint IDENTITY(1,1) not null)
			--SET IDENTITY_INSERT  FA61 Off
		end
	else
		begin
			print '資料表存在'
			DROP TABLE QuizBank

			create table QuizBank (Qz_Title nvarchar(500) not null,Qz_Item1 nvarchar(500) null,Qz_Item2 nvarchar(500) null,
			Qz_Item3 nvarchar(500) null,Qz_Item4 nvarchar(500) null,
			Qz_Solution varchar(4) not null,Qz_Desription  nvarchar(500) null,Qz_Content int null,Quiz_ID bigint IDENTITY(1,1) not null)

			--declare	@c_class varchar(300),
			--		@c_C_name varchar(300),
			--		@c_E_name varchar(300),
			--		@c_range varchar(300),
			--		@c_limit varchar(300),
			--		@c_ulimit varchar(300),
			--		@c_classdis varchar(300),
			--		--@c_id_num bigint,
			--		@i int=1
				
			--	INSERT into  dbo.FA61(dbo.類別,dbo.中文品名,dbo.英文品名,dbo.使用食品範圍及限量,dbo.使用限制, dbo.規格, dbo.類別說明)
			--	VALUES('a','a','a','a','a','a','a')
				--VALUES(@c_class,@c_C_name,@c_E_name,@c_range,@c_limit,@c_ulimit,@c_classdis)
				
		end
end
--exec 新增原始食品添加物資料集
GO
USE [master]
GO
ALTER DATABASE [FADB] SET  READ_WRITE 
GO
