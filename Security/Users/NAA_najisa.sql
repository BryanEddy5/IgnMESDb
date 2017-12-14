IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'NAA\najisa')
CREATE LOGIN [NAA\najisa] FROM WINDOWS
GO
CREATE USER [NAA\najisa] FOR LOGIN [NAA\najisa]
GO
