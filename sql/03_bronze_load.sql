-- ============================================
-- Netflix Analytics
-- Bronze Layer - Data Loading
-- ============================================

USE NetflixAnalytics;
GO

-- Load Netflix Content
BULK INSERT bronze.netflix_content
FROM 'C:\NetflixAnalytics\data\Netflix_30000_Unclean_Dataset.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDQUOTE = '"',
    TABLOCK
);
GO

-- Load Netflix User Activity
BULK INSERT bronze.netflix_user_activity
FROM 'C:\NetflixAnalytics\data\Netflix_User_Activity_30000_Unclean.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDQUOTE = '"',
    TABLOCK
);
GO
