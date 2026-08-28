-- ============================================
-- Netflix Analytics
-- Bronze Layer - Raw Data
-- ============================================

USE NetflixAnalytics;
GO

-- Create Bronze Schema
CREATE SCHEMA bronze;
GO

-- ============================================
-- Netflix Content - Raw Table
-- ============================================

CREATE TABLE bronze.Netflix(
    show_id       VARCHAR(50),
    type          VARCHAR(50),
    title         VARCHAR(500),
    director      VARCHAR(500),
    cast          VARCHAR(MAX),
    country       VARCHAR(500),
    date_added    VARCHAR(100),
    release_year  VARCHAR(50),
    rating        VARCHAR(50),
    duration      VARCHAR(100),
    listed_in     VARCHAR(500),
    description   VARCHAR(MAX)
);
GO

-- ============================================
-- Netflix User Activity - Raw Table
-- ============================================

CREATE TABLE bronze.netflix_user_activity (
    user_id               VARCHAR(100),
    age_group             VARCHAR(50),
    gender                VARCHAR(50),
    country               VARCHAR(100),
    timezone              VARCHAR(100),
    device                VARCHAR(100),
    subscription_plan     VARCHAR(100),
    watch_hours_month     VARCHAR(50),
    sessions_month        VARCHAR(50),
    favorite_genre        VARCHAR(100),
    preferred_watch_time  VARCHAR(100)
);
GO
