IF (OBJECT_ID('kunsthåndværk_user_id_fkey', 'F') IS NOT NULL)
BEGIN
ALTER TABLE [kunsthåndværk] DROP	CONSTRAINT [kunsthåndværk_user_id_fkey]
END
GO

IF (OBJECT_ID('barcodes_product_id_fkey', 'F') IS NOT NULL)
BEGIN
ALTER TABLE [barcodes] DROP	CONSTRAINT [barcodes_product_id_fkey]
END
GO

IF (OBJECT_ID('abc_posts_user_id_fkey', 'F') IS NOT NULL)
BEGIN
ALTER TABLE [abc_posts] DROP CONSTRAINT [abc_posts_user_id_fkey]
END
GO

IF (OBJECT_ID('abc_posts_category_id_fkey', 'F') IS NOT NULL)
BEGIN
ALTER TABLE [abc_posts] DROP CONSTRAINT [abc_posts_category_id_fkey]
END
GO

IF (OBJECT_ID('post_tags_tag_id_fkey', 'F') IS NOT NULL)
BEGIN
ALTER TABLE [post_tags] DROP	CONSTRAINT [post_tags_tag_id_fkey]
END
GO

IF (OBJECT_ID('post_tags_post_id_fkey', 'F') IS NOT NULL)
BEGIN
ALTER TABLE [post_tags] DROP	CONSTRAINT [post_tags_post_id_fkey]
END
GO

IF (OBJECT_ID('comments_post_id_fkey', 'F') IS NOT NULL)
BEGIN
ALTER TABLE [comments] DROP	CONSTRAINT [comments_post_id_fkey]
END
GO

IF (OBJECT_ID('comments_category_id_fkey', 'F') IS NOT NULL)
BEGIN
ALTER TABLE [comments] DROP	CONSTRAINT [comments_category_id_fkey]
END
GO

IF (OBJECT_ID('barcodes2', 'U') IS NOT NULL)
BEGIN
DROP TABLE [barcodes2]
END
GO

IF (OBJECT_ID('barcodes', 'U') IS NOT NULL)
BEGIN
DROP TABLE [barcodes]
END
GO

IF (OBJECT_ID('products', 'U') IS NOT NULL)
BEGIN
DROP TABLE [products]
END
GO

IF (OBJECT_ID('events', 'U') IS NOT NULL)
BEGIN
DROP TABLE [events]
END
GO

IF (OBJECT_ID('countries', 'U') IS NOT NULL)
BEGIN
DROP TABLE [countries]
END
GO

IF (OBJECT_ID('users', 'U') IS NOT NULL)
BEGIN
DROP TABLE [users]
END
GO

IF (OBJECT_ID('tags', 'U') IS NOT NULL)
BEGIN
DROP TABLE [tags]
END
GO

IF (OBJECT_ID('abc_posts', 'U') IS NOT NULL)
BEGIN
DROP TABLE [abc_posts]
END
GO

IF (OBJECT_ID('post_tags', 'U') IS NOT NULL)
BEGIN
DROP TABLE [post_tags]
END
GO

IF (OBJECT_ID('comments', 'U') IS NOT NULL)
BEGIN
DROP TABLE [comments]
END
GO

IF (OBJECT_ID('categories', 'U') IS NOT NULL)
BEGIN
DROP TABLE [categories]
END
GO

IF (OBJECT_ID('tag_usage', 'V') IS NOT NULL)
BEGIN
DROP VIEW [tag_usage]
END
GO

IF (OBJECT_ID('kunsthåndværk', 'U') IS NOT NULL)
BEGIN
DROP TABLE [kunsthåndværk]
END
GO

IF (OBJECT_ID('invisibles', 'U') IS NOT NULL)
BEGIN
DROP TABLE [invisibles]
END
GO

IF (OBJECT_ID('nopk', 'U') IS NOT NULL)
BEGIN
DROP TABLE [nopk]
END
GO

DROP SEQUENCE IF EXISTS [categories_id_seq]
GO
CREATE SEQUENCE [categories_id_seq] AS int START WITH 1 INCREMENT BY 1 NO CACHE
GO

