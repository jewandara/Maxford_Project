CREATE VIEW viewMaxTimeTable AS
			SELECT tb1.TimeWeek AS 'TabName', tb1.StartTime AS 'start',tb1.EndTime AS 'end', tb2.SubjectName AS 'SubjectName' ,tb2.SubjectCatogory AS 'Catogory', tb4.UserFirstName AS 'FName', tb4.UserLastName AS 'LName',tb4.UserMiddleName AS 'MName',tb4.UserInitialName AS 'InitalName'
			FROM MAX_TimeTable AS tb1, MAX_Subject AS tb2, MAX_Teacher AS tb3, MAX_User AS tb4
			WHERE (tb1.SubjectId = tb2.SubjectId) AND (tb3.UserID =tb4.UserID) AND (tb1.TeacherID =tb3.TeacherID )
			
			AND PageTimeTableID = ( SELECT PageTimeTable FROM MAX_PAGE_TimeTable WHERE PageTimeTable = 1 ) AND TimeWeek ='Mon Day'













SELECT * FROM dbo.viewMaxTimeTable