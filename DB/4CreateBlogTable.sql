USE BanDongHo
GO

CREATE TABLE Blog(
	id_blog INT IDENTITY(1,1) PRIMARY KEY,
	username VARCHAR(50),
	time DATE,
	title NVARCHAR(300) NOT NULL,
	image TEXT,
	content TEXT,
	FOREIGN KEY (username) REFERENCES Admin(username),
)
GO