CREATE TABLE [categories](
	[id] [int] NOT NULL CONSTRAINT [categories_id_def] DEFAULT NEXT VALUE FOR [categories_id_seq],
	[name] [nvarchar](255) NOT NULL,
	[icon] [image],
	CONSTRAINT [categories_pkey] PRIMARY KEY CLUSTERED([id] ASC)
)
GO

DROP SEQUENCE IF EXISTS [comments_id_seq]
GO
CREATE SEQUENCE [comments_id_seq] AS bigint START WITH 1 INCREMENT BY 1 NO CACHE
GO

CREATE TABLE [comments](
	[id] [bigint] NOT NULL CONSTRAINT [comments_id_def] DEFAULT NEXT VALUE FOR [comments_id_seq],
	[post_id] [int] NOT NULL,
	[message] [nvarchar](255) NOT NULL,
	[category_id] [int] NOT NULL,
	CONSTRAINT [comments_pkey] PRIMARY KEY CLUSTERED([id] ASC)
)
GO

DROP SEQUENCE IF EXISTS [post_tags_id_seq]
GO
CREATE SEQUENCE [post_tags_id_seq] AS int START WITH 1 INCREMENT BY 1 NO CACHE
GO

CREATE TABLE [post_tags](
	[id] [int] NOT NULL CONSTRAINT [post_tags_id_def] DEFAULT NEXT VALUE FOR [post_tags_id_seq],
	[post_id] [int] NOT NULL,
	[tag_id] [int] NOT NULL,
	CONSTRAINT [post_tags_pkey] PRIMARY KEY CLUSTERED([id] ASC)
)
GO

DROP SEQUENCE IF EXISTS [abc_posts_id_seq]
GO
CREATE SEQUENCE [abc_posts_id_seq] AS int START WITH 1 INCREMENT BY 1 NO CACHE
GO

CREATE TABLE [abc_posts](
	[abc_id] [int] NOT NULL CONSTRAINT [abc_posts_id_def] DEFAULT NEXT VALUE FOR [abc_posts_id_seq],
	[abc_user_id] [int] NOT NULL,
	[abc_category_id] [int] NOT NULL,
	[abc_content] [nvarchar](255) NOT NULL,
	CONSTRAINT [abc_posts_pkey] PRIMARY KEY CLUSTERED([abc_id] ASC)
)
GO

DROP SEQUENCE IF EXISTS [tags_id_seq]
GO
CREATE SEQUENCE [tags_id_seq] AS int START WITH 1 INCREMENT BY 1 NO CACHE
GO

CREATE TABLE [tags](
	[id] [int] NOT NULL CONSTRAINT [tags_id_def] DEFAULT NEXT VALUE FOR [tags_id_seq],
	[name] [nvarchar](255) NOT NULL,
	[is_important] [bit] NOT NULL,
	CONSTRAINT [tags_pkey] PRIMARY KEY CLUSTERED([id] ASC)
)
GO

DROP SEQUENCE IF EXISTS [users_id_seq]
GO
CREATE SEQUENCE [users_id_seq] AS int START WITH 1 INCREMENT BY 1 NO CACHE
GO

CREATE TABLE [users](
	[id] [int] NOT NULL CONSTRAINT [users_id_def] DEFAULT NEXT VALUE FOR [users_id_seq],
	[username] [nvarchar](255) NOT NULL,
	[password] [nvarchar](255) NOT NULL,
	[api_key] [nvarchar](255) NULL,
	[location] [geometry],
	CONSTRAINT [users_pkey] PRIMARY KEY CLUSTERED([id] ASC)
)
GO

DROP SEQUENCE IF EXISTS [countries_id_seq]
GO
CREATE SEQUENCE [countries_id_seq] AS int START WITH 1 INCREMENT BY 1 NO CACHE
GO

CREATE TABLE [countries](
	[id] [int] NOT NULL CONSTRAINT [countries_id_def] DEFAULT NEXT VALUE FOR [countries_id_seq],
	[name] [nvarchar](255) NOT NULL,
	[shape] [geometry] NOT NULL,
	CONSTRAINT [countries_pkey] PRIMARY KEY CLUSTERED([id] ASC)
)
GO

