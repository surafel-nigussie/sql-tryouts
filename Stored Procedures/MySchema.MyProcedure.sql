SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [MySchema].[MyProcedure]
    @MyID INT ,
    @MyFirstName NVARCHAR(150) = NULL
AS
    SET NOCOUNT ON;

    BEGIN TRY 
        BEGIN TRANSACTION;
        SELECT  *
        FROM    MySchema.MyTable
        WHERE   MyID = @MyID
                AND ( @MyFirstName IS NULL
                      OR MyFirstName = @MyFirstName
                    );
        COMMIT TRANSACTION;
    END TRY
	---
    BEGIN CATCH
        IF ( XACT_STATE() = -1 )
            ROLLBACK TRANSACTION;
        IF ( XACT_STATE() = 1 )
            COMMIT TRANSACTION;
    END CATCH;
GO
