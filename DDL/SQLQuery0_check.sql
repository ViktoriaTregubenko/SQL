USE PV_522_Import;
SET DATEFIRST 1;


DELETE FROM Schedule

--DELETE FROM Schedule WHERE discipline = ( SELECT discipline_id FROM Disciplines WHERE Discipline_name = N'HTML/CSS')
--EXEC sp_SelectSchedule;

EXEC sp_InsertScedule N'PV_522', N'%Win%C++' , N'Олег' , N'2025-12-09'
EXEC sp_InsertScedule N'PV_522', N'%Win%C#' , N'Олег' , N'2025-12-30'

EXEC sp_SelectSchedule;
--SELECT * FROM Schedule;

--EXECUTE sp_SelectDisciplineFromSchedule N'Сист%'


