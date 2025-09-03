-- ========================================================
-- FILE: cleaning_queries.sql
-- PURPOSE: Check and clean the dataset for duplicates and nulls
-- ========================================================

-- 1️⃣ Check for duplicates by artist + track
SELECT Artist, Track, COUNT(*) AS duplicate_count
FROM tracks_data
GROUP BY Artist, Track
HAVING duplicate_count > 1;

-- 2️⃣ Check for missing critical columns
SELECT COUNT(*) AS missing_artist
FROM tracks_data
WHERE Artist IS NULL;

SELECT COUNT(*) AS missing_track
FROM tracks_data
WHERE Track IS NULL;

SELECT COUNT(*) AS missing_stream
FROM tracks_data
WHERE Stream IS NULL;

SELECT COUNT(*) AS missing_views
FROM tracks_data
WHERE Views IS NULL;

