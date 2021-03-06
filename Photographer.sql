USE [photo]
GO
/****** Object:  Table [dbo].[contact]    Script Date: 6/17/2021 1:53:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[contact](
	[telephone] [nvarchar](max) NULL,
	[email] [nvarchar](max) NULL,
	[face_url] [nvarchar](max) NULL,
	[twitter_url] [nvarchar](max) NULL,
	[google_url] [nvarchar](max) NULL,
	[about] [nvarchar](max) NULL,
	[address] [nvarchar](max) NULL,
	[city] [nvarchar](max) NULL,
	[country] [nvarchar](max) NULL,
	[map_url] [nvarchar](max) NULL,
	[image_main] [nvarchar](max) NULL,
	[icon_face] [nvarchar](max) NULL,
	[icon_twitter] [nvarchar](max) NULL,
	[icon_google] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[galery]    Script Date: 6/17/2021 1:53:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[galery](
	[ID] [int] NOT NULL,
	[title] [nvarchar](max) NULL,
	[description] [nvarchar](max) NULL,
	[name] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[image]    Script Date: 6/17/2021 1:53:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[image](
	[id] [int] NOT NULL,
	[galery_id] [int] NULL,
	[image_url] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Share]    Script Date: 6/17/2021 1:53:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Share](
	[icon] [varchar](50) NULL,
	[socialNetwork] [varchar](50) NULL,
	[url] [nvarchar](max) NULL
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[view]    Script Date: 6/17/2021 1:53:18 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[view](
	[view] [int] NULL
) ON [PRIMARY]
GO
INSERT [dbo].[contact] ([telephone], [email], [face_url], [twitter_url], [google_url], [about], [address], [city], [country], [map_url], [image_main], [icon_face], [icon_twitter], [icon_google]) VALUES (N'094567891', N'HLhightech@jhkj.com', N'https://www.facebook.com/', N'https://twitter.com/?lang=vi', N'https://www.google.com/', N'About me
Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan et iusto odio dignissim qui blandit praesent luptatum zzril delenit augue duis dolore te feugait nulla facilisi. Nam liber tempor cum soluta nobis eleifend option congue nihil imperdiet doming id quod mazim', N'Thach Hoa, Thach That', N'Ha Noi', N'Viet Nam', N'https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d59594.794769840424!2d105.47535426247572!3d21.005674097203155!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x31345bb0e775bfc9%3A0x6c07802835338f8f!2sHoa%20Lac%20Hi-tech%20Park%20Management%20Board!5e0!3m2!1sen!2s!4v1623310729838!5m2!1sen!2s', N'homeImage.jpg', N'face.png', N'twitter.png', N'google.png')
GO
INSERT [dbo].[galery] ([ID], [title], [description], [name]) VALUES (1, N'View Gallery 1', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation1', N'Galery 1')
INSERT [dbo].[galery] ([ID], [title], [description], [name]) VALUES (2, N'View Gallery 2', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation2', N'Galery 2')
INSERT [dbo].[galery] ([ID], [title], [description], [name]) VALUES (3, N'View Gallery 3', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation3', N'Galery 3')
INSERT [dbo].[galery] ([ID], [title], [description], [name]) VALUES (4, N'View Gallery 4', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation4', N'Galery 4')
INSERT [dbo].[galery] ([ID], [title], [description], [name]) VALUES (5, N'View Gallery 5', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation5', N'Galery 5')
INSERT [dbo].[galery] ([ID], [title], [description], [name]) VALUES (6, N'View Gallery 6', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation6', N'Galery 6')
INSERT [dbo].[galery] ([ID], [title], [description], [name]) VALUES (7, N'View Gallery 7', N'Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation7', N'Galery 7')
GO
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (1, 1, N'img1.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (2, 1, N'img2.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (3, 1, N'img3.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (4, 1, N'img4.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (5, 1, N'img5.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (6, 1, N'img8.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (7, 1, N'img7.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (8, 1, N'img6.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (9, 2, N'img2.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (10, 2, N'img3.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (11, 2, N'img5.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (12, 2, N'img4.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (13, 2, N'img1.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (14, 2, N'img7.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (15, 2, N'img6.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (16, 2, N'img8.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (17, 3, N'img3.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (18, 3, N'img5.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (19, 3, N'img2.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (20, 3, N'img4.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (21, 3, N'img1.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (22, 3, N'img6.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (23, 3, N'img8.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (24, 3, N'img7.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (25, 4, N'img4.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (26, 4, N'img1.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (27, 4, N'img5.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (28, 4, N'img6.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (29, 4, N'img8.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (30, 4, N'img3.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (31, 4, N'img7.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (32, 4, N'img2.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (33, 5, N'img5.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (34, 5, N'img2.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (35, 5, N'img1.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (36, 5, N'img4.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (37, 5, N'img3.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (38, 5, N'img1.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (39, 5, N'img5.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (40, 5, N'img1.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (41, 6, N'img2.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (42, 6, N'img1.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (43, 6, N'img3.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (44, 6, N'img5.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (45, 6, N'img1.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (46, 6, N'img4.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (47, 6, N'img1.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (48, 6, N'img2.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (49, 7, N'img1.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (50, 7, N'img2.jpg')
INSERT [dbo].[image] ([id], [galery_id], [image_url]) VALUES (51, 7, N'img3.jpg')
GO
INSERT [dbo].[Share] ([icon], [socialNetwork], [url]) VALUES (N'face.png', N'Facebook', N'https://www.facebook.com/')
INSERT [dbo].[Share] ([icon], [socialNetwork], [url]) VALUES (N'twitter.png', N'Twitter', N'https://twitter.com/?lang=vi')
INSERT [dbo].[Share] ([icon], [socialNetwork], [url]) VALUES (N'google.png', N'Google', N'https://www.google.com/')
GO
INSERT [dbo].[view] ([view]) VALUES (236932)
GO
