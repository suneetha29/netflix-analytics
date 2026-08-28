-- ============================================
-- NETFLIX ANALYTICS PROJECT
-- Bronze Layer - Raw Data
-- ============================================

-- Create schemas
CREATE SCHEMA bronze;
CREATE SCHEMA silver;
CREATE SCHEMA gold;

-- ============================================
-- BRONZE TABLE 1: Netflix Content
-- ============================================

CREATE TABLE bronze.netflix_content (
    show_id        VARCHAR(20),
    type           VARCHAR(50),
    title          VARCHAR(500),
    director       VARCHAR(500),
    cast           VARCHAR(MAX),
    country        VARCHAR(500),
    date_added     VARCHAR(50),
    release_year   INT,
    rating         VARCHAR(50),
    duration       VARCHAR(100),
    listed_in      VARCHAR(500),
    description    VARCHAR(MAX)
);

-- ============================================
-- BRONZE TABLE 2: Netflix User Activity
-- ============================================

CREATE TABLE bronze.netflix_user_activity (
    user_id              VARCHAR(50),
    age                   INT,
    gender                VARCHAR(20),
    country               VARCHAR(100),
    subscription_type     VARCHAR(50),
    watch_hours           DECIMAL(10,2),
    sessions              INT,
    favorite_genre       VARCHAR(100),
    device                VARCHAR(50),
    preferred_watch_time VARCHAR(50)
);

-- ============================================
-- Bronze Layer completed
-- Raw data is stored without transformations.
-- ============================================
