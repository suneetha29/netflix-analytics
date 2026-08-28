USE NetflixAnalytics;
GO

BULK INSERT bronze.netflix_content
FROM 'C:\Users\ABC\Downloads\Netflix_30000_Unclean_Dataset (1).csv'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a',
    TABLOCK
);
GO

BULK INSERT bronze.netflix_user_activity
FROM 'C:\Users\ABC\Downloads\Netflix_User_Activity_30000_Unclean.csv'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a',
    TABLOCK
);
GO
