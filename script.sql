USE [master]
GO
/****** Object:  Database [ChildrenCare]    Script Date: 7/14/2022 11:21:12 PM ******/
CREATE DATABASE [ChildrenCare]
GO
ALTER DATABASE [ChildrenCare] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [ChildrenCare].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [ChildrenCare] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [ChildrenCare] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [ChildrenCare] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [ChildrenCare] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [ChildrenCare] SET ARITHABORT OFF 
GO
ALTER DATABASE [ChildrenCare] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [ChildrenCare] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [ChildrenCare] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [ChildrenCare] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [ChildrenCare] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [ChildrenCare] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [ChildrenCare] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [ChildrenCare] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [ChildrenCare] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [ChildrenCare] SET  ENABLE_BROKER 
GO
ALTER DATABASE [ChildrenCare] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [ChildrenCare] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [ChildrenCare] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [ChildrenCare] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [ChildrenCare] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [ChildrenCare] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [ChildrenCare] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [ChildrenCare] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [ChildrenCare] SET  MULTI_USER 
GO
ALTER DATABASE [ChildrenCare] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [ChildrenCare] SET DB_CHAINING OFF 
GO
ALTER DATABASE [ChildrenCare] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [ChildrenCare] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [ChildrenCare] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [ChildrenCare] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [ChildrenCare] SET QUERY_STORE = OFF
GO
USE [ChildrenCare]
GO
/****** Object:  FullTextCatalog [FullText_Service]    Script Date: 7/14/2022 11:21:13 PM ******/
CREATE FULLTEXT CATALOG [FullText_Service] WITH ACCENT_SENSITIVITY = OFF
GO
/****** Object:  FullTextCatalog [FullText_Slider]    Script Date: 7/14/2022 11:21:13 PM ******/
CREATE FULLTEXT CATALOG [FullText_Slider] WITH ACCENT_SENSITIVITY = OFF
GO
/****** Object:  FullTextCatalog [FullText_User]    Script Date: 7/14/2022 11:21:13 PM ******/
CREATE FULLTEXT CATALOG [FullText_User] WITH ACCENT_SENSITIVITY = OFF
GO
/****** Object:  FullTextCatalog [service_status]    Script Date: 7/14/2022 11:21:13 PM ******/
CREATE FULLTEXT CATALOG [service_status] WITH ACCENT_SENSITIVITY = OFF
AS DEFAULT
GO
/****** Object:  Table [dbo].[blogs]    Script Date: 7/14/2022 11:21:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[blogs](
	[blog_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[title] [nvarchar](255) NULL,
	[bi] [nvarchar](255) NULL,
	[blog_created_date] [date] NULL,
	[category_id] [int] NULL,
	[detail] [nvarchar](4000) NULL,
	[blog_image] [nvarchar](255) NULL,
	[view_able] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[blog_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[category]    Script Date: 7/14/2022 11:21:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[category](
	[category_id] [int] IDENTITY(1,1) NOT NULL,
	[category_name] [nvarchar](255) NULL,
	[icon] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[category_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[categoryMedicine]    Script Date: 7/14/2022 11:21:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[categoryMedicine](
	[cateMedicine_id] [int] IDENTITY(1,1) NOT NULL,
	[cateMedicine_name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[cateMedicine_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[children]    Script Date: 7/14/2022 11:21:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[children](
	[children_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NOT NULL,
	[children_name] [nvarchar](255) NULL,
	[children_gender] [bit] NULL,
	[children_age] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[children_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Comment]    Script Date: 7/14/2022 11:21:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Comment](
	[comment_id] [int] IDENTITY(1,1) NOT NULL,
	[comment_content] [nvarchar](500) NULL,
	[comment_date] [date] NULL,
	[comment_createByUser] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[comment_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[feedback]    Script Date: 7/14/2022 11:21:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[feedback](
	[feedback_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[reservation_id] [int] NULL,
	[content] [nvarchar](4000) NULL,
	[name] [nvarchar](255) NULL,
	[gender] [bit] NULL,
	[email] [nvarchar](255) NULL,
	[mobile] [nvarchar](255) NULL,
	[feedback_image] [nvarchar](255) NULL,
	[rate_Star] [int] NULL,
	[status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[feedback_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[medicine]    Script Date: 7/14/2022 11:21:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[medicine](
	[medicine_id] [int] IDENTITY(1,1) NOT NULL,
	[medicine_name] [nvarchar](255) NULL,
	[medicine_image] [nvarchar](255) NULL,
	[medicine_price] [float] NULL,
	[medicine_unit] [int] NULL,
	[medicine_quantity] [int] NULL,
	[medicine_detail] [nvarchar](4000) NULL,
	[medicine_cateId] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[medicine_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[medicine_unit]    Script Date: 7/14/2022 11:21:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[medicine_unit](
	[unit_id] [int] IDENTITY(1,1) NOT NULL,
	[unit_name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[unit_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[prescription_details]    Script Date: 7/14/2022 11:21:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[prescription_details](
	[prescription_details_id] [int] IDENTITY(1,1) NOT NULL,
	[medical_id] [int] NULL,
	[medicine_id] [int] NULL,
	[quantity] [int] NULL,
	[price] [float] NULL,
PRIMARY KEY CLUSTERED 
(
	[prescription_details_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reservation]    Script Date: 7/14/2022 11:21:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reservation](
	[reservation_id] [int] IDENTITY(1,1) NOT NULL,
	[user_id] [int] NULL,
	[total_price] [float] NULL,
	[note] [nvarchar](4000) NULL,
	[reservation_status] [int] NULL,
	[created_date] [date] NULL,
PRIMARY KEY CLUSTERED 
(
	[reservation_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reservation_detail]    Script Date: 7/14/2022 11:21:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reservation_detail](
	[reservation_detail_id] [int] IDENTITY(1,1) NOT NULL,
	[reservation_id] [int] NULL,
	[service_id] [int] NULL,
	[price] [float] NULL,
	[quantity] [int] NULL,
	[num_of_person] [int] NULL,
	[category_id] [int] NULL,
	[doctor_id] [int] NULL,
	[nurse_id] [int] NULL,
	[begin_time] [date] NULL,
	[slot] [int] NULL,
	[children_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[reservation_detail_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[reservation_medical]    Script Date: 7/14/2022 11:21:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[reservation_medical](
	[medical_id] [int] IDENTITY(1,1) NOT NULL,
	[reservation_detail_id] [int] NULL,
	[diagnosis] [nvarchar](1000) NULL,
	[created_date] [date] NULL,
	[doctor_id] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[medical_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[role]    Script Date: 7/14/2022 11:21:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[role](
	[role_id] [int] IDENTITY(1,1) NOT NULL,
	[role_name] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[role_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[service]    Script Date: 7/14/2022 11:21:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[service](
	[service_id] [int] IDENTITY(1,1) NOT NULL,
	[service_title] [nvarchar](255) NULL,
	[service_bi] [nvarchar](255) NULL,
	[service_created_date] [date] NULL,
	[category_id] [int] NULL,
	[service_price] [float] NULL,
	[service_discount] [float] NULL,
	[service_detail] [nvarchar](4000) NULL,
	[service_rateStar] [int] NULL,
	[service_vote] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[service_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[service_image]    Script Date: 7/14/2022 11:21:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[service_image](
	[image_id] [int] IDENTITY(1,1) NOT NULL,
	[service_id] [int] NULL,
	[image_link] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[image_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[service_status]    Script Date: 7/14/2022 11:21:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[service_status](
	[status_id] [int] NOT NULL,
	[service_id] [int] NOT NULL,
	[service_status] [bit] NULL,
 CONSTRAINT [PK_service_status] PRIMARY KEY CLUSTERED 
(
	[status_id] ASC,
	[service_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[setting]    Script Date: 7/14/2022 11:21:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[setting](
	[setting_id] [int] IDENTITY(1,1) NOT NULL,
	[setting_name] [nvarchar](255) NULL,
	[setting_value] [int] NULL,
	[setting_description] [nvarchar](1000) NULL,
	[setting_status] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[setting_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[slider]    Script Date: 7/14/2022 11:21:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[slider](
	[slider_id] [int] IDENTITY(1,1) NOT NULL,
	[slider_title] [nvarchar](255) NULL,
	[category_id] [int] NULL,
	[slider_status] [bit] NULL,
	[service_id] [int] NULL,
	[notes] [nvarchar](255) NULL,
 CONSTRAINT [PK__slider__5B89E395B97A0275] PRIMARY KEY CLUSTERED 
(
	[slider_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[slider_services]    Script Date: 7/14/2022 11:21:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[slider_services](
	[slider_id] [int] NOT NULL,
	[service_id] [int] NOT NULL,
 CONSTRAINT [PK_slider_services] PRIMARY KEY CLUSTERED 
(
	[slider_id] ASC,
	[service_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[user]    Script Date: 7/14/2022 11:21:13 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[user](
	[user_id] [int] IDENTITY(1,1) NOT NULL,
	[user_fullname] [nvarchar](255) NULL,
	[user_gender] [bit] NULL,
	[user_address] [nvarchar](255) NULL,
	[user_password] [varchar](255) NULL,
	[user_email] [varchar](255) NULL,
	[user_phone] [varchar](255) NULL,
	[role_id] [int] NULL,
	[user_status] [bit] NULL,
	[user_image] [nvarchar](255) NULL,
PRIMARY KEY CLUSTERED 
(
	[user_id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[blogs] ON 

INSERT [dbo].[blogs] ([blog_id], [user_id], [title], [bi], [blog_created_date], [category_id], [detail], [blog_image], [view_able]) VALUES (3, 40, N'Nowadays covid-19 broken eyes of children', N'Eyes health tips and care', CAST(N'2001-02-02' AS Date), 1, N'Medicine is the science[1] and practice[2] of caring for a patient, managing the diagnosis, prognosis, prevention, treatment, palliation of their injury or disease, and promoting their health. Medicine encompasses a variety of health care practices evolved to maintain and restore health by the prevention and treatment of illness. Contemporary medicine applies biomedical sciences, biomedical research, genetics, and medical technology to diagnose, treat, and prevent injury and disease, typically through pharmaceuticals or surgery, but also through therapies as diverse as psychotherapy, external splints and traction, medical devices, biologics, and ionizing radiation, amongst others.[3]', N'departments-5.jpg', 1)
INSERT [dbo].[blogs] ([blog_id], [user_id], [title], [bi], [blog_created_date], [category_id], [detail], [blog_image], [view_able]) VALUES (4, 40, N'The children care for eyes 2020', N'The Centers for Disease Control and Prevention recently recommended that children ages 5 through 11 receive a COVID-19 booster shot five months after completing the vaccine series. In this Q&A, Kristin O', CAST(N'2001-02-02' AS Date), 2, N'Medicine has been practiced since prehistoric times, during most of which it was an art (an area of skill and knowledge) frequently having connections to the religious and philosophical beliefs of local culture. For example, a medicine man would apply herbs and say prayers for healing, or an ancient philosopher and physician would apply bloodletting according to the theories of humorism. In recent centuries, since the advent of modern science, most medicine has become a combination of art and science (both basic and applied, under the umbrella of medical science). While stitching technique for sutures is an art learned through practice, the knowledge of what happens at the cellular and molecular level in the tissues being stitched arises through science.', N'date.jpg', 1)
INSERT [dbo].[blogs] ([blog_id], [user_id], [title], [bi], [blog_created_date], [category_id], [detail], [blog_image], [view_able]) VALUES (5, 40, N'Why You Should Get a COVID-19 Booster Shot for Your Child Age 5 to 11', N'Nurses Week Is Celebrated Across the Health System', CAST(N'2001-02-02' AS Date), 3, N'Medicine has been practiced since prehistoric times, during most of which it was an art (an area of skill and knowledge) frequently having connections to the religious and philosophical beliefs of local culture. For example, a medicine man would apply herbs and say prayers for healing, or an ancient philosopher and physician would apply bloodletting according to the theories of humorism. In recent centuries, since the advent of modern science, most medicine has become a combination of art and science (both basic and applied, under the umbrella of medical science). While stitching technique for sutures is an art learned through practice, the knowledge of what happens at the cellular and molecular level in the tissues being stitched arises through science.', N'departments-4.jpg', 1)
SET IDENTITY_INSERT [dbo].[blogs] OFF
GO
SET IDENTITY_INSERT [dbo].[category] ON 

INSERT [dbo].[category] ([category_id], [category_name], [icon]) VALUES (1, N'Eyes', N'bi bi-binoculars color-cyan')
INSERT [dbo].[category] ([category_id], [category_name], [icon]) VALUES (2, N'Mouth', N'bi bi-map color-orange')
INSERT [dbo].[category] ([category_id], [category_name], [icon]) VALUES (3, N'Foot', N'bi bi-easel color-blue')
INSERT [dbo].[category] ([category_id], [category_name], [icon]) VALUES (4, N'Nose', N'bi bi-command color-red')
INSERT [dbo].[category] ([category_id], [category_name], [icon]) VALUES (5, N'Lung', N'bi bi-brightness-high color-teal')
INSERT [dbo].[category] ([category_id], [category_name], [icon]) VALUES (6, N'Body', N'bi bi-box-seam color-indigo')
SET IDENTITY_INSERT [dbo].[category] OFF
GO
SET IDENTITY_INSERT [dbo].[categoryMedicine] ON 

INSERT [dbo].[categoryMedicine] ([cateMedicine_id], [cateMedicine_name]) VALUES (1, N'Antipyretic')
INSERT [dbo].[categoryMedicine] ([cateMedicine_id], [cateMedicine_name]) VALUES (2, N'
Analgesic')
INSERT [dbo].[categoryMedicine] ([cateMedicine_id], [cateMedicine_name]) VALUES (3, N'
Digestive')
INSERT [dbo].[categoryMedicine] ([cateMedicine_id], [cateMedicine_name]) VALUES (4, N'
Dermatology')
INSERT [dbo].[categoryMedicine] ([cateMedicine_id], [cateMedicine_name]) VALUES (5, N'
Insecticide')
SET IDENTITY_INSERT [dbo].[categoryMedicine] OFF
GO
SET IDENTITY_INSERT [dbo].[children] ON 

INSERT [dbo].[children] ([children_id], [user_id], [children_name], [children_gender], [children_age]) VALUES (1, 47, N'Nguyen Ngoc Khoa', 1, 8)
INSERT [dbo].[children] ([children_id], [user_id], [children_name], [children_gender], [children_age]) VALUES (3, 47, N'Kieu Minh Dat', 0, 9)
INSERT [dbo].[children] ([children_id], [user_id], [children_name], [children_gender], [children_age]) VALUES (4, 48, N'Trinh Xuan Truong', 0, 9)
INSERT [dbo].[children] ([children_id], [user_id], [children_name], [children_gender], [children_age]) VALUES (5, 48, N'Nguyen Ngoc Khoa', 1, 9)
INSERT [dbo].[children] ([children_id], [user_id], [children_name], [children_gender], [children_age]) VALUES (6, 47, N'kieu minh dat', 0, 3)
INSERT [dbo].[children] ([children_id], [user_id], [children_name], [children_gender], [children_age]) VALUES (7, 35, N'Nguyen Ngoc Khoa', 1, 5)
INSERT [dbo].[children] ([children_id], [user_id], [children_name], [children_gender], [children_age]) VALUES (8, 35, N'Nguyen Ngoc Hoan', 1, 1)
INSERT [dbo].[children] ([children_id], [user_id], [children_name], [children_gender], [children_age]) VALUES (10, 38, N'Trinh Xuan Truong', 0, 1)
INSERT [dbo].[children] ([children_id], [user_id], [children_name], [children_gender], [children_age]) VALUES (11, 38, N'Nguyen Ngoc Khoa', 0, 2)
INSERT [dbo].[children] ([children_id], [user_id], [children_name], [children_gender], [children_age]) VALUES (12, 33, N'Kieu Minh Dat', 1, 2)
INSERT [dbo].[children] ([children_id], [user_id], [children_name], [children_gender], [children_age]) VALUES (13, 33, N'Nguyen Ngoc Khoa', 1, 3)
SET IDENTITY_INSERT [dbo].[children] OFF
GO
SET IDENTITY_INSERT [dbo].[Comment] ON 

INSERT [dbo].[Comment] ([comment_id], [comment_content], [comment_date], [comment_createByUser]) VALUES (1, N'mot hai ba bon', CAST(N'2022-02-20' AS Date), N'truong')
INSERT [dbo].[Comment] ([comment_id], [comment_content], [comment_date], [comment_createByUser]) VALUES (2, N'bon nam sau', CAST(N'2022-03-04' AS Date), N'hoan')
INSERT [dbo].[Comment] ([comment_id], [comment_content], [comment_date], [comment_createByUser]) VALUES (3, N'bon nam sau', CAST(N'2022-03-04' AS Date), N'khoa')
INSERT [dbo].[Comment] ([comment_id], [comment_content], [comment_date], [comment_createByUser]) VALUES (7, N'bay tam chin', CAST(N'2022-03-04' AS Date), N'hao')
INSERT [dbo].[Comment] ([comment_id], [comment_content], [comment_date], [comment_createByUser]) VALUES (8, N'moi ma', CAST(N'2022-03-04' AS Date), N'dat')
SET IDENTITY_INSERT [dbo].[Comment] OFF
GO
SET IDENTITY_INSERT [dbo].[feedback] ON 

INSERT [dbo].[feedback] ([feedback_id], [user_id], [reservation_id], [content], [name], [gender], [email], [mobile], [feedback_image], [rate_Star], [status]) VALUES (1, 0, 0, N'
a great experience', N'Kieu Minh Dat', 0, N'khoannhe153156@fpt.edu.vn', N'0869510920', N'hulk.jpg', 4, 1)
INSERT [dbo].[feedback] ([feedback_id], [user_id], [reservation_id], [content], [name], [gender], [email], [mobile], [feedback_image], [rate_Star], [status]) VALUES (2, 0, 0, N'Amazing goob job', N'Nguyen Ngoc Khoa', 1, N'sktngochoan@gmail.com', N'0869510920', N'departments-3 - Copy - Copy.jpg', 3, 1)
INSERT [dbo].[feedback] ([feedback_id], [user_id], [reservation_id], [content], [name], [gender], [email], [mobile], [feedback_image], [rate_Star], [status]) VALUES (3, 0, 0, N'test 1', N'Nguyen Ngoc Hoan', 1, N'hoannnhe151308@fpt.edu.vn', N'0869510920', N'body1.jpg', 3, 1)
INSERT [dbo].[feedback] ([feedback_id], [user_id], [reservation_id], [content], [name], [gender], [email], [mobile], [feedback_image], [rate_Star], [status]) VALUES (4, 0, 0, N'test 2', N'Nguyen Ngoc Hoan', 1, N'hoannnhe151308@fpt.edu.vn', N'0869510920', N'eye1.jpg', 3, 1)
INSERT [dbo].[feedback] ([feedback_id], [user_id], [reservation_id], [content], [name], [gender], [email], [mobile], [feedback_image], [rate_Star], [status]) VALUES (5, 49, 33, N'213', N'Nguyen Ngoc Hoan', 1, N'hoannnhe151308@fpt.edu.vn', N'0869510920', N'eye2.jpg', 3, 0)
INSERT [dbo].[feedback] ([feedback_id], [user_id], [reservation_id], [content], [name], [gender], [email], [mobile], [feedback_image], [rate_Star], [status]) VALUES (6, 49, 33, N'dasdad', N'Nguyen Ngoc Hoan', 1, N'hoannnhe151308@fpt.edu.vn', N'0869510920', N'eye2.jpg', 3, 0)
INSERT [dbo].[feedback] ([feedback_id], [user_id], [reservation_id], [content], [name], [gender], [email], [mobile], [feedback_image], [rate_Star], [status]) VALUES (7, 53, 33, N'hÃ o khÃ´n', N'Nguyen Ngoc Hoan', 1, N'hoannnhe151308@fpt.edu.vn', N'0869510920', N'', 5, 0)
INSERT [dbo].[feedback] ([feedback_id], [user_id], [reservation_id], [content], [name], [gender], [email], [mobile], [feedback_image], [rate_Star], [status]) VALUES (8, 55, 33, N'tetstdahj', N'Nguyen Ngoc Hoan', 1, N'hoannnhe151308@fpt.edu.vn', N'0869510920', N'departments-3.jpg', 4, 0)
SET IDENTITY_INSERT [dbo].[feedback] OFF
GO
SET IDENTITY_INSERT [dbo].[medicine] ON 

INSERT [dbo].[medicine] ([medicine_id], [medicine_name], [medicine_image], [medicine_price], [medicine_unit], [medicine_quantity], [medicine_detail], [medicine_cateId]) VALUES (1, N'Acetaminophen Suppositories', N'AcetaminophenSuppositories.jpg', 100, 1, 993, N'Pain Reliever and Fever Reducer For Children', 2)
INSERT [dbo].[medicine] ([medicine_id], [medicine_name], [medicine_image], [medicine_price], [medicine_unit], [medicine_quantity], [medicine_detail], [medicine_cateId]) VALUES (2, N'Children''s Mucus Relief Multi-Symptom Cold', N'mucinex.jpg', 120, 1, 998, N'Cough Suppressant Mixed Berry', 3)
INSERT [dbo].[medicine] ([medicine_id], [medicine_name], [medicine_image], [medicine_price], [medicine_unit], [medicine_quantity], [medicine_detail], [medicine_cateId]) VALUES (3, N'Oral Electrolyte Solution With Zinc, Orange', N'electrolytesolution.jpg', 100, 1, 1000, N'Compare to Pedialyte. Keep up with hydration and electrolyte needs in the face of illness, exercise, travel or heat exhaustion. Walgreens Electrolyte Solution helps prevent dehydration by quickly restoring fluids and electrolytes more effectively than sports drinks, sodas, juices and water. Replaces zinc as well as electrolytes and fluids. Pedialyte is a registered trademark of Abbott Laboratories. This product is not manufactured or distributed by Abbott Nutrition, Abbott Laboratories, the distributor of Pedialyte. Natural flavor with other natural flavor.

Feel your best. Walgreens Electrolyte Solution is a ready-to-use electrolyte drink designed to help restore a healthy balance of electrolytes and fluids.

The fast, effective rehydration of Walgreens Electrolyte Solution helps replenish electrolytes quickly. This electrolyte drink helps restore fluids, electrolytes and zinc more effectively than sports drinks, sodas, juices and water. 

Pediatricians and pharmacists recommend using electrolyte solution to quickly replenish electrolytes, fluids and zinc, and to help prevent dehydration. Compare to the national brand and save.

Helps to prevent mild to moderate dehydration and to quickly restore electrolyte balance of minerals and fluids.

Intense exercise, heat exhaustion, travel, and vomiting and diarrhea can deplete fluids and result in low electrolytes. Walgreens Electrolyte Solution can help prevent dehydration; use for fast, effective rehydration.

Made in United States

100% satisfaction guaranteed', 3)
INSERT [dbo].[medicine] ([medicine_id], [medicine_name], [medicine_image], [medicine_price], [medicine_unit], [medicine_quantity], [medicine_detail], [medicine_cateId]) VALUES (4, N'Children''s Prebiotic + Probiotic Gummies', N'orgamickidbiotics.jpg', 100, 2, 1000, N'800 million active cultures + 3g Fiber per serving
Regularity and Digestive Health†
Specially formulated with prebiotic fiber
Mixed Berry flavors with other natural flavors
Natural fruit flavors with other natural flavors
Does not contain wheat (gluten), milk, eggs, peanuts, soy
No added artificial preservatives
Specially formulated with prebiotic fiber', 2)
INSERT [dbo].[medicine] ([medicine_id], [medicine_name], [medicine_image], [medicine_price], [medicine_unit], [medicine_quantity], [medicine_detail], [medicine_cateId]) VALUES (5, N'Children''s Ibuprofen 100 mg, Chewable Orange', N'nurofen.jpg', 100, 2, 993, N'Compare to Children''s Motrin active ingredient. The active ingredient in Walgreens Children''s Ibuprofen 100 is ibuprofen 100 mg, a pain reliever and fever reducer for children ages 2 to 11. Ibuprofen is a nonsteroidal anti-inflammatory drug (NSAID) that temporarily reduces fever and provides temporary relief of minor aches and pains due to the common cold, flu, sore throat, headaches and toothaches. Relief that lasts up to 8 hours. Orange flavor chewable tablets are preservative free and gluten free. Chew or crush tablets completely before swallowing.

The active ingredient in Walgreens Children''s Ibuprofen 100 chewable tablets is ibuprofen 100 mg, a pain reliever and fever reducer for kids. Compare to the active ingredient of Children''s Motrin.
Chewable tablets are a convenient choice for today''s busy families. No dosing container or water is needed. Walgreens Children''s Ibuprofen 100 contains a nonsteroidal anti-inflammatory drug.
Walgreens Children''s Ibuprofen 100 is a pain reliever and fever reducer specifically formulated for kids ages 2-11 years. This children''s medicine is gluten free and preservative free.
Multiple symptom relief lasts up to 8 hours per dose. Orange flavor is a child-pleasing favorite to help the medicine go down.
Pain reliever and fever reducer: Walgreens Children''s Ibuprofen 100 chewable tablets reduces fever and relieves minor aches and pains due to the common cold, flu, sore throat, headaches and toothaches.
Made in UNITED STATES', 1)
INSERT [dbo].[medicine] ([medicine_id], [medicine_name], [medicine_image], [medicine_price], [medicine_unit], [medicine_quantity], [medicine_detail], [medicine_cateId]) VALUES (6, N'Soothe Antacid Children''s Chewable Tablets Bubble Gum', N'pepto.jpg', 25.99, 1, 1000, N'Description
Relieves heartburn and sour stomach
For acid indigestion
Relieves upset stomach
Relieves Heartburn & Acid Indigestion

Relieves upset stomach
Relieves sour stomach.
100% satisfaction guaranteed
Find the right dose on chart below based on weight (preferred), otherwise use age
Repeat dose as needed
Do not take more than 3 tablets (ages 2-5) or 6 tablets (ages 6-11) in a 24-hour period, or use the maximum dosage for more than two weeks, except under the advice and supervision of a doctor', 3)
INSERT [dbo].[medicine] ([medicine_id], [medicine_name], [medicine_image], [medicine_price], [medicine_unit], [medicine_quantity], [medicine_detail], [medicine_cateId]) VALUES (7, N'Children''s Daytime/Nighttime Multi-Symptom Cold Medicine Berry', N'symptom.jpg', 12.99, 2, 1000, N'Well at Walgreens
Walgreens Pharmacist Recommended†

Combo Pack

Daytime — Very Berry Flavor
Nighttime — Mixed Berry Flavor
Compare to Children''s Mucinex® Day Time Multi-Symptom Cold & Night Time Multi-Symptom Cold Active Ingredients^
Dosage Cup Provided
Children''s Daytime Multi-Symptom Cold

Stuffy Nose
Cough
Chest Congestion
Helps Break Up Mucus
For Ages 4+
Children''s Nighttime Multi-Symptom Cold

Stuffy Nose
Cough
Runny Nose & Sneezing
Fever & Sore Throat
For Ages 6 to 11', 4)
INSERT [dbo].[medicine] ([medicine_id], [medicine_name], [medicine_image], [medicine_price], [medicine_unit], [medicine_quantity], [medicine_detail], [medicine_cateId]) VALUES (8, N'Baby Chest Rub Soothing Ointment', N'babyrob.jpg', 15.99, 1, 1000, N'Description
Leaves baby''s skin soft and smooth
Helps soothe and comfort
With eucalyptus, rosemary, lavender
Helps Soothe and Comfort Babies

On contact, the aloe and petrolatum go right to work, leaving your baby''s skin soft and smooth.  Use when you want to comfort your fussy baby with scents of eucalyptus, rosemary, lavender & aloe vera.', 5)
INSERT [dbo].[medicine] ([medicine_id], [medicine_name], [medicine_image], [medicine_price], [medicine_unit], [medicine_quantity], [medicine_detail], [medicine_cateId]) VALUES (9, N'30 Second Digital Thermometer', N'Equate.jpg', 8.99, 2, 1000, N'Description
Ready to read in 30 seconds
Clinically proven accurate
Large digital display
Read in 30 Sec.

Reads in F or C.

Large digial display.

Memory Recall.

Fever Alert over 99.5 Fahrenheit.

Clinically proven accurate.

Include 5 probe covers.

For oral or rectal use.

Please read complete instructions enclosed

Made in China

100% satisfaction guaranteed

Please remove the protective film on the display.

Disinfect the probe with isopropyl (rubbing) alcohol before using.

If use for oral measurement, please place it near one of the heat poket and keep the mouse closed while measuring. (please read user manual)', 4)
INSERT [dbo].[medicine] ([medicine_id], [medicine_name], [medicine_image], [medicine_price], [medicine_unit], [medicine_quantity], [medicine_detail], [medicine_cateId]) VALUES (10, N'Advantage Care Electrolyte Solution with Prevital Prebiotics, Strawberry Lemonade', N'meijer.jpg', 15.99, 1, 1000, N'Compare to Pedialyte AdvancedCare. Keep up with hydration and electrolyte needs in the face of illness (like vomiting and diarrhea), intense exercise, travel or heat exhaustion. Walgreens Advantage Care Electrolyte Solution helps children and adults prevent dehydration and rehydrate quickly by restoring electrolytes, fluids and zinc more effectively than sports drinks, sodas, juices and water. Walgreens Advantage Care electrolyte solutions also have Prevital Prebiotics to help promote a healthy digestive system. Medical Grade Hydration: Balance of sugar and electrolytes recommended by the American Academy of Pediatrics (Kleinman RE, 2019). Great for kids and adults. Pedialyte and Pedialyte AdvancedCare are registered trademarks of Abbott Laboratories. This product is not manufactured or distributed by Abbott Nutrition, Abbott Laboratories, the distributor of Pedialyte and Pedialyte AdvancedCare. Prevital is a registered trademark of PBM Nutritionals, LLC. Advantage is a registered trademark of PBM Products, LLC. 

Use Walgreens Advantage Care Electrolyte Solution for fast, effective rehydration and to help prevent dehydration. A full-flavored hydration option for adults and children. Compare to Pedialyte AdvancedCare. 
Hydration: Use Walgreens Advantage Care Electrolyte Solution for fast, effective rehydration and to help prevent dehydration. A full-flavored hydration option for adults and children
Help Prevent Dehydration: Quickly replenishes electrolytes, fluids and zinc; designed to help prevent mild to moderate dehydration more effectively than common beverages: sports drinks, juice, soda and water. 
Trust and value: Pediatricians and pharmacists recommend using electrolyte solution to quickly replenish fluids, zinc and electrolytes to help prevent dehydration. Compare to the national brand and save. 
Common Causes: Vomiting and diarrhea, intense exercise, heat exhaustion and travel can deplete fluid, zinc and electrolyte levels. Electrolyte solutions can help restore electrolytes and fluids. 
Made in United States', 2)
INSERT [dbo].[medicine] ([medicine_id], [medicine_name], [medicine_image], [medicine_price], [medicine_unit], [medicine_quantity], [medicine_detail], [medicine_cateId]) VALUES (11, N'Vaporizer 1.0 Gallon', N'warmsteam.jpg', 18.99, 3, 1000, N'Helps temporarily relieve cough and congestion.

Warm Steam

Easy to Fill, Auto Shut-off, Nigh Light

Medicine cup for use with liquid inhalants

Made in MEXICO

100% satisfaction guaranteed

Hold can upright, pull trigger back and spray the air in a sweeping motion throughout the entire room. For a noticeably fresh home, spray all the rooms in your home. Safe for use around cats and dogs. As with other air care products, not for use around birds.

© 2013 Walgreen Co', 1)
INSERT [dbo].[medicine] ([medicine_id], [medicine_name], [medicine_image], [medicine_price], [medicine_unit], [medicine_quantity], [medicine_detail], [medicine_cateId]) VALUES (12, N'Children''s Dye-Free Ibuprofen 100 Oral Suspension Berry', N'motrin.jpg', 20.99, 1, 1000, N'Description
Relieves minor aches and pains
Reduces fever
Lasts up to 8 hours
Compare to Children''s Motrin active ingredient. When pain or fever derails your child, get them back on track with Walgreens Children''s Dye-Free Ibuprofen 100, Ibuprofen Oral Suspension 100 mg per 5 mL, Non-Staining Berry Flavor. This children''s ibuprofen temporarily reduces fever and provides relief from minor aches and pains due to the common cold, flu, sore throat, headache and toothache. One dose of this berry-flavored cold medicine provides relief for up to 8 hours for children ages 2 to 11 years. Dye and alcohol free.

Active ingredient: This berry flavored ibuprofen contains 100 mg per 5 mL of ibuprofen, which is a pain reliever and fever reducer.
Children''s pain reliever and fever reducer: A nonsteroidal anti-inflammatory drug (NSAID) that temporarily reduces fever and relieves minor aches and pains of the common cold, flu, sore throat, headache and toothache.
Lasts up to 8 hours: This children''s medicine will provide relief of minor aches and pains caused by the common cold and flu for up to 8 hours. Also temporarily reduces fever.
Made for children: Non-staining Berry Flavor is a kid-friendly choice to help your child feel like themselves again. For children ages 2 to 11.
Gluten free: This children''s oral suspension ibuprofen is gluten, dye and alcohol free. Features a child-resistant safety cap.', 3)
INSERT [dbo].[medicine] ([medicine_id], [medicine_name], [medicine_image], [medicine_price], [medicine_unit], [medicine_quantity], [medicine_detail], [medicine_cateId]) VALUES (13, N'Dosage Syringe with Brush', N'dosage.jpg', 50.99, 1, 1000, N'Description
Gives accurate dose every time
Control flow with extra-large plunger
Easy-view calibrations
Accurate dose every time
Color coded cap for easy dosing
Control flow with extra-large plunger
Easy to hold & dose
Quick & easy to clean
Contains: 1 Syringe 2 tsp (10 mL), 1 Brush
BPA Free', 5)
INSERT [dbo].[medicine] ([medicine_id], [medicine_name], [medicine_image], [medicine_price], [medicine_unit], [medicine_quantity], [medicine_detail], [medicine_cateId]) VALUES (14, N'Infrared Instant Ear Digital Thermometer', N'infared.jpg', 30.99, 2, 1000, N'2 second reading
Certified accurate
LED temperature indicator
Memory recall for last 10 temperatures
Reads in °F or °C
Walgreens pharmacist recommended*
*Walgreens pharmacist survey study, November 2017

100% satisfaction guaranteed', 4)
INSERT [dbo].[medicine] ([medicine_id], [medicine_name], [medicine_image], [medicine_price], [medicine_unit], [medicine_quantity], [medicine_detail], [medicine_cateId]) VALUES (15, N'Baby Rectal Thermometer', N'rectal.jpg', 16.99, 3, 1000, N'Description
Backlit LCD display
Flex-tip
Reads in F or C
Memory Recall
Fever Alert above 100.4 Fahrenheit
Clinically proven accurate
For rectal use only
Please read complete instructions enclosed', 3)
SET IDENTITY_INSERT [dbo].[medicine] OFF
GO
SET IDENTITY_INSERT [dbo].[medicine_unit] ON 

INSERT [dbo].[medicine_unit] ([unit_id], [unit_name]) VALUES (1, N'cough medicine')
INSERT [dbo].[medicine_unit] ([unit_id], [unit_name]) VALUES (2, N'bottle')
INSERT [dbo].[medicine_unit] ([unit_id], [unit_name]) VALUES (3, N'1')
SET IDENTITY_INSERT [dbo].[medicine_unit] OFF
GO
SET IDENTITY_INSERT [dbo].[prescription_details] ON 

INSERT [dbo].[prescription_details] ([prescription_details_id], [medical_id], [medicine_id], [quantity], [price]) VALUES (3, 3, 2, 2, 240)
INSERT [dbo].[prescription_details] ([prescription_details_id], [medical_id], [medicine_id], [quantity], [price]) VALUES (4, 3, 3, 1, 100)
INSERT [dbo].[prescription_details] ([prescription_details_id], [medical_id], [medicine_id], [quantity], [price]) VALUES (5, 3, 5, 3, 300)
INSERT [dbo].[prescription_details] ([prescription_details_id], [medical_id], [medicine_id], [quantity], [price]) VALUES (6, 4, 2, 2, 240)
INSERT [dbo].[prescription_details] ([prescription_details_id], [medical_id], [medicine_id], [quantity], [price]) VALUES (7, 4, 5, 2, 200)
INSERT [dbo].[prescription_details] ([prescription_details_id], [medical_id], [medicine_id], [quantity], [price]) VALUES (8, 4, 10, 2, 31.98)
INSERT [dbo].[prescription_details] ([prescription_details_id], [medical_id], [medicine_id], [quantity], [price]) VALUES (9, 5, 1, 6, 600)
INSERT [dbo].[prescription_details] ([prescription_details_id], [medical_id], [medicine_id], [quantity], [price]) VALUES (10, 5, 5, 7, 700)
INSERT [dbo].[prescription_details] ([prescription_details_id], [medical_id], [medicine_id], [quantity], [price]) VALUES (12, 6, 1, 1, 100)
INSERT [dbo].[prescription_details] ([prescription_details_id], [medical_id], [medicine_id], [quantity], [price]) VALUES (13, 6, 2, 2, 240)
INSERT [dbo].[prescription_details] ([prescription_details_id], [medical_id], [medicine_id], [quantity], [price]) VALUES (14, 7, 10, 1, 15.99)
INSERT [dbo].[prescription_details] ([prescription_details_id], [medical_id], [medicine_id], [quantity], [price]) VALUES (15, 8, 4, 1, 100)
INSERT [dbo].[prescription_details] ([prescription_details_id], [medical_id], [medicine_id], [quantity], [price]) VALUES (16, 9, 1, 2, 200)
INSERT [dbo].[prescription_details] ([prescription_details_id], [medical_id], [medicine_id], [quantity], [price]) VALUES (17, 9, 2, 1, 120)
INSERT [dbo].[prescription_details] ([prescription_details_id], [medical_id], [medicine_id], [quantity], [price]) VALUES (18, 9, 3, 1, 100)
INSERT [dbo].[prescription_details] ([prescription_details_id], [medical_id], [medicine_id], [quantity], [price]) VALUES (19, 10, 2, 2, 240)
INSERT [dbo].[prescription_details] ([prescription_details_id], [medical_id], [medicine_id], [quantity], [price]) VALUES (20, 10, 5, 2, 200)
SET IDENTITY_INSERT [dbo].[prescription_details] OFF
GO
SET IDENTITY_INSERT [dbo].[reservation] ON 

INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (2, 19, 699, N'Truong hop sap tu vong', 1, CAST(N'2022-06-04' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (3, 22, 699, N'Con em ten khoa bi viem mao ga', 1, CAST(N'2022-06-05' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (4, 25, 699, N'Con em ten truong bi sau rang', 3, CAST(N'2022-06-06' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (5, 25, 699, N'Con em ten Hao bi thieu nang tu be', 3, CAST(N'2022-06-07' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (6, 16, 699, N'Truong hop sap chet', 1, CAST(N'2022-06-03' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (7, 19, 699, N'Truong hop sap tu vong', 2, CAST(N'2022-06-03' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (8, 22, 699, N'Con em ten khoa bi viem mao ga', 1, CAST(N'2022-06-05' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (9, 25, 699, N'Con em ten truong bi sau rang', 4, CAST(N'2022-06-03' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (10, 25, 699, N'Con em ten Hao bi thieu nang tu be', 1, CAST(N'2022-06-07' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (11, 16, 699, N'Truong hop sap chet', 3, CAST(N'2022-06-03' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (12, 19, 699, N'Truong hop sap tu vong', 3, CAST(N'2022-06-09' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (13, 22, 699, N'Con em ten khoa bi viem mao ga', 1, CAST(N'2022-06-04' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (14, 25, 699, N'Con em ten truong bi sau rang', 2, CAST(N'2022-06-06' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (15, 25, 699, N'Con em ten Hao bi thieu nang tu be', 1, CAST(N'2022-06-05' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (16, 25, 699, N'Con em ten Hao bi thieu nang tu be', 1, CAST(N'2022-06-08' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (17, 25, 699, N'Con em ten truong bi sau rang', 2, CAST(N'2022-06-07' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (18, 22, 699, N'Con em ten khoa bi viem mao ga', 1, CAST(N'2022-06-06' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (20, 19, 699, N'Truong hop sap tu vong', 1, CAST(N'2022-06-03' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (21, 47, 3500, N'aa', 1, CAST(N'2022-06-16' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (22, 47, 800, N'aa', 1, CAST(N'2022-06-16' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (23, 47, 800, N'test 1', 1, CAST(N'2022-06-17' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (27, 47, 400, N'test final', 1, CAST(N'2022-06-17' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (28, 35, 800, N'cccc', 1, CAST(N'2022-06-17' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (29, 47, 800, N'test final 123', 1, CAST(N'2022-06-17' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (30, 35, 800, N'123141212', 1, CAST(N'2022-06-17' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (31, 35, 400, N'23131', 1, CAST(N'2022-06-17' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (32, 35, 400, N'123412', 1, CAST(N'2022-06-17' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (33, 35, 400, N'test final', 1, CAST(N'2022-06-18' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (34, 35, 400, N'Ayo', 1, CAST(N'2022-06-19' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (35, 35, 1000, N'test finalllll!!!!', 3, CAST(N'2022-06-20' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (36, 38, 1600, N'Truong hop sap ', 1, CAST(N'2022-06-20' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (37, 35, 400, N'abc', 4, CAST(N'2022-06-24' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (38, 35, 800, N'Truong hop khan cap', 2, CAST(N'2022-06-24' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (39, 35, 870, N'123', 1, CAST(N'2022-06-24' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (40, 35, 400, N'142314', 2, CAST(N'2022-06-24' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (41, 35, 400, N'123', 1, CAST(N'2022-06-25' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (42, 35, 870, N'23123', 1, CAST(N'2022-06-25' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (43, 33, 400, N'3412', 2, CAST(N'2022-06-25' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (44, 33, 400, N'213', 1, CAST(N'2022-06-25' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (45, 33, 400, N'3141', 3, CAST(N'2022-06-25' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (46, 35, 400, N'123', 1, CAST(N'2022-06-25' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (47, 35, 400, N'23123', 1, CAST(N'2022-06-25' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (48, 33, 400, N'31231', 3, CAST(N'2022-06-25' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (49, 33, 400, N'123', 3, CAST(N'2022-06-25' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (50, 33, 400, N'123', 1, CAST(N'2022-06-25' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (51, 33, 400, N'23231', 1, CAST(N'2022-06-25' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (52, 33, 400, N'123', 1, CAST(N'2022-06-25' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (53, 33, 1200, N'23131', 4, CAST(N'2022-06-27' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (54, 33, 800, N'test inter 3', 1, CAST(N'2022-07-11' AS Date))
INSERT [dbo].[reservation] ([reservation_id], [user_id], [total_price], [note], [reservation_status], [created_date]) VALUES (55, 33, 800, N'test', 4, CAST(N'2022-07-11' AS Date))
SET IDENTITY_INSERT [dbo].[reservation] OFF
GO
SET IDENTITY_INSERT [dbo].[reservation_detail] ON 

INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (49, 10, 1, 255, 1, 1, 4, 17, 18, CAST(N'2021-10-11' AS Date), 1, 1)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (56, 5, 2, 199, 1, 1, 1, 17, 18, CAST(N'2020-11-02' AS Date), 3, 3)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (57, 6, 3, 399, 1, 1, 1, 17, 18, CAST(N'2020-11-09' AS Date), 2, 4)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (61, 6, 2, 255, 1, 1, 1, 17, 18, CAST(N'2020-12-11' AS Date), 4, 5)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (62, 6, 2, 255, 1, 1, 2, 17, 18, CAST(N'2020-09-11' AS Date), 1, 4)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (63, 6, 2, 255, 1, 1, 3, 17, 18, CAST(N'2020-07-11' AS Date), 4, 4)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (64, 6, 2, 255, 1, 1, 3, 17, 18, CAST(N'2020-12-06' AS Date), 2, 5)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (65, 6, 2, 255, 1, 1, 4, 17, 18, CAST(N'2020-05-11' AS Date), 3, 5)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (66, 6, 2, 255, 1, 1, 4, 17, 18, CAST(N'2020-05-11' AS Date), 3, 1)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (67, 12, 3, 255, 1, 1, 4, 17, 18, CAST(N'2021-08-11' AS Date), 2, 3)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (68, 11, 2, 255, 1, 1, 4, 17, 18, CAST(N'2021-09-11' AS Date), 4, 4)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (69, 10, 1, 255, 1, 1, 4, 17, 18, CAST(N'2021-10-11' AS Date), 1, 5)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (70, 9, 2, 255, 1, 1, 4, 17, 18, CAST(N'2021-03-11' AS Date), 4, 4)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (71, 8, 2, 255, 1, 1, 4, 17, 18, CAST(N'2021-02-11' AS Date), 2, 3)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (73, 5, 2, 199, 1, 1, 1, 17, 18, CAST(N'2020-11-02' AS Date), 3, 3)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (74, 6, 3, 399, 1, 1, 1, 17, 18, CAST(N'2020-11-09' AS Date), 1, 5)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (78, 6, 2, 255, 1, 1, 1, 17, 18, CAST(N'2020-12-11' AS Date), 4, 3)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (79, 6, 2, 255, 1, 1, 2, 17, 18, CAST(N'2020-09-11' AS Date), 1, 4)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (80, 6, 2, 255, 1, 1, 3, 17, 18, CAST(N'2020-07-11' AS Date), 3, 5)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (81, 6, 2, 255, 1, 1, 3, 17, 18, CAST(N'2020-12-06' AS Date), 4, 1)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (82, 6, 2, 255, 1, 1, 4, 17, 18, CAST(N'2020-05-11' AS Date), 1, 1)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (83, 6, 2, 255, 1, 1, 4, 17, 18, CAST(N'2020-05-11' AS Date), 3, 4)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (84, 12, 3, 255, 1, 1, 4, 17, 18, CAST(N'2021-08-11' AS Date), 4, 1)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (85, 11, 2, 255, 1, 1, 4, 17, 18, CAST(N'2021-09-11' AS Date), 3, 4)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (86, 10, 1, 255, 1, 1, 4, 17, 18, CAST(N'2021-10-11' AS Date), 1, 3)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (87, 9, 2, 255, 1, 1, 4, 17, 18, CAST(N'2021-03-11' AS Date), 2, 5)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (88, 8, 2, 255, 1, 1, 4, 17, 18, CAST(N'2021-02-11' AS Date), 3, 3)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (90, 21, 36, 400, 2, 2, 5, 17, 18, CAST(N'2022-06-24' AS Date), 2, 1)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (91, 21, 36, 400, 2, 2, 5, 17, 18, CAST(N'2022-06-24' AS Date), 2, 3)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (92, 21, 37, 400, 1, 1, 6, 20, 21, CAST(N'2022-06-25' AS Date), 3, 1)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (93, 21, 35, 750, 1, 2, 5, 23, 24, CAST(N'2022-06-26' AS Date), 4, 1)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (94, 21, 35, 750, 1, 2, 5, 23, 24, CAST(N'2022-06-26' AS Date), 4, 3)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (95, 22, 36, 400, 1, 1, 5, 17, 18, CAST(N'2022-06-22' AS Date), 1, 1)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (96, 22, 37, 400, 1, 1, 6, 23, 24, CAST(N'2022-06-30' AS Date), 2, 1)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (97, 23, 36, 400, 2, 1, 5, 20, 21, CAST(N'2022-06-30' AS Date), 1, 1)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (102, 27, 36, 400, 1, 1, 5, 26, 24, CAST(N'2022-06-29' AS Date), 2, 1)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (104, 29, 37, 400, 1, 2, 6, 23, 24, CAST(N'2022-06-23' AS Date), 2, 1)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (105, 29, 37, 400, 1, 2, 6, 23, 24, CAST(N'2022-06-23' AS Date), 2, 3)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (112, 35, 39, 500, 5, 5, 6, 23, 21, CAST(N'2022-06-23' AS Date), 1, 7)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (113, 35, 39, 500, 5, 5, 6, 23, 21, CAST(N'2022-06-23' AS Date), 1, 8)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (114, 36, 36, 400, 1, 2, 5, 17, 21, CAST(N'2022-06-24' AS Date), 1, 10)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (115, 36, 36, 400, 1, 2, 5, 17, 21, CAST(N'2022-06-24' AS Date), 1, 11)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (116, 36, 37, 400, 1, 2, 6, 20, 24, CAST(N'2022-06-25' AS Date), 2, 10)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (117, 36, 37, 400, 1, 2, 6, 20, 24, CAST(N'2022-06-25' AS Date), 2, 11)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (118, 37, 36, 400, 1, 1, 5, 20, 18, CAST(N'2022-06-25' AS Date), 2, 8)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (119, 38, 36, 400, 1, 2, 5, 20, 21, CAST(N'2022-06-29' AS Date), 2, 7)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (120, 38, 36, 400, 1, 2, 5, 20, 21, CAST(N'2022-06-29' AS Date), 2, 8)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (124, 40, 36, 400, 1, 1, 5, 23, 21, CAST(N'2022-06-27' AS Date), 1, 7)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (125, 41, 36, 400, 1, 1, 5, 26, 21, CAST(N'2022-06-29' AS Date), 2, 7)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (126, 42, 36, 400, 1, 1, 5, 17, 18, CAST(N'2022-06-28' AS Date), 1, 7)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (127, 42, 37, 400, 1, 1, 6, 20, 18, CAST(N'2022-06-29' AS Date), 2, 7)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (128, 42, 31, 70, 1, 1, 4, 26, 21, CAST(N'2022-06-30' AS Date), 4, 7)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (129, 43, 36, 400, 1, 1, 5, 26, 21, CAST(N'2022-06-28' AS Date), 2, 12)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (131, 45, 36, 400, 1, 1, 5, 20, 24, CAST(N'2022-06-29' AS Date), 3, 12)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (132, 46, 36, 400, 1, 1, 5, 23, 24, CAST(N'2022-06-29' AS Date), 2, 7)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (133, 47, 36, 400, 1, 1, 5, 20, 21, CAST(N'2022-06-30' AS Date), 2, 7)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (134, 48, 36, 400, 1, 1, 5, 23, 21, CAST(N'2022-06-28' AS Date), 2, 13)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (135, 49, 36, 400, 1, 1, 5, 20, 21, CAST(N'2022-06-29' AS Date), 2, 12)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (136, 50, 36, 400, 1, 1, 5, 23, 24, CAST(N'2022-06-30' AS Date), 2, 13)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (137, 51, 36, 400, 1, 1, 5, 17, 21, CAST(N'2022-06-28' AS Date), 1, 12)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (138, 52, 36, 400, 1, 1, 5, 20, 21, CAST(N'2022-06-30' AS Date), 1, 12)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (139, 53, 36, 400, 1, 2, 5, 20, 21, CAST(N'2022-06-30' AS Date), 1, 12)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (140, 53, 36, 400, 1, 2, 5, 20, 21, CAST(N'2022-06-30' AS Date), 1, 13)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (141, 53, 37, 400, 1, 1, 6, 20, 21, CAST(N'2022-06-30' AS Date), 2, 12)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (142, 54, 36, 400, 1, 1, 5, 20, 18, CAST(N'2022-07-21' AS Date), 1, 12)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (143, 54, 37, 400, 1, 1, 6, 17, 18, CAST(N'2022-07-21' AS Date), 1, 12)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (144, 55, 36, 400, 1, 1, 5, 17, 18, CAST(N'2022-07-20' AS Date), 1, 12)
INSERT [dbo].[reservation_detail] ([reservation_detail_id], [reservation_id], [service_id], [price], [quantity], [num_of_person], [category_id], [doctor_id], [nurse_id], [begin_time], [slot], [children_id]) VALUES (145, 55, 37, 400, 1, 1, 6, 20, 21, CAST(N'2022-07-21' AS Date), 2, 12)
SET IDENTITY_INSERT [dbo].[reservation_detail] OFF
GO
SET IDENTITY_INSERT [dbo].[reservation_medical] ON 

INSERT [dbo].[reservation_medical] ([medical_id], [reservation_detail_id], [diagnosis], [created_date], [doctor_id]) VALUES (1, 139, N'test 3', CAST(N'2022-06-28' AS Date), 33)
INSERT [dbo].[reservation_medical] ([medical_id], [reservation_detail_id], [diagnosis], [created_date], [doctor_id]) VALUES (2, 139, N'test 4', CAST(N'2022-06-28' AS Date), 33)
INSERT [dbo].[reservation_medical] ([medical_id], [reservation_detail_id], [diagnosis], [created_date], [doctor_id]) VALUES (3, 139, N'test 5', CAST(N'2022-06-28' AS Date), 33)
INSERT [dbo].[reservation_medical] ([medical_id], [reservation_detail_id], [diagnosis], [created_date], [doctor_id]) VALUES (4, 139, N'test 6 for lazy load', CAST(N'2022-06-29' AS Date), 33)
INSERT [dbo].[reservation_medical] ([medical_id], [reservation_detail_id], [diagnosis], [created_date], [doctor_id]) VALUES (5, 139, N'test for trigger', CAST(N'2022-06-29' AS Date), 33)
INSERT [dbo].[reservation_medical] ([medical_id], [reservation_detail_id], [diagnosis], [created_date], [doctor_id]) VALUES (6, 139, N'ggdads', CAST(N'2022-06-29' AS Date), 33)
INSERT [dbo].[reservation_medical] ([medical_id], [reservation_detail_id], [diagnosis], [created_date], [doctor_id]) VALUES (7, 70, N'abcdefgh', CAST(N'2022-07-10' AS Date), 33)
INSERT [dbo].[reservation_medical] ([medical_id], [reservation_detail_id], [diagnosis], [created_date], [doctor_id]) VALUES (8, 112, N'test final', CAST(N'2022-07-10' AS Date), 33)
INSERT [dbo].[reservation_medical] ([medical_id], [reservation_detail_id], [diagnosis], [created_date], [doctor_id]) VALUES (9, 131, N'test final inter 3', CAST(N'2022-07-11' AS Date), 33)
INSERT [dbo].[reservation_medical] ([medical_id], [reservation_detail_id], [diagnosis], [created_date], [doctor_id]) VALUES (10, 144, N'aadjadmca ', CAST(N'2022-07-11' AS Date), 33)
SET IDENTITY_INSERT [dbo].[reservation_medical] OFF
GO
SET IDENTITY_INSERT [dbo].[role] ON 

INSERT [dbo].[role] ([role_id], [role_name]) VALUES (1, N'Admin')
INSERT [dbo].[role] ([role_id], [role_name]) VALUES (2, N'Doctor')
INSERT [dbo].[role] ([role_id], [role_name]) VALUES (3, N'Nurse')
INSERT [dbo].[role] ([role_id], [role_name]) VALUES (4, N'Customer')
INSERT [dbo].[role] ([role_id], [role_name]) VALUES (5, N'Manager')
SET IDENTITY_INSERT [dbo].[role] OFF
GO
SET IDENTITY_INSERT [dbo].[service] ON 

INSERT [dbo].[service] ([service_id], [service_title], [service_bi], [service_created_date], [category_id], [service_price], [service_discount], [service_detail], [service_rateStar], [service_vote]) VALUES (1, N'Cut lip brake with low grip', N'Tissue ablation is a simple procedure to remove or relieve strain on the brakes in the mouth.', CAST(N'2022-01-02' AS Date), 1, 200, 159, N'Low grip lip brake often causes tooth misalignment, creating a gap between two large front teeth affecting aesthetics and loss of confidence in communication; causes gum contraction, plaque accumulates more and makes it difficult to clean teeth.

Cutting the low-grip lip brake helps the lips to move easily and does not affect the lip muscles. Performing this procedure at ENAX Odonto-Stomatology Clinic, customers can be examined and consulted for free, the cost is appropriate and the process is safe and aesthetic for the customer.', 4, 59)
INSERT [dbo].[service] ([service_id], [service_title], [service_bi], [service_created_date], [category_id], [service_price], [service_discount], [service_detail], [service_rateStar], [service_vote]) VALUES (2, N'Apply SDF to prevent and stop the ', N'SDF Apply Service to prevent and prevent the development of tooth decay', CAST(N'2020-11-11' AS Date), 1, 150, 120, N'SDF Apply Service to prevent and prevent the development of dental caries at the Clinic', 3, 102)
INSERT [dbo].[service] ([service_id], [service_title], [service_bi], [service_created_date], [category_id], [service_price], [service_discount], [service_detail], [service_rateStar], [service_vote]) VALUES (3, N'Welding deep teeth', N'Cavity filling is a technique that uses dental fillings to fill the gaps, fill in the missing tooth tissue due to decay, so that the teeth return to their original state.', CAST(N'2022-01-02' AS Date), 1, 15, 12, N'Cavity filling is a technique that uses dental fillings to fill the gaps, fill in the missing tooth tissue due to decay, so that the teeth return to their original state.

Tooth decay will cause pain and discomfort in chewing, tooth decay will create deep holes in the oral cavity, causing food to accumulate, and causing bad breath.

 At the same time, tooth decay also causes the risk of infection, tooth loss, affecting the aesthetics and surrounding teeth

Tooth decay method is performed when the holes in the teeth or only tooth sensitivity, but no holes are seen. At this time, the doctor needs to take a film to determine the condition of the tooth decay, to proceed with the filling', 5, 111)
INSERT [dbo].[service] ([service_id], [service_title], [service_bi], [service_created_date], [category_id], [service_price], [service_discount], [service_detail], [service_rateStar], [service_vote]) VALUES (4, N'
Welding Milk Teeth', N'
Baby teeth are often decayed, due to many reasons such as improper diet and oral hygiene', CAST(N'2021-06-07' AS Date), 2, 10, 8, N'
Baby teeth are often decayed, due to many reasons such as improper diet, oral hygiene, ...
Depending on the condition behind the teeth, the doctor will examine and decide whether the method will seal the baby teeth or not.
At ENAX Oral and Maxillofacial Clinic, children will be thoroughly examined and consulted about the condition of their teeth and dental fillings according to the procedure, ensuring safety and aesthetics, and a service warranty of up to 6 months.', 2, 42)
INSERT [dbo].[service] ([service_id], [service_title], [service_bi], [service_created_date], [category_id], [service_price], [service_discount], [service_detail], [service_rateStar], [service_vote]) VALUES (5, N'Combined teeth whitening', N'
Combined teeth whitening service at the Clinic', CAST(N'2021-08-09' AS Date), 2, 10, 8, N'
Combined teeth whitening service at the Clinic', 3, 47)
INSERT [dbo].[service] ([service_id], [service_title], [service_bi], [service_created_date], [category_id], [service_price], [service_discount], [service_detail], [service_rateStar], [service_vote]) VALUES (6, N'Cataracts', N'Children can develop cataracts, a condition where the lens of the eyes becomes cloudy. This rare condition can result in poor vision and is treatable.', CAST(N'2021-08-10' AS Date), 1, 150, 120, N'We use advanced equipment in our visual electrophysiology lab to diagnose cataracts. Whether you need a new eyeglass prescription, which you can easily fill at one of our on-site Mizzou Optical retail stores, visual aids to enhance your eyesight, or cataract surgery, you’ll find it at MU Health Care. We offer complete services to improve vision and your quality of life.

Your doctor will talk with you about your choices and suggest a custom treatment plan that takes into account your lifestyle and what’s important to you.', 5, 109)
INSERT [dbo].[service] ([service_id], [service_title], [service_bi], [service_created_date], [category_id], [service_price], [service_discount], [service_detail], [service_rateStar], [service_vote]) VALUES (7, N'NDiabetic RetinopathyULL', N'If you have diabetes, it''s important to have your eyes checked regularly. High blood sugar can weaken and damage the tiny blood vessels in your eye, which can lead to diabetic retinopathy. ', CAST(N'2021-10-11' AS Date), 1, 130, 111, N'Diabetic retinopathy doesn’t have symptoms in the early stages. Regular screenings can help catch the disease before it leads to serious complications. At University of Missouri Health Care’s Mason Eye Clinic, our eye care specialists (ophthalmologists) specialize in diagnosing and treating diabetic retinopathy. Our ophthalmologists work together with your primary care doctor or endocrinologist to offer you complete care.

We can help prevent the disease and protect your eyesight.', 4, 56)
INSERT [dbo].[service] ([service_id], [service_title], [service_bi], [service_created_date], [category_id], [service_price], [service_discount], [service_detail], [service_rateStar], [service_vote]) VALUES (8, N'Convergence Insufficiency', N'This common disorder occurs when vision is limited at close proximity to an object. Often times, one eye will turn outward when attempting to focus on a close object.', CAST(N'2021-10-11' AS Date), 1, 200, 189, N'In children, convergence insufficiency can often be treated by practicing convergence through exercises. These exercises may be prescribed by an orthoptist (a medical technician who is specifically trained in ocular muscle function and binocular vision) or by an ophthalmologist. There is also a computer program available which may be used on a home computer to increase convergence ability. The results of the computer program are often followed by your eye care professional with print outs that can be brought in to the office visit. Finally, in-office exercises for convergence insufficiency are administered by certain specialized practitioners, but at home treatment is usually sufficient.', 3, 74)
INSERT [dbo].[service] ([service_id], [service_title], [service_bi], [service_created_date], [category_id], [service_price], [service_discount], [service_detail], [service_rateStar], [service_vote]) VALUES (9, N'Eye Exams', N'
Appointments
573-884-EYES (3937)

Find Care
IN THIS SECTION
Eye Exams
Meet the Team
Many eye and vision problems don’t have symptoms, but specialized testing can help discover eye health problems early to help prevent vision loss', CAST(N'2021-10-12' AS Date), 1, 210, 190, N'Biomicroscopic imaging exams provide 3-D pictures of your cornea (the clear, outer covering of your eye), iris (colored part of your eye), lens, and the fluid in the middle of your eye (vitreous gel). Your doctor can use special lenses to examine deeper structures in your eye. Biomicroscopic imaging helps diagnose many problems, including diseases, infections or foreign objects in your eye.', 4, 57)
INSERT [dbo].[service] ([service_id], [service_title], [service_bi], [service_created_date], [category_id], [service_price], [service_discount], [service_detail], [service_rateStar], [service_vote]) VALUES (16, N'Low Vision', N'If you wear glasses or contacts and you still have difficulty reading the newspaper or directions on the side of a box, you have low vision', CAST(N'2020-10-12' AS Date), 1, 180, 150, N'When you choose MU Health Care, you work with the most experienced eye care team in central Missouri. Our low vision specialists work closely with our ophthalmologists and optometrists to understand your eye health condition. This close collaboration means you get expert advice and solutions to help you maintain your independence.

Here’s how we can help.', 2, 123)
INSERT [dbo].[service] ([service_id], [service_title], [service_bi], [service_created_date], [category_id], [service_price], [service_discount], [service_detail], [service_rateStar], [service_vote]) VALUES (17, N'Foot and Ankle Pain', N'Foot pain and ankle pain can keep you out of step with your life, preventing you from enjoying the activities you love.', CAST(N'2021-01-10' AS Date), 3, 350, 250, N'At Missouri Orthopaedic Institute (MOI), we offer complete care in one location, making your treatment easy and convenient. We can diagnose your condition through physical exams or advanced medical imaging. Treatments, including inpatient and outpatient surgery, are deliver using the latest physical therapy techniques to build strength, relieve pain and increase range of motion.

As a patient in an academic health center, you have access to the latest orthopaedic treatments. Our physicians use the most up-to-date recommendations and research to guide your care and help you heal.

You’ll also receive care from a multidisciplinary team of specialists, including orthopaedic surgeons, podiatrists, radiologists, physical therapists and other health professionals. Our teams work with you to find the best treatment for your condition, age and fitness level.', 4, 142)
INSERT [dbo].[service] ([service_id], [service_title], [service_bi], [service_created_date], [category_id], [service_price], [service_discount], [service_detail], [service_rateStar], [service_vote]) VALUES (18, N'Pediatric Orthopaedics', N'Our pediatric orthopaedics team provides a multidisciplinary approach for medical, social, emotional and physical needs related to orthopaedic conditions that affect children.', CAST(N'2020-02-10' AS Date), 3, 350, 250, N'Pediatric orthopaedic care is offered in a nurturing environment with knowledgeable physicians and the latest technology. Within our clinic, we have multiple providers, including surgeons, sports medicine doctors and nurse practitioners available to treat your child Monday through Friday.

Our surgeons, Daniel Hoernschemeyer, MD, and Sumit Gupta, MD, specialize in many conditions, including scoliosis and cerebral palsy. Our sports medicine doctors, Aaron Gray, MD, and Tiffany Bohon, MD, evaluate and treat a variety of sports-related injuries, including concussions.

Working alongside our surgeons, our nurse practitioners are available to help manage our non-surgical conditions, as well as assisting with post-operative care. Our nurse practitioners help to provide additional clinics, which allows for your child to be seen in a timely manner.

We are committed to helping your child manage his or her condition and live life to the fullest.', 5, 26)
INSERT [dbo].[service] ([service_id], [service_title], [service_bi], [service_created_date], [category_id], [service_price], [service_discount], [service_detail], [service_rateStar], [service_vote]) VALUES (19, N'Knee Pain

', N'As an active, weight-bearing joint, the knee is a source of pain and problems for many people. ', CAST(N'2021-03-07' AS Date), 3, 100, 80, N'Knee pain is common and might be acute or chronic and could result from injury, overuse or growth. It can stem from the tendons, ligaments, bones, cartilage or any other structure within the knee. Arthritis is one of the most common and crippling conditions to affect the knee joint.

Our compassionate team provides complete care for your knee pain. At MU Health Care’s Missouri Orthopaedic Institute, we offer all the orthopaedic services you need under one roof — from diagnosis to surgery to physical therapy. Our facility is specially designed to make your care easy and comfortable.', 5, 62)
INSERT [dbo].[service] ([service_id], [service_title], [service_bi], [service_created_date], [category_id], [service_price], [service_discount], [service_detail], [service_rateStar], [service_vote]) VALUES (20, N'Hip Pain

', N'Appointments
573-882-BONE


REFERRALS: CALL 888-884-6836
Find Care
IN THIS SECTION
Hip Pain
Meet the Team
Hip Replacement Surgery
When you have hip pain, walking is often difficult and painful.', CAST(N'2021-08-09' AS Date), 3, 120, 110, N'When your hip cartilage is damaged, you might need hip replacement surgery to relieve your pain. During this surgery, your damaged joint is replaced with an artificial joint.

There are multiple hip surgery techniques, and your doctor will talk to you about the best approach.', 4, 75)
INSERT [dbo].[service] ([service_id], [service_title], [service_bi], [service_created_date], [category_id], [service_price], [service_discount], [service_detail], [service_rateStar], [service_vote]) VALUES (25, N'Allergy, Sinus and Nose', N'If you have allergies, you know they can affect nearly every aspect of your daily life.', CAST(N'2021-08-09' AS Date), 4, 120, 80, N'Our ear, nose and throat (ENT) doctors offer comprehensive diagnoses and treatment of nasal and sinus disorders.

Nasal conditions can stem from something temporary, such as a cold, or something longer lasting, such as a deviated septum. Identifying the root cause allows our team to fix or remove it and lower the chance of future blockages.', 3, 24)
INSERT [dbo].[service] ([service_id], [service_title], [service_bi], [service_created_date], [category_id], [service_price], [service_discount], [service_detail], [service_rateStar], [service_vote]) VALUES (28, N'Ear Surgery', N'Find Care
IN THIS SECTION
Ear Surgery
Meet the Team
Cochlear Implants
Do you need surgery to correct an ear-related condition, deformity, disorder or injury?', CAST(N'2022-01-01' AS Date), 4, 150, 120, N'We offer the following surgical procedures: 

Bone-anchored hearing aids. Also called Baha implants, these hearing aids are surgically implanted to allow sound to be conducted through the bone instead of the middle ear. They are designed for individuals with conductive or mixed loss, or for single-sided deafness. Services include a candidacy evaluation, programming of the processor and follow-up care. 
Canaloplasty of the ear. This procedure widens the external auditory canal to alleviate a blockage, hearing loss or infection. 
Cochlear implants. These devices can restore hearing in persons who are deaf or have severe hearing loss. Learn more about our cochlear implant program.', 1, 87)
INSERT [dbo].[service] ([service_id], [service_title], [service_bi], [service_created_date], [category_id], [service_price], [service_discount], [service_detail], [service_rateStar], [service_vote]) VALUES (29, N'Voice and Swallow Care', N'If you have difficulty speaking or swallowing related to an injury or medical condition, you’ll find the care and support you need at University of Missouri Health Care.', CAST(N'2021-05-09' AS Date), 4, 110, 90, N'We offer multiple tailored surgeries and interventions to help improve your swallowing.

Botox therapy. Your doctor may inject Botox into your upper esophagus to stop or slow esophageal squeezing that causes some swallowing disorders. 
Dilation. During dilation, your doctor will insert a tube with a light and a balloon at the end into your throat. He or she will guide the tube into your esophagus and expand the balloon to reduce narrowing in the esophagus. 
Medications. Certain medicines can help relax the esophagus muscle to decrease swallowing issues. 
Surgery. When less invasive treatment options do not help, surgery may be your best option for restored or improved voice or swallowing function. Surgery can:
Make adjustments to the esophagus or other organs whose dysfunction is causing voice and swallowing problems 
Reduce narrowing in the throat that leads to swallowing problems 
Remove cancerous tumors
Remove vocal cord nodules or polyps ', 5, 43)
INSERT [dbo].[service] ([service_id], [service_title], [service_bi], [service_created_date], [category_id], [service_price], [service_discount], [service_detail], [service_rateStar], [service_vote]) VALUES (30, N'Hearing and Balance (Audiology)', N'The ability to hear well allows you to communicate effectively', CAST(N'2020-01-09' AS Date), 4, 65, 50, N'These include: 

Comprehensive audiology testing. These tests help determine your hearing and balance skills. 
Custom-made earplugs. Our team can create custom-made earplugs for a variety of needs, including: 
Hearing protection. These protect ears from excessive levels of noise with custom-made ear molds.
Musician monitors. In-ear monitors and filters to preserve sound quality with protection for musicians. 
Swim molds. These molds prevent water from getting into the ears with custom-made earplugs.
Hearing aid fitting and follow-up. Our audiologists work with you to determine the best hearing aids for your needs, and then ensure it fits and works correctly. Once fit, we will continue to follow up with you to ensure your hearing aids continue to improve your quality of life. ', 4, 86)
INSERT [dbo].[service] ([service_id], [service_title], [service_bi], [service_created_date], [category_id], [service_price], [service_discount], [service_detail], [service_rateStar], [service_vote]) VALUES (31, N'Pediatric ENT (Ear, Nose and Throat)', N'When your child is experiencing health problems related to their ears, nose, throat, head or neck, it can affect their entire life.', CAST(N'2020-01-01' AS Date), 4, 70, 65, N'Depending on your child''s age, noisy breathing can be caused by issues in the voice box (larynx), breathing tube (trachea), or lungs.

Stertor, stridor and wheezing. These terms refer to different sounds that are often described as "noisy breathing" depending on where in the respiratory tract the problem is occurring.

Stertor is a noise from the back of the nose or throat that sounds like nasal congestion.
Stridor is a high pitch, sometimes "sqeaky" sound, and often is caused by issues with or near the voice box. It can be heard when your child breaths in or out — or both.
Stridor can be a sign of subglottic stenosis, which involves narrowing of the airway just below the vocal cords, or tracheal stenosis, narrowing of the windpipe (trachea). These conditions can be present at birth (genetic) or can develop in response to infection, irritation, or injury (acquired).
Stridor might also be a symptom of vocal cord dysfunction or paralysis. This might be treated with voice therapy, injections, surgery or a mix of the three. If vocal cord dysfunction is present, this stridor is often heard during exercise.
Wheezing is a persistent sound that often is related to problems in the lungs. It usually only happens when your child is breathing out.
Laryngomalacia, tracheomalacia and bronchomalacia. These conditions refer to abnormalities with the voice box (laryngomalacia), trachea (tracheomalacia) and lungs (bronchomalacia) that can cause noisy breathing. Symptoms can include irritability, difficulty breathing, poor eating and poor weight gain (or weight loss). ', 4, 41)
INSERT [dbo].[service] ([service_id], [service_title], [service_bi], [service_created_date], [category_id], [service_price], [service_discount], [service_detail], [service_rateStar], [service_vote]) VALUES (32, N'Lung Cancer', N'If you''ve been diagnosed with lung cancer, you want a team of specialists that has the resources you need to overcome cancer.', CAST(N'2020-05-06' AS Date), 5, 500, 400, N'Your MU Health Care cancer care team has access to the very latest treatments for lung, esophageal and other chest cancers as well as innovative lung cancer treatments through national clinical trials. As an academic health system, we use the most advanced medical and surgical treatments available and will work with you to create a personalized treatment plan that matches your diagnosis and needs.', 3, 89)
INSERT [dbo].[service] ([service_id], [service_title], [service_bi], [service_created_date], [category_id], [service_price], [service_discount], [service_detail], [service_rateStar], [service_vote]) VALUES (33, N'Cardiothoracic Surgery', N'If you have a heart or lung condition that requires surgery, turn to MU Health Care. Our expert cardiothoracic surgeons provide personalized care and advanced surgical options to help improve your health.', CAST(N'2020-09-10' AS Date), 5, 1000, 900, N'MU Health Care cardiothoracic surgeons performed the first open-heart procedure in mid-Missouri in 1958. Since then, we have continued to provide advanced care, becoming well-known as one of Missouri’s most active and respected cardiothoracic referral centers. Every year, our cardiothoracic surgeons perform more than 750 cardiothoracic procedures, offering experience you can trust.', 4, 32)
INSERT [dbo].[service] ([service_id], [service_title], [service_bi], [service_created_date], [category_id], [service_price], [service_discount], [service_detail], [service_rateStar], [service_vote]) VALUES (34, N'Pneumonia', N'Lobar pneumonia: This is an inflammation of the lung parenchyma, inflammation of the alveolar ducts, alveolar sacs, and terminal bronchitis. The disease often occurs in children with low resistance', CAST(N'2021-09-04' AS Date), 5, 800, 700, N'When it is determined that children have pneumonia, depending on the stage and cause of the disease, the doctor has different treatment directions:

Pneumonia in children caused by bacteria and mycoplasma: treat with antibiotics as directed by the doctor.
Viral pneumonia in children: treatment with rest and plenty of fluids
Fungal pneumonia in children: treatment with antifungal agents.', 5, 123)
INSERT [dbo].[service] ([service_id], [service_title], [service_bi], [service_created_date], [category_id], [service_price], [service_discount], [service_detail], [service_rateStar], [service_vote]) VALUES (35, N'
Hepatitis A Test', N'Hepatitis A test is a blood test', CAST(N'2020-01-09' AS Date), 5, 750, 650, N'Hepatitis A test is a blood test, hepatitis A is mainly transmitted through the digestive tract, food, sharing personal items with infected people.
Patients should be tested for hepatitis A as soon as they have symptoms: body fatigue, nausea, right upper abdominal pain, loss of appetite, fever, pain, itching, yellow skin, yellow eyes, ... Usually after infection Hepatitis A takes about 2 to 3 weeks, the patient will have the above symptoms. Therefore, as soon as an infection is suspected, the patient should be tested promptly to receive early treatment.
Viet Han General Clinic - is a prestigious medical examination and treatment unit in Hanoi, with a full range of modern equipment and machines, to meet all the medical examination and treatment needs of customers.', 4, 127)
INSERT [dbo].[service] ([service_id], [service_title], [service_bi], [service_created_date], [category_id], [service_price], [service_discount], [service_detail], [service_rateStar], [service_vote]) VALUES (36, N'General Liver Function Test Package', N'General Liver Function Test Package', CAST(N'2019-07-09' AS Date), 5, 400, 300, N'General Liver Function Test Package', 4, 173)
INSERT [dbo].[service] ([service_id], [service_title], [service_bi], [service_created_date], [category_id], [service_price], [service_discount], [service_detail], [service_rateStar], [service_vote]) VALUES (37, N'Package for children under 8 ', N'Package for children under 8 years old advanced', CAST(N'2019-09-08' AS Date), 6, 400, 399, N'Advanced testing package for children under 8 years old at CCARE Health Care Center, including the following test items:
1. General index test
- Blood test 32 indicators - Nutrition test.
- Test liver function, kidney, diabetes
- Check blood fat function
- Check for liver diseases
- Check for cerebrovascular diseases
2. Diagnostic imaging
- Doppler ultrasound of the vertebral artery
- ECG
- General ultrasound, thyroid
- Full vitamin D test
- Full body bacteria check

General testing for children is important, helping to monitor the child''s current health status and should be performed periodically.
Blood tests should be done in the morning and children should fast for 6 to 8 hours, for accurate results.
At CCARE Health Care Center, the examination and testing processes are guaranteed to be disinfected and fast and convenient, helping customers save maximum waiting time and receive results.', 5, 184)
INSERT [dbo].[service] ([service_id], [service_title], [service_bi], [service_created_date], [category_id], [service_price], [service_discount], [service_detail], [service_rateStar], [service_vote]) VALUES (38, N'Intensive package for kids under 8 years old', N'
Advanced testing package for children under 8 years old', CAST(N'2020-10-10' AS Date), 6, 350, 300, N'Advanced testing package for children under 8 years old at CCARE Health Care Center, including the following test items:
1. General index test
- Blood test 32 indicators
- Test liver function, kidney, diabetes
- Check blood fat function
- Check for liver diseases
- Check for cerebrovascular diseases
2. Diagnostic imaging
- Doppler ultrasound of the vertebral artery
- ECG
- General ultrasound, thyroid
- Full vitamin D test
- Full body bacteria check
- Abdominal ultrasound - pleural ultrasound
General testing for children is important, helping to monitor the child''s current health status and should be performed periodically.
Blood tests should be done in the morning and children should fast for 6 to 8 hours, for accurate results.
At CCARE Health Care Center, the examination and testing processes are guaranteed to be disinfected and fast and convenient, helping customers save maximum waiting time and receive results.', 5, 144)
INSERT [dbo].[service] ([service_id], [service_title], [service_bi], [service_created_date], [category_id], [service_price], [service_discount], [service_detail], [service_rateStar], [service_vote]) VALUES (39, N'
Basic test package for children under 15', N'
Basic test package for children under 15 years old', CAST(N'2021-10-11' AS Date), 6, 500, 499, N'
The basic test package for children under 15 years old at CCARE Health Care Center, includes the following test items:
1. General index test
- Blood test 32 indicators
- Test liver function, kidney, diabetes
- Check blood fat function
- Check for liver diseases
- Check for cerebrovascular diseases
2. Diagnostic imaging
- Doppler ultrasound of the vertebral artery

General testing for children is important, helping to monitor the child''s current health status and should be performed periodically.
Blood tests should be done in the morning and the child should fast for 6 to 8 hours.
At CCARE Health Care Center, the examination and testing processes are guaranteed to be disinfected and fast and convenient, helping customers save maximum waiting time and receive results.', 4, 52)
INSERT [dbo].[service] ([service_id], [service_title], [service_bi], [service_created_date], [category_id], [service_price], [service_discount], [service_detail], [service_rateStar], [service_vote]) VALUES (40, N'Tests Complete blood count', N'Tests Complete blood count', CAST(N'2020-11-12' AS Date), 6, 10, 9, N'
Test A complete blood count is a test that is usually done in cases where
- General health check
- Diagnosis of blood diseases, when there are abnormal symptoms: fatigue, fever, inflammation, bruising, bleeding...
- Monitor the medical condition related to blood cells

Patients should have blood tests periodically or as soon as there are abnormal symptoms, in order to detect diseases early.

Viet Han General Clinic - is a prestigious medical examination and treatment unit in Hanoi, with a full range of modern equipment and machines, to meet all the medical examination and treatment needs of customers.', 4, 62)
INSERT [dbo].[service] ([service_id], [service_title], [service_bi], [service_created_date], [category_id], [service_price], [service_discount], [service_detail], [service_rateStar], [service_vote]) VALUES (41, N'Endoscopy of esophagus, stomach, duodenum', N'
NBI technology helps to magnify 100 times, Deep and sharp view under the mucosa helps Detect cancer at an early or very early stage.', CAST(N'2021-05-09' AS Date), 6, 500, 498, N'Book an appointment quickly, reduce waiting time, and the procedure is extremely fast:
- Patients make an appointment at least 1 day in advance to receive priority on time, reducing queuing and waiting time.
- Public and transparent examination prices, the prices on the website are the same as those at the Hospital
- Examination services include doctors consulting, reading results and giving treatment directions, excluding paraclinical services and drugs. The doctor will examine and advise the patient to perform testing and scanning services to clarify the diagnosis if necessary.
- Patients can choose the required doctors, leave a note in the description
- Patients who register for the service will receive a successful appointment message via their phone number to confirm the appointment
- Select the offer or enter the promotion code (if any) to receive a discount when booking', 5, 64)
INSERT [dbo].[service] ([service_id], [service_title], [service_bi], [service_created_date], [category_id], [service_price], [service_discount], [service_detail], [service_rateStar], [service_vote]) VALUES (42, N'foot head add', N'Get suggestions from Grammarly while you write in desktop ', CAST(N'2022-07-10' AS Date), 1, 249, 199, N'Get suggestions from Grammarly while you write in desktop Get suggestions from Grammarly while you write in desktop ', 0, 0)
INSERT [dbo].[service] ([service_id], [service_title], [service_bi], [service_created_date], [category_id], [service_price], [service_discount], [service_detail], [service_rateStar], [service_vote]) VALUES (43, N'rangggggggggg', N'ggggggggggggg', CAST(N'2022-07-10' AS Date), 2, 249, 199, N'ggggggggggg', 0, 0)
INSERT [dbo].[service] ([service_id], [service_title], [service_bi], [service_created_date], [category_id], [service_price], [service_discount], [service_detail], [service_rateStar], [service_vote]) VALUES (44, N'them moi 1', N'aaaaaaaaaaaaaaaaaaaaaaaa', CAST(N'2022-07-10' AS Date), 2, 249, 199, N'aaaaaaaaaaaaaaaaaaaaaaaaaa', 0, 0)
INSERT [dbo].[service] ([service_id], [service_title], [service_bi], [service_created_date], [category_id], [service_price], [service_discount], [service_detail], [service_rateStar], [service_vote]) VALUES (45, N'hong rang ham', N'cccccccccccccccccccc', CAST(N'2022-07-10' AS Date), 2, 249, 199, N'cccdddddddddddddd', 0, 0)
SET IDENTITY_INSERT [dbo].[service] OFF
GO
SET IDENTITY_INSERT [dbo].[service_image] ON 

INSERT [dbo].[service_image] ([image_id], [service_id], [image_link]) VALUES (1, 1, N'eye5.jpg')
INSERT [dbo].[service_image] ([image_id], [service_id], [image_link]) VALUES (2, 2, N'eye5.jpg')
INSERT [dbo].[service_image] ([image_id], [service_id], [image_link]) VALUES (3, 3, N'eye1.jpg')
INSERT [dbo].[service_image] ([image_id], [service_id], [image_link]) VALUES (4, 4, N'mouth4.jpg')
INSERT [dbo].[service_image] ([image_id], [service_id], [image_link]) VALUES (5, 5, N'mouth5.jpg')
INSERT [dbo].[service_image] ([image_id], [service_id], [image_link]) VALUES (6, 6, N'foot5.jpg')
INSERT [dbo].[service_image] ([image_id], [service_id], [image_link]) VALUES (7, 7, N'eye5.jpg')
INSERT [dbo].[service_image] ([image_id], [service_id], [image_link]) VALUES (8, 8, N'eye3.jpg')
INSERT [dbo].[service_image] ([image_id], [service_id], [image_link]) VALUES (9, 9, N'eye4.jpg')
INSERT [dbo].[service_image] ([image_id], [service_id], [image_link]) VALUES (10, 16, N'eye5.jpg')
INSERT [dbo].[service_image] ([image_id], [service_id], [image_link]) VALUES (11, 17, N'foot1.jpg')
INSERT [dbo].[service_image] ([image_id], [service_id], [image_link]) VALUES (12, 18, N'foot2.jpg')
INSERT [dbo].[service_image] ([image_id], [service_id], [image_link]) VALUES (13, 19, N'foot3.jpg')
INSERT [dbo].[service_image] ([image_id], [service_id], [image_link]) VALUES (14, 20, N'foot4.jpg')
INSERT [dbo].[service_image] ([image_id], [service_id], [image_link]) VALUES (15, 25, N'nose5.jpg')
INSERT [dbo].[service_image] ([image_id], [service_id], [image_link]) VALUES (16, 28, N'nose2.jpg')
INSERT [dbo].[service_image] ([image_id], [service_id], [image_link]) VALUES (17, 29, N'nose3.jpg')
INSERT [dbo].[service_image] ([image_id], [service_id], [image_link]) VALUES (18, 30, N'nose4.jpg')
INSERT [dbo].[service_image] ([image_id], [service_id], [image_link]) VALUES (19, 31, N'nose5.jpg')
INSERT [dbo].[service_image] ([image_id], [service_id], [image_link]) VALUES (20, 32, N'lung1.jpg')
INSERT [dbo].[service_image] ([image_id], [service_id], [image_link]) VALUES (21, 33, N'lung2.jpg')
INSERT [dbo].[service_image] ([image_id], [service_id], [image_link]) VALUES (22, 34, N'lung3.jpg')
INSERT [dbo].[service_image] ([image_id], [service_id], [image_link]) VALUES (23, 35, N'lung4.jpg')
INSERT [dbo].[service_image] ([image_id], [service_id], [image_link]) VALUES (24, 36, N'nose2.jpg')
INSERT [dbo].[service_image] ([image_id], [service_id], [image_link]) VALUES (25, 37, N'body1.jpg')
INSERT [dbo].[service_image] ([image_id], [service_id], [image_link]) VALUES (26, 38, N'body2.jpg')
INSERT [dbo].[service_image] ([image_id], [service_id], [image_link]) VALUES (27, 39, N'body3.jpg')
INSERT [dbo].[service_image] ([image_id], [service_id], [image_link]) VALUES (28, 40, N'body4.jpg')
INSERT [dbo].[service_image] ([image_id], [service_id], [image_link]) VALUES (29, 41, N'body5.jpg')
INSERT [dbo].[service_image] ([image_id], [service_id], [image_link]) VALUES (30, 42, N'body2.jpg')
INSERT [dbo].[service_image] ([image_id], [service_id], [image_link]) VALUES (31, 43, N'body1.jpg')
INSERT [dbo].[service_image] ([image_id], [service_id], [image_link]) VALUES (32, 44, N'foot2.jpg')
INSERT [dbo].[service_image] ([image_id], [service_id], [image_link]) VALUES (33, 45, N'nose1.jpg')
SET IDENTITY_INSERT [dbo].[service_image] OFF
GO
INSERT [dbo].[service_status] ([status_id], [service_id], [service_status]) VALUES (1, 1, 1)
INSERT [dbo].[service_status] ([status_id], [service_id], [service_status]) VALUES (2, 2, 0)
INSERT [dbo].[service_status] ([status_id], [service_id], [service_status]) VALUES (3, 3, 0)
INSERT [dbo].[service_status] ([status_id], [service_id], [service_status]) VALUES (4, 4, 0)
INSERT [dbo].[service_status] ([status_id], [service_id], [service_status]) VALUES (5, 5, 0)
INSERT [dbo].[service_status] ([status_id], [service_id], [service_status]) VALUES (6, 6, 0)
INSERT [dbo].[service_status] ([status_id], [service_id], [service_status]) VALUES (7, 7, 1)
INSERT [dbo].[service_status] ([status_id], [service_id], [service_status]) VALUES (8, 8, 1)
INSERT [dbo].[service_status] ([status_id], [service_id], [service_status]) VALUES (9, 9, 1)
INSERT [dbo].[service_status] ([status_id], [service_id], [service_status]) VALUES (10, 10, 1)
INSERT [dbo].[service_status] ([status_id], [service_id], [service_status]) VALUES (11, 11, 1)
INSERT [dbo].[service_status] ([status_id], [service_id], [service_status]) VALUES (12, 12, 1)
INSERT [dbo].[service_status] ([status_id], [service_id], [service_status]) VALUES (13, 13, 1)
INSERT [dbo].[service_status] ([status_id], [service_id], [service_status]) VALUES (14, 14, 1)
INSERT [dbo].[service_status] ([status_id], [service_id], [service_status]) VALUES (15, 15, 1)
INSERT [dbo].[service_status] ([status_id], [service_id], [service_status]) VALUES (16, 16, 1)
INSERT [dbo].[service_status] ([status_id], [service_id], [service_status]) VALUES (17, 17, 1)
INSERT [dbo].[service_status] ([status_id], [service_id], [service_status]) VALUES (18, 18, 1)
INSERT [dbo].[service_status] ([status_id], [service_id], [service_status]) VALUES (19, 19, 1)
INSERT [dbo].[service_status] ([status_id], [service_id], [service_status]) VALUES (20, 20, 1)
INSERT [dbo].[service_status] ([status_id], [service_id], [service_status]) VALUES (21, 21, 1)
INSERT [dbo].[service_status] ([status_id], [service_id], [service_status]) VALUES (22, 22, 1)
INSERT [dbo].[service_status] ([status_id], [service_id], [service_status]) VALUES (23, 23, 1)
INSERT [dbo].[service_status] ([status_id], [service_id], [service_status]) VALUES (24, 24, 1)
INSERT [dbo].[service_status] ([status_id], [service_id], [service_status]) VALUES (25, 25, 1)
INSERT [dbo].[service_status] ([status_id], [service_id], [service_status]) VALUES (26, 26, 1)
INSERT [dbo].[service_status] ([status_id], [service_id], [service_status]) VALUES (27, 27, 1)
INSERT [dbo].[service_status] ([status_id], [service_id], [service_status]) VALUES (28, 28, 1)
INSERT [dbo].[service_status] ([status_id], [service_id], [service_status]) VALUES (29, 29, 1)
INSERT [dbo].[service_status] ([status_id], [service_id], [service_status]) VALUES (30, 30, 1)
INSERT [dbo].[service_status] ([status_id], [service_id], [service_status]) VALUES (31, 31, 1)
INSERT [dbo].[service_status] ([status_id], [service_id], [service_status]) VALUES (32, 32, 1)
INSERT [dbo].[service_status] ([status_id], [service_id], [service_status]) VALUES (33, 33, 1)
INSERT [dbo].[service_status] ([status_id], [service_id], [service_status]) VALUES (34, 34, 1)
INSERT [dbo].[service_status] ([status_id], [service_id], [service_status]) VALUES (35, 35, 1)
INSERT [dbo].[service_status] ([status_id], [service_id], [service_status]) VALUES (36, 36, 1)
INSERT [dbo].[service_status] ([status_id], [service_id], [service_status]) VALUES (37, 37, 1)
INSERT [dbo].[service_status] ([status_id], [service_id], [service_status]) VALUES (38, 38, 1)
INSERT [dbo].[service_status] ([status_id], [service_id], [service_status]) VALUES (39, 39, 0)
INSERT [dbo].[service_status] ([status_id], [service_id], [service_status]) VALUES (40, 40, 0)
INSERT [dbo].[service_status] ([status_id], [service_id], [service_status]) VALUES (41, 41, 1)
INSERT [dbo].[service_status] ([status_id], [service_id], [service_status]) VALUES (42, 42, 0)
INSERT [dbo].[service_status] ([status_id], [service_id], [service_status]) VALUES (43, 43, 0)
INSERT [dbo].[service_status] ([status_id], [service_id], [service_status]) VALUES (44, 44, 0)
INSERT [dbo].[service_status] ([status_id], [service_id], [service_status]) VALUES (45, 45, 0)
GO
SET IDENTITY_INSERT [dbo].[setting] ON 

INSERT [dbo].[setting] ([setting_id], [setting_name], [setting_value], [setting_description], [setting_status]) VALUES (1, N'About', 29, N'Show information about web designer', 1)
INSERT [dbo].[setting] ([setting_id], [setting_name], [setting_value], [setting_description], [setting_status]) VALUES (2, N'Service List', 12, N'Show list of service', 1)
INSERT [dbo].[setting] ([setting_id], [setting_name], [setting_value], [setting_description], [setting_status]) VALUES (3, N'Hot Service', 1, N'Show top 4 hot services', 1)
INSERT [dbo].[setting] ([setting_id], [setting_name], [setting_value], [setting_description], [setting_status]) VALUES (4, N'Blog list', 4, N'Show list of blog ', 1)
INSERT [dbo].[setting] ([setting_id], [setting_name], [setting_value], [setting_description], [setting_status]) VALUES (5, N'Doctor', 5, N'Show list of doctor', 1)
INSERT [dbo].[setting] ([setting_id], [setting_name], [setting_value], [setting_description], [setting_status]) VALUES (6, N'Feedback', 10, N'Show list of feedback', 1)
INSERT [dbo].[setting] ([setting_id], [setting_name], [setting_value], [setting_description], [setting_status]) VALUES (8, N'User list', 12, N'Show list of user', 1)
INSERT [dbo].[setting] ([setting_id], [setting_name], [setting_value], [setting_description], [setting_status]) VALUES (9, N'Service managerment', 17, N'Show list of service ', 1)
INSERT [dbo].[setting] ([setting_id], [setting_name], [setting_value], [setting_description], [setting_status]) VALUES (10, N'Manager account', 20, N'Show list of account', 1)
INSERT [dbo].[setting] ([setting_id], [setting_name], [setting_value], [setting_description], [setting_status]) VALUES (11, N'Manager Blog', 12, N'Show list of Blog', 1)
INSERT [dbo].[setting] ([setting_id], [setting_name], [setting_value], [setting_description], [setting_status]) VALUES (12, N'Manager Reservation', 17, N'Show list of Reservation', 1)
INSERT [dbo].[setting] ([setting_id], [setting_name], [setting_value], [setting_description], [setting_status]) VALUES (13, N'Manager Slide', 20, N'Show list of slide', 1)
INSERT [dbo].[setting] ([setting_id], [setting_name], [setting_value], [setting_description], [setting_status]) VALUES (14, N'Manger Feedback', 11, N'Show list of feedback', 1)
INSERT [dbo].[setting] ([setting_id], [setting_name], [setting_value], [setting_description], [setting_status]) VALUES (15, N'Nguyen Ngoc Hoan', 23, N'test', 1)
INSERT [dbo].[setting] ([setting_id], [setting_name], [setting_value], [setting_description], [setting_status]) VALUES (16, N'Nguyen Ngoc Khoa', 12, N'test 2', 1)
INSERT [dbo].[setting] ([setting_id], [setting_name], [setting_value], [setting_description], [setting_status]) VALUES (17, N'test final', 12, N'test 2', 1)
INSERT [dbo].[setting] ([setting_id], [setting_name], [setting_value], [setting_description], [setting_status]) VALUES (18, N'Nguyen Ngoc Khoa', 13, N'test final', 0)
INSERT [dbo].[setting] ([setting_id], [setting_name], [setting_value], [setting_description], [setting_status]) VALUES (19, N'Setting test', 12, N'Setting test', 0)
SET IDENTITY_INSERT [dbo].[setting] OFF
GO
SET IDENTITY_INSERT [dbo].[slider] ON 

INSERT [dbo].[slider] ([slider_id], [slider_title], [category_id], [slider_status], [service_id], [notes]) VALUES (1, N'Compose bold, clear, mistake-free writing with Grammarly new AI-powered desktop', 1, 1, 1, N'test1')
INSERT [dbo].[slider] ([slider_id], [slider_title], [category_id], [slider_status], [service_id], [notes]) VALUES (2, N'Compose bold, clear, mistake-free writing with Grammarly new AI-powered desktop', 2, 0, 2, N'test1')
INSERT [dbo].[slider] ([slider_id], [slider_title], [category_id], [slider_status], [service_id], [notes]) VALUES (3, N'test3', 3, 0, 3, N'test1')
INSERT [dbo].[slider] ([slider_id], [slider_title], [category_id], [slider_status], [service_id], [notes]) VALUES (4, N'test4', 4, 0, 4, N'test1')
INSERT [dbo].[slider] ([slider_id], [slider_title], [category_id], [slider_status], [service_id], [notes]) VALUES (5, N'test5', 5, 0, 5, N'test1')
INSERT [dbo].[slider] ([slider_id], [slider_title], [category_id], [slider_status], [service_id], [notes]) VALUES (6, N'test7', 6, 0, 6, N'test1')
INSERT [dbo].[slider] ([slider_id], [slider_title], [category_id], [slider_status], [service_id], [notes]) VALUES (7, N'test7', 6, 1, 7, N'test1')
INSERT [dbo].[slider] ([slider_id], [slider_title], [category_id], [slider_status], [service_id], [notes]) VALUES (8, N'test8', 4, 0, 8, N'test1')
INSERT [dbo].[slider] ([slider_id], [slider_title], [category_id], [slider_status], [service_id], [notes]) VALUES (9, N'test9', 4, 0, 9, N'Our Intensive English Program is your chance to improve your English skills.')
INSERT [dbo].[slider] ([slider_id], [slider_title], [category_id], [slider_status], [service_id], [notes]) VALUES (16, N'test16', 4, 1, 16, N'Our Intensive English Program is your chance to improve your English skills.')
INSERT [dbo].[slider] ([slider_id], [slider_title], [category_id], [slider_status], [service_id], [notes]) VALUES (17, N'test17', 4, 1, 17, N'Our Intensive English Program is your chance to improve your English skills.')
INSERT [dbo].[slider] ([slider_id], [slider_title], [category_id], [slider_status], [service_id], [notes]) VALUES (18, N'test18', 5, 0, 18, N'Our Intensive English Program is your chance to improve your English skills.')
INSERT [dbo].[slider] ([slider_id], [slider_title], [category_id], [slider_status], [service_id], [notes]) VALUES (19, N'test19', 4, 1, 19, N'Our Intensive English Program is your chance to improve your English skills.')
INSERT [dbo].[slider] ([slider_id], [slider_title], [category_id], [slider_status], [service_id], [notes]) VALUES (20, N'test20', 4, 1, 20, N'Our Intensive English Program is your chance to improve your English skills.')
INSERT [dbo].[slider] ([slider_id], [slider_title], [category_id], [slider_status], [service_id], [notes]) VALUES (25, N'test25', 2, 0, 25, N'Our Intensive English Program is your chance to improve your English skills.')
INSERT [dbo].[slider] ([slider_id], [slider_title], [category_id], [slider_status], [service_id], [notes]) VALUES (28, N'test27', 3, 0, 28, N'Our Intensive English Program is your chance to improve your English skills.')
INSERT [dbo].[slider] ([slider_id], [slider_title], [category_id], [slider_status], [service_id], [notes]) VALUES (29, N'test28', 2, 0, 29, N'Our Intensive English Program is your chance to improve your English skills.')
INSERT [dbo].[slider] ([slider_id], [slider_title], [category_id], [slider_status], [service_id], [notes]) VALUES (30, N'test29', 2, 0, 30, N'Our Intensive English Program is your chance to improve your English skills.')
INSERT [dbo].[slider] ([slider_id], [slider_title], [category_id], [slider_status], [service_id], [notes]) VALUES (31, N'test30', 4, 0, 31, N'Our Intensive English Program is your chance to improve your English skills.')
INSERT [dbo].[slider] ([slider_id], [slider_title], [category_id], [slider_status], [service_id], [notes]) VALUES (32, N'test31', 5, 0, 32, N'Our Intensive English Program is your chance to improve your English skills.')
INSERT [dbo].[slider] ([slider_id], [slider_title], [category_id], [slider_status], [service_id], [notes]) VALUES (33, N'test32', 5, 0, 33, N'Our Intensive English Program is your chance to improve your English skills.')
INSERT [dbo].[slider] ([slider_id], [slider_title], [category_id], [slider_status], [service_id], [notes]) VALUES (34, N'test33', 3, 0, 34, N'Our Intensive English Program is your chance to improve your English skills.')
INSERT [dbo].[slider] ([slider_id], [slider_title], [category_id], [slider_status], [service_id], [notes]) VALUES (35, N'test34', 6, 0, 35, N'Our Intensive English Program is your chance to improve your English skills.')
INSERT [dbo].[slider] ([slider_id], [slider_title], [category_id], [slider_status], [service_id], [notes]) VALUES (36, N'test35', 3, 0, 36, N'Our Intensive English Program is your chance to improve your English skills.')
SET IDENTITY_INSERT [dbo].[slider] OFF
GO
INSERT [dbo].[slider_services] ([slider_id], [service_id]) VALUES (1, 1)
INSERT [dbo].[slider_services] ([slider_id], [service_id]) VALUES (2, 2)
INSERT [dbo].[slider_services] ([slider_id], [service_id]) VALUES (3, 3)
INSERT [dbo].[slider_services] ([slider_id], [service_id]) VALUES (4, 4)
INSERT [dbo].[slider_services] ([slider_id], [service_id]) VALUES (5, 5)
INSERT [dbo].[slider_services] ([slider_id], [service_id]) VALUES (6, 6)
INSERT [dbo].[slider_services] ([slider_id], [service_id]) VALUES (7, 7)
INSERT [dbo].[slider_services] ([slider_id], [service_id]) VALUES (8, 8)
INSERT [dbo].[slider_services] ([slider_id], [service_id]) VALUES (9, 9)
INSERT [dbo].[slider_services] ([slider_id], [service_id]) VALUES (10, 10)
INSERT [dbo].[slider_services] ([slider_id], [service_id]) VALUES (11, 11)
INSERT [dbo].[slider_services] ([slider_id], [service_id]) VALUES (12, 12)
INSERT [dbo].[slider_services] ([slider_id], [service_id]) VALUES (13, 13)
INSERT [dbo].[slider_services] ([slider_id], [service_id]) VALUES (14, 14)
INSERT [dbo].[slider_services] ([slider_id], [service_id]) VALUES (15, 15)
INSERT [dbo].[slider_services] ([slider_id], [service_id]) VALUES (16, 16)
INSERT [dbo].[slider_services] ([slider_id], [service_id]) VALUES (17, 17)
INSERT [dbo].[slider_services] ([slider_id], [service_id]) VALUES (18, 18)
INSERT [dbo].[slider_services] ([slider_id], [service_id]) VALUES (19, 19)
INSERT [dbo].[slider_services] ([slider_id], [service_id]) VALUES (20, 20)
INSERT [dbo].[slider_services] ([slider_id], [service_id]) VALUES (21, 21)
INSERT [dbo].[slider_services] ([slider_id], [service_id]) VALUES (22, 22)
INSERT [dbo].[slider_services] ([slider_id], [service_id]) VALUES (23, 23)
INSERT [dbo].[slider_services] ([slider_id], [service_id]) VALUES (24, 24)
INSERT [dbo].[slider_services] ([slider_id], [service_id]) VALUES (25, 25)
INSERT [dbo].[slider_services] ([slider_id], [service_id]) VALUES (26, 26)
INSERT [dbo].[slider_services] ([slider_id], [service_id]) VALUES (27, 27)
INSERT [dbo].[slider_services] ([slider_id], [service_id]) VALUES (28, 28)
INSERT [dbo].[slider_services] ([slider_id], [service_id]) VALUES (29, 29)
INSERT [dbo].[slider_services] ([slider_id], [service_id]) VALUES (30, 30)
INSERT [dbo].[slider_services] ([slider_id], [service_id]) VALUES (31, 31)
INSERT [dbo].[slider_services] ([slider_id], [service_id]) VALUES (32, 32)
INSERT [dbo].[slider_services] ([slider_id], [service_id]) VALUES (33, 33)
INSERT [dbo].[slider_services] ([slider_id], [service_id]) VALUES (34, 34)
INSERT [dbo].[slider_services] ([slider_id], [service_id]) VALUES (35, 35)
INSERT [dbo].[slider_services] ([slider_id], [service_id]) VALUES (36, 36)
INSERT [dbo].[slider_services] ([slider_id], [service_id]) VALUES (37, 37)
INSERT [dbo].[slider_services] ([slider_id], [service_id]) VALUES (38, 38)
INSERT [dbo].[slider_services] ([slider_id], [service_id]) VALUES (39, 39)
INSERT [dbo].[slider_services] ([slider_id], [service_id]) VALUES (40, 40)
INSERT [dbo].[slider_services] ([slider_id], [service_id]) VALUES (41, 41)
GO
SET IDENTITY_INSERT [dbo].[user] ON 

INSERT [dbo].[user] ([user_id], [user_fullname], [user_gender], [user_address], [user_password], [user_email], [user_phone], [role_id], [user_status], [user_image]) VALUES (13, N'Nguyen Ngoc Hoan', 1, N'Ha Noi', N'HYCWSXM', N'datkmhe150913@fpt.edu.vn', N'0869510920', 1, 1, N'hoanonfire.jpg')
INSERT [dbo].[user] ([user_id], [user_fullname], [user_gender], [user_address], [user_password], [user_email], [user_phone], [role_id], [user_status], [user_image]) VALUES (16, N'Allistir Marzello', 1, N'5 Graceland Court', N'BWfaZBabf', N'amarzello3@merriam-webster.com', N'558 530 3549', 4, 1, N'captain1.jpg')
INSERT [dbo].[user] ([user_id], [user_fullname], [user_gender], [user_address], [user_password], [user_email], [user_phone], [role_id], [user_status], [user_image]) VALUES (17, N'Alma Gecks', 0, N'071 Del Sol Hill', N'BWfaZBabf', N'agecks4@yale.edu', N'732 422 5190', 2, 0, N'scarletwitch.jpg')
INSERT [dbo].[user] ([user_id], [user_fullname], [user_gender], [user_address], [user_password], [user_email], [user_phone], [role_id], [user_status], [user_image]) VALUES (18, N'Mohandis Raun', 1, N'7133 Dapin Drive', N'suEOVB', N'mraun5@about.com', N'386 286 5839', 3, 0, N'hao.jpg')
INSERT [dbo].[user] ([user_id], [user_fullname], [user_gender], [user_address], [user_password], [user_email], [user_phone], [role_id], [user_status], [user_image]) VALUES (19, N'Mohandis Raunis', 0, N'74 Meadow Valley Lane', N'Fk8bitn6P9', N'gbidmead6@amazon.co.jp', N'896 768 5609', 4, 0, N'rocket.jpg')
INSERT [dbo].[user] ([user_id], [user_fullname], [user_gender], [user_address], [user_password], [user_email], [user_phone], [role_id], [user_status], [user_image]) VALUES (20, N'Lilyan Norwell', 1, N'8 Utah Court', N'UTUwSE5', N'lnorwell7@wired.com', N'204 590 8203', 2, 0, N'wintersoldier.jpg')
INSERT [dbo].[user] ([user_id], [user_fullname], [user_gender], [user_address], [user_password], [user_email], [user_phone], [role_id], [user_status], [user_image]) VALUES (21, N'Simone Renyard', 0, N'97838 4th Court', N'JUJc8wlq', N'srenyard8@studiopress.com', N'570 151 8768', 3, 0, N'hulk.jpg')
INSERT [dbo].[user] ([user_id], [user_fullname], [user_gender], [user_address], [user_password], [user_email], [user_phone], [role_id], [user_status], [user_image]) VALUES (22, N'Morena Opdenort', 1, N'07930 Shopko Park', N'2FDgPJnUeth2', N'mopdenort9@istockphoto.com', N'462 547 8132', 4, 1, N'blackpanther.jpg')
INSERT [dbo].[user] ([user_id], [user_fullname], [user_gender], [user_address], [user_password], [user_email], [user_phone], [role_id], [user_status], [user_image]) VALUES (23, N'Terrance Greyes', 0, N'251 Steensland Junction', N'a5nDdPkKlbM', N'tgreyesa@redcross.org', N'265 670 0071', 2, 0, N'scarletwitch1.jpg')
INSERT [dbo].[user] ([user_id], [user_fullname], [user_gender], [user_address], [user_password], [user_email], [user_phone], [role_id], [user_status], [user_image]) VALUES (24, N'Darius Castilla', 1, N'54455 Manitowish Terrace', N'UbWzOElDwn', N'dcastillab@acquirethisname.com', N'794 537 1812', 3, 1, N'hawkeye.jpg')
INSERT [dbo].[user] ([user_id], [user_fullname], [user_gender], [user_address], [user_password], [user_email], [user_phone], [role_id], [user_status], [user_image]) VALUES (25, N'Roi Bowbrick', 0, N'4 Caliangt Avenue', N'ZMhzbS2iMqT', N'ckarlmannc@qq.com', N'164 790 7825', 4, 0, N'blackwidow.jpg')
INSERT [dbo].[user] ([user_id], [user_fullname], [user_gender], [user_address], [user_password], [user_email], [user_phone], [role_id], [user_status], [user_image]) VALUES (26, N'Mikkel Ricson', 1, N'6016 Bellgrove Circle', N'8xmzBv', N'rbowbrickd@mit.edu', N'632 511 0253', 2, 0, N'captain1.jpg')
INSERT [dbo].[user] ([user_id], [user_fullname], [user_gender], [user_address], [user_password], [user_email], [user_phone], [role_id], [user_status], [user_image]) VALUES (32, N'Nguyễn Ngọc Khoa', 1, N'123', N'123', N'khoa@gmail.com', N'123', 2, 1, N'hoanonfire.jpg')
INSERT [dbo].[user] ([user_id], [user_fullname], [user_gender], [user_address], [user_password], [user_email], [user_phone], [role_id], [user_status], [user_image]) VALUES (33, N'Nguyen Ngoc Hoan', 1, N'Ha noi', N'matma123', N'hoannnhe151308@fpt.edu.vn', N'0869510920', 5, 1, N'hoanonfire.jpg')
INSERT [dbo].[user] ([user_id], [user_fullname], [user_gender], [user_address], [user_password], [user_email], [user_phone], [role_id], [user_status], [user_image]) VALUES (35, N'Nguyen Ngoc Hoan', 1, N'Ha noi', N'khoadeptrai', N'khoannhe153156@fpt.edu.vn', N'0869511920', 1, 1, N'hao.jpg')
INSERT [dbo].[user] ([user_id], [user_fullname], [user_gender], [user_address], [user_password], [user_email], [user_phone], [role_id], [user_status], [user_image]) VALUES (38, N'Nguyễn Ngọc Hoàn', 1, N'3123', N'12312', N'Hoan@gmail.com', N'123', 1, 1, N'hoanonfire.jpg')
INSERT [dbo].[user] ([user_id], [user_fullname], [user_gender], [user_address], [user_password], [user_email], [user_phone], [role_id], [user_status], [user_image]) VALUES (40, N'Linh Ngu', 1, N'Hanoi', N'CENPLTI', N'sktn@gmail.com', N'0869510920', 1, 1, N'hoanonfire.jpg')
INSERT [dbo].[user] ([user_id], [user_fullname], [user_gender], [user_address], [user_password], [user_email], [user_phone], [role_id], [user_status], [user_image]) VALUES (47, N'Nguyen Phong Hao', 1, N'Hanoi', N'12345', N'hao@gmail.com', N'0879650910', 4, 1, N'hoanonfire.jpg')
INSERT [dbo].[user] ([user_id], [user_fullname], [user_gender], [user_address], [user_password], [user_email], [user_phone], [role_id], [user_status], [user_image]) VALUES (48, N'Nguyen Huu Quyet', 1, N'Hanoi', N'12345', N'quyet@gmail.com', N'0896570921', 4, 1, NULL)
SET IDENTITY_INSERT [dbo].[user] OFF
GO
ALTER TABLE [dbo].[blogs]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[user] ([user_id])
GO
ALTER TABLE [dbo].[blogs]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[user] ([user_id])
GO
ALTER TABLE [dbo].[medicine]  WITH CHECK ADD FOREIGN KEY([medicine_cateId])
REFERENCES [dbo].[categoryMedicine] ([cateMedicine_id])
GO
ALTER TABLE [dbo].[prescription_details]  WITH CHECK ADD FOREIGN KEY([medical_id])
REFERENCES [dbo].[reservation_medical] ([medical_id])
GO
ALTER TABLE [dbo].[prescription_details]  WITH CHECK ADD FOREIGN KEY([medicine_id])
REFERENCES [dbo].[medicine] ([medicine_id])
GO
ALTER TABLE [dbo].[reservation]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[user] ([user_id])
GO
ALTER TABLE [dbo].[reservation]  WITH CHECK ADD FOREIGN KEY([user_id])
REFERENCES [dbo].[user] ([user_id])
GO
ALTER TABLE [dbo].[reservation_detail]  WITH CHECK ADD FOREIGN KEY([category_id])
REFERENCES [dbo].[category] ([category_id])
GO
ALTER TABLE [dbo].[reservation_detail]  WITH CHECK ADD FOREIGN KEY([category_id])
REFERENCES [dbo].[category] ([category_id])
GO
ALTER TABLE [dbo].[reservation_detail]  WITH CHECK ADD FOREIGN KEY([doctor_id])
REFERENCES [dbo].[user] ([user_id])
GO
ALTER TABLE [dbo].[reservation_detail]  WITH CHECK ADD FOREIGN KEY([doctor_id])
REFERENCES [dbo].[user] ([user_id])
GO
ALTER TABLE [dbo].[reservation_detail]  WITH CHECK ADD FOREIGN KEY([nurse_id])
REFERENCES [dbo].[user] ([user_id])
GO
ALTER TABLE [dbo].[reservation_detail]  WITH CHECK ADD FOREIGN KEY([nurse_id])
REFERENCES [dbo].[user] ([user_id])
GO
ALTER TABLE [dbo].[reservation_detail]  WITH CHECK ADD FOREIGN KEY([reservation_id])
REFERENCES [dbo].[reservation] ([reservation_id])
GO
ALTER TABLE [dbo].[reservation_detail]  WITH CHECK ADD FOREIGN KEY([reservation_id])
REFERENCES [dbo].[reservation] ([reservation_id])
GO
ALTER TABLE [dbo].[reservation_detail]  WITH CHECK ADD FOREIGN KEY([service_id])
REFERENCES [dbo].[service] ([service_id])
GO
ALTER TABLE [dbo].[reservation_detail]  WITH CHECK ADD FOREIGN KEY([service_id])
REFERENCES [dbo].[service] ([service_id])
GO
ALTER TABLE [dbo].[reservation_medical]  WITH CHECK ADD FOREIGN KEY([doctor_id])
REFERENCES [dbo].[user] ([user_id])
GO
ALTER TABLE [dbo].[reservation_medical]  WITH CHECK ADD FOREIGN KEY([reservation_detail_id])
REFERENCES [dbo].[reservation_detail] ([reservation_detail_id])
GO
ALTER TABLE [dbo].[service]  WITH CHECK ADD FOREIGN KEY([category_id])
REFERENCES [dbo].[category] ([category_id])
GO
ALTER TABLE [dbo].[service]  WITH CHECK ADD FOREIGN KEY([category_id])
REFERENCES [dbo].[category] ([category_id])
GO
ALTER TABLE [dbo].[service_image]  WITH CHECK ADD FOREIGN KEY([service_id])
REFERENCES [dbo].[service] ([service_id])
GO
ALTER TABLE [dbo].[service_image]  WITH CHECK ADD FOREIGN KEY([service_id])
REFERENCES [dbo].[service] ([service_id])
GO
ALTER TABLE [dbo].[slider]  WITH CHECK ADD  CONSTRAINT [FK__slider__category__5EBF139D] FOREIGN KEY([category_id])
REFERENCES [dbo].[category] ([category_id])
GO
ALTER TABLE [dbo].[slider] CHECK CONSTRAINT [FK__slider__category__5EBF139D]
GO
ALTER TABLE [dbo].[slider]  WITH CHECK ADD  CONSTRAINT [FK__slider__category__5FB337D6] FOREIGN KEY([category_id])
REFERENCES [dbo].[category] ([category_id])
GO
ALTER TABLE [dbo].[slider] CHECK CONSTRAINT [FK__slider__category__5FB337D6]
GO
ALTER TABLE [dbo].[user]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([role_id])
GO
ALTER TABLE [dbo].[user]  WITH CHECK ADD FOREIGN KEY([role_id])
REFERENCES [dbo].[role] ([role_id])
GO
USE [master]
GO
ALTER DATABASE [ChildrenCare] SET  READ_WRITE 
GO