DROP SEQUENCE IF EXISTS [events_id_seq]
GO
CREATE SEQUENCE [events_id_seq] AS int START WITH 1 INCREMENT BY 1 NO CACHE
GO

CREATE TABLE [events](
	[id] [int] NOT NULL CONSTRAINT [events_id_def] DEFAULT NEXT VALUE FOR [events_id_seq],
	[name] [nvarchar](255) NOT NULL,
	[datetime] [datetime2](0),
	[visitors] [bigint],
	CONSTRAINT [events_pkey] PRIMARY KEY CLUSTERED([id] ASC)
)
GO

CREATE VIEW [tag_usage]
AS
SELECT top 100 PERCENT tags.id as id, name, COUNT_BIG(name) AS [count] FROM tags, post_tags WHERE tags.id = post_tags.tag_id GROUP BY tags.id, name ORDER BY [count] DESC, name
GO

DROP SEQUENCE IF EXISTS [products_id_seq]
GO
CREATE SEQUENCE [products_id_seq] AS int START WITH 1 INCREMENT BY 1 NO CACHE
GO

CREATE TABLE [products](
	[id] [int] NOT NULL CONSTRAINT [products_id_def] DEFAULT NEXT VALUE FOR [products_id_seq],
	[name] [nvarchar](255) NOT NULL,
	[price] [decimal](10,2) NOT NULL,
	[properties] [ntext] NOT NULL,
	[created_at] [datetime2](0) NOT NULL,
	[deleted_at] [datetime2](0),
	CONSTRAINT [products_pkey] PRIMARY KEY CLUSTERED([id] ASC)
)
GO

DROP SEQUENCE IF EXISTS [barcodes_id_seq]
GO
CREATE SEQUENCE [barcodes_id_seq] AS int START WITH 1 INCREMENT BY 1 NO CACHE
GO

CREATE TABLE [barcodes](
	[id] [int] NOT NULL CONSTRAINT [barcodes_id_def] DEFAULT NEXT VALUE FOR [barcodes_id_seq],
	[product_id] [int] NOT NULL,
	[hex] [nvarchar](255) NOT NULL,
	[bin] [varbinary](max) NOT NULL,
	[ip_address] [nvarchar](15),
	CONSTRAINT [barcodes_pkey] PRIMARY KEY CLUSTERED([id] ASC)
)
GO

CREATE TABLE [kunsthåndværk](
	[id] [nvarchar](36) NOT NULL,
	[Umlauts ä_ö_ü-COUNT] [int] NOT NULL,
	[user_id] [int] NOT NULL,
	[invisible] [nvarchar](36),
	[invisible_id] [nvarchar](36),
	CONSTRAINT [kunsthåndværk_pkey] PRIMARY KEY CLUSTERED([id] ASC)
)
GO

CREATE TABLE [invisibles](
	[id] [nvarchar](36) NOT NULL,
	CONSTRAINT [invisibles_pkey] PRIMARY KEY CLUSTERED([id] ASC)
)
GO

CREATE TABLE [nopk](
	[id] [nvarchar](36) NOT NULL
)
GO

INSERT [categories] ([name], [icon]) VALUES (N'announcement', NULL)
GO
INSERT [categories] ([name], [icon]) VALUES (N'article', NULL)
GO
INSERT [categories] ([name], [icon]) VALUES (N'comment', NULL)
GO

INSERT [comments] ([post_id], [message], [category_id]) VALUES (1, N'great', 3)
GO
INSERT [comments] ([post_id], [message], [category_id]) VALUES (1, N'fantastic', 3)
GO
INSERT [comments] ([post_id], [message], [category_id]) VALUES (2, N'thank you', 3)
GO
INSERT [comments] ([post_id], [message], [category_id]) VALUES (2, N'awesome', 3)
GO

INSERT [post_tags] ([post_id], [tag_id]) VALUES (1, 1)
GO
INSERT [post_tags] ([post_id], [tag_id]) VALUES (1, 2)
GO
INSERT [post_tags] ([post_id], [tag_id]) VALUES (2, 1)
GO
INSERT [post_tags] ([post_id], [tag_id]) VALUES (2, 2)
GO

