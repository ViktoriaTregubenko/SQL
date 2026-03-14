IF NOT EXISTS (SELECT lesson_id FROM Schedule WHERE [date] = @date AND [time] = @time)
	INSERT Schedule
		([group],discipline, teacher,[date],[time],spent)
		VALUES (@group, @discipline, @teacher,@date, @time, IIF(@date<GETDATE(),1,0));
	SET @time = DATEADD(MINUTE,95,@time);
	SET @lesson_number += 1;