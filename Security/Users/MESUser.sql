IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'MESUser')
CREATE LOGIN [MESUser] WITH PASSWORD = 'p@ssw0rd'
GO
CREATE USER [MESUser] FOR LOGIN [MESUser]
GO
