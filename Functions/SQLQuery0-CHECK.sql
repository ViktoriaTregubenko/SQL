--SQLQuery0-CHECK.sql
USE PV_522_Import;
SET DATEFIRST 1;
GO
 
--PRINT dbo.GetLastLearnigDate(N'PV_522');
-- EXEC sp_SelectSchedule;
 
PRINT dbo.GetNextLearningDay(N'PV_522', N'2026-03-19')
PRINT dbo.GetNextLearningDate(N'PV_522',N'2026-03-21')
--EXEC sp_GetNextLearningDay N'PV_522', N'2026-03-17'