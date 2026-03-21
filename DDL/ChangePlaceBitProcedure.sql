-- Обмен через XOR:

--CREATE PROCEDURE ChangePlaceBitOperation
--    @a INT,
--    @b INT,
--    @result_a INT OUTPUT,
--    @result_b INT OUTPUT
--AS

--BEGIN

--    DECLARE @temp INT; 
--    SET @temp = @a ^ @b;
--    SET @a    = @temp ^ @a;
--    SET @b    = @temp ^ @b; 
--    SET @result_a = @a;
--    SET @result_b = @b;

--END
--GO

ALTER PROCEDURE ChangePlaceBitOperation
    @a INT OUTPUT,
    @b INT OUTPUT
AS

BEGIN

    --DECLARE @temp INT; 
    --SET @temp = @a ^ @b;
    SET @a    = @a ^ @b;
    SET @b    = @a ^ @b; 
    SET @a    = @a ^ @b;

END
GO

-- Пример

DECLARE @a          INT = 2;
DECLARE @b          INT = 3;
DECLARE @result_a   INT;
DECLARE @result_b   INT;

PRINT   'До обмена:     @a = ' + CAST(@a AS VARCHAR) + ',       @b = ' + CAST(@b AS VARCHAR);
--EXEC ChangePlaceBitOperation @a, @b, @result_a OUTPUT, @result_b OUTPUT;
--PRINT   'После обмена:  @a = ' + CAST(@result_a AS VARCHAR) + ',      @b = ' + CAST(@result_b AS VARCHAR);
EXEC ChangePlaceBitOperation @a OUTPUT, @b OUTPUT;
PRINT   'После обмена:  @a = ' + CAST(@a AS VARCHAR) + ',      @b = ' + CAST(@b AS VARCHAR);