INSERT [abc_posts] ([abc_user_id], [abc_category_id], [abc_content]) VALUES (1, 1, N'blog started')
GO
INSERT [abc_posts] ([abc_user_id], [abc_category_id], [abc_content]) VALUES (1, 2, N'It works!')
GO

INSERT [tags] ([name], [is_important]) VALUES (N'funny', 0)
GO
INSERT [tags] ([name], [is_important]) VALUES (N'important', 1)
GO

INSERT [users] ([username], [password], [api_key], [location]) VALUES (N'user1', N'pass1', N'123456789abc', NULL)
GO
INSERT [users] ([username], [password], [api_key], [location]) VALUES (N'user2', N'$2y$10$cg7/nswxVZ0cmVIsMB/pVOh1OfcHScBJGq7Xu4KF9dFEQgRZ8HWe.', NULL, NULL)
GO

INSERT [countries] ([name], [shape]) VALUES (N'Left', geometry::STGeomFromText('POLYGON ((30 10, 40 40, 20 40, 10 20, 30 10))', 4326))
GO
INSERT [countries] ([name], [shape]) VALUES (N'Right', geometry::STGeomFromText('POLYGON ((70 10, 80 40, 60 40, 50 20, 70 10))', 4326))
GO
INSERT [countries] ([name], [shape]) VALUES (N'Point', geometry::STGeomFromText('POINT (30 10)', 4326))
GO
INSERT [countries] ([name], [shape]) VALUES (N'Line', geometry::STGeomFromText('LINESTRING (30 10, 10 30, 40 40)', 4326))
GO
INSERT [countries] ([name], [shape]) VALUES (N'Poly1', geometry::STGeomFromText('POLYGON ((30 10, 40 40, 20 40, 10 20, 30 10))', 4326))
GO
INSERT [countries] ([name], [shape]) VALUES (N'Poly2', geometry::STGeomFromText('POLYGON ((35 10, 45 45, 15 40, 10 20, 35 10),(20 30, 35 35, 30 20, 20 30))', 4326))
GO
INSERT [countries] ([name], [shape]) VALUES (N'Mpoint', geometry::STGeomFromText('MULTIPOINT (10 40, 40 30, 20 20, 30 10)', 4326))
GO
INSERT [countries] ([name], [shape]) VALUES (N'Mline', geometry::STGeomFromText('MULTILINESTRING ((10 10, 20 20, 10 40),(40 40, 30 30, 40 20, 30 10))', 4326))
GO
INSERT [countries] ([name], [shape]) VALUES (N'Mpoly1', geometry::STGeomFromText('MULTIPOLYGON (((30 20, 45 40, 10 40, 30 20)),((15 5, 40 10, 10 20, 5 10, 15 5)))', 4326))
GO
INSERT [countries] ([name], [shape]) VALUES (N'Mpoly2', geometry::STGeomFromText('MULTIPOLYGON (((40 40, 20 45, 45 30, 40 40)),((20 35, 10 30, 10 10, 30 5, 45 20, 20 35),(30 20, 20 15, 20 25, 30 20)))', 4326))
GO
INSERT [countries] ([name], [shape]) VALUES (N'Gcoll', geometry::STGeomFromText('GEOMETRYCOLLECTION(POINT(4 6),LINESTRING(4 6,7 10))', 4326))
GO

INSERT [events] ([name], [datetime], [visitors]) VALUES (N'Launch', N'2016-01-01 13:01:01', 0)
GO

INSERT [products] ([name], [price], [properties], [created_at]) VALUES (N'Calculator', N'23.01', N'{"depth":false,"model":"TRX-120","width":100,"height":null}', '1970-01-01 01:01:01')
GO

INSERT [barcodes] ([product_id], [hex], [bin], [ip_address]) VALUES (1, N'00ff01', 0x00ff01, N'127.0.0.1')
GO

