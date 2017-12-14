IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'NAA\eddybc')
CREATE LOGIN [NAA\eddybc] FROM WINDOWS
GO
CREATE USER [NAA\eddybc] FOR LOGIN [NAA\eddybc]
GO
