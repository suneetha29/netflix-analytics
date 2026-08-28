USE NetflixAnalytics;
GO

BULK INSERT bronze.netflix_content
FROM 'C:\YOUR_ACTUAL_PATH\Netflix_30000_Unclean_Dataset.csv'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a',
    TABLOCK
);
GO

BULK INSERT bronze.netflix_user_activity
FROM 'C:\YOUR_ACTUAL_PATH\Netflix_User_Activity_30000_Unclean.csv'
WITH
(
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '0x0a',
    TABLOCK
);
GO