INSERT [kunsthåndværk] ([id], [Umlauts ä_ö_ü-COUNT], [user_id], [invisible], [invisible_id]) VALUES ('e42c77c6-06a4-4502-816c-d112c7142e6d', 1, 1, NULL, 'e42c77c6-06a4-4502-816c-d112c7142e6d')
GO
INSERT [kunsthåndværk] ([id], [Umlauts ä_ö_ü-COUNT], [user_id], [invisible], [invisible_id]) VALUES ('e31ecfe6-591f-4660-9fbd-1a232083037f', 2, 2, NULL, 'e42c77c6-06a4-4502-816c-d112c7142e6d')
GO

INSERT [invisibles] ([id]) VALUES ('e42c77c6-06a4-4502-816c-d112c7142e6d')
GO

INSERT [nopk] ([id]) VALUES ('e42c77c6-06a4-4502-816c-d112c7142e6d')
GO

ALTER TABLE [comments]  WITH CHECK ADD 	CONSTRAINT [comments_post_id_fkey] FOREIGN KEY([post_id])
REFERENCES [abc_posts] ([abc_id])
GO
ALTER TABLE [comments] CHECK	CONSTRAINT [comments_post_id_fkey]
GO

ALTER TABLE [comments]  WITH CHECK ADD 	CONSTRAINT [comments_category_id_fkey] FOREIGN KEY([category_id])
REFERENCES [categories] ([id])
GO
ALTER TABLE [comments] CHECK	CONSTRAINT [comments_category_id_fkey]
GO

ALTER TABLE [post_tags]  WITH CHECK ADD 	CONSTRAINT [post_tags_post_id_fkey] FOREIGN KEY([post_id])
REFERENCES [abc_posts] ([abc_id])
GO
ALTER TABLE [post_tags] CHECK	CONSTRAINT [post_tags_post_id_fkey]
GO

ALTER TABLE [post_tags]  WITH CHECK ADD 	CONSTRAINT [post_tags_tag_id_fkey] FOREIGN KEY([tag_id])
REFERENCES [tags] ([id])
GO
ALTER TABLE [post_tags] CHECK	CONSTRAINT [post_tags_tag_id_fkey]
GO

ALTER TABLE [abc_posts]  WITH CHECK ADD 	CONSTRAINT [abc_posts_category_id_fkey] FOREIGN KEY([abc_category_id])
REFERENCES [categories] ([id])
GO
ALTER TABLE [abc_posts] CHECK	CONSTRAINT [abc_posts_category_id_fkey]
GO

ALTER TABLE [abc_posts]  WITH CHECK ADD 	CONSTRAINT [abc_posts_user_id_fkey] FOREIGN KEY([abc_user_id])
REFERENCES [users] ([id])
GO
ALTER TABLE [abc_posts] CHECK	CONSTRAINT [abc_posts_user_id_fkey]
GO

ALTER TABLE [barcodes]  WITH CHECK ADD 	CONSTRAINT [barcodes_product_id_fkey] FOREIGN KEY([product_id])
REFERENCES [products] ([id])
GO
ALTER TABLE [barcodes] CHECK	CONSTRAINT [barcodes_product_id_fkey]
GO

ALTER TABLE [kunsthåndværk]  WITH CHECK ADD 	CONSTRAINT [UC_kunsthåndværk_Umlauts ä_ö_ü-COUNT] UNIQUE([Umlauts ä_ö_ü-COUNT])
GO

ALTER TABLE [kunsthåndværk]  WITH CHECK ADD 	CONSTRAINT [kunsthåndværk_user_id_fkey] FOREIGN KEY([user_id])
REFERENCES [users] ([id])
GO
ALTER TABLE [kunsthåndværk] CHECK	CONSTRAINT [kunsthåndværk_user_id_fkey]
GO

ALTER TABLE [kunsthåndværk]  WITH CHECK ADD 	CONSTRAINT [kunsthåndværk_invisible_id_fkey] FOREIGN KEY([invisible_id])
REFERENCES [invisibles] ([id])
GO
ALTER TABLE [kunsthåndværk] CHECK	CONSTRAINT [kunsthåndværk_invisible_id_fkey]
GO
