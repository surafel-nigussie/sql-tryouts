CREATE TABLE [MySchema].[MyTable]
(
[MyID] [int] NOT NULL IDENTITY(1, 1),
[MyFirstName] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MyLastName] [nvarchar] (150) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MyGender] [nvarchar] (6) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [MySchema].[MyTable] ADD CONSTRAINT [PK__MyTable__7131A741C7617D49] PRIMARY KEY CLUSTERED  ([MyID]) ON [PRIMARY]
GO
