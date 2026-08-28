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

CREATE TABLE bronze.netflix_content (
    show_id        VARCHAR(20),
    type           VARCHAR(50),
    title          VARCHAR(255),
    director       VARCHAR(500),
    cast           VARCHAR(MAX),
    country        VARCHAR(500),
    date_added     VARCHAR(50),
    release_year   INT,
    rating         VARCHAR(50),
    duration       VARCHAR(50),
    listed_in      VARCHAR(500),
    description    VARCHAR(MAX)
);
GO

-- ============================================
-- Netflix User Activity - Raw Table
-- ============================================

CREATE TABLE bronze.netflix_user_activity (
    user_id              VARCHAR(50),
    age                   INT,
    gender                VARCHAR(20),
    country               VARCHAR(100),
    subscription_type     VARCHAR(50),
    watch_hours           DECIMAL(10,2),
    sessions              INT,
    favorite_genre        VARCHAR(100),
    device                VARCHAR(50),
    preferred_watch_time  VARCHAR(50)
);
GO
