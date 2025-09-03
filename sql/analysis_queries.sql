-- ========================================================
-- FILE: analysis_queries.sql
-- PURPOSE: Core insights queries for Spotify & YouTube analysis
-- ========================================================

-- 1️⃣ Top 10 tracks by Spotify streams
-- Shows which tracks are most popular on Spotify
SELECT Track, Artist, Stream
FROM tracks_data
ORDER BY Stream DESC
LIMIT 10;

-- 2️⃣ Top 10 tracks by YouTube views
-- Shows which tracks are most popular on YouTube
SELECT Title, Artist, Views
FROM tracks_data
ORDER BY Views DESC
LIMIT 10;

-- 3️⃣ Spotify-to-YouTube and YouTube-to-Spotify ratio
-- Compare platform dominance for each track
SELECT Track, Artist, Stream, Views,
       ROUND(Stream / Views, 4) AS spotify_to_youtube_ratio,
       ROUND(Views / Stream, 4) AS youtube_to_spotify_ratio
FROM tracks_data
WHERE Stream > 0 AND Views > 0
ORDER BY youtube_to_spotify_ratio DESC
LIMIT 15;

-- 4️⃣ Top 10 artists by total Spotify streams
-- Aggregate streams at artist level
SELECT Artist, SUM(Stream) AS total_streams
FROM tracks_data
GROUP BY Artist
ORDER BY total_streams DESC
LIMIT 10;

-- 5️⃣ Top 10 artists by total YouTube views
-- Aggregate views at artist level
SELECT Artist, SUM(Views) AS total_views
FROM tracks_data
GROUP BY Artist
ORDER BY total_views DESC
LIMIT 10;

-- 6️⃣ Correlation check: Danceability vs Spotify streams
-- Explore if more danceable tracks get more streams
SELECT Track, Artist, Danceability, Stream
FROM tracks_data
ORDER BY Danceability DESC, Stream DESC
LIMIT 20;

-- 7️⃣ Engagement vs Reach (YouTube)
-- Likes per view ratio
SELECT Track, Artist, Views, Likes,
       ROUND(Likes / Views, 4) AS like_to_view_ratio
FROM tracks_data
WHERE Views > 0
ORDER BY like_to_view_ratio DESC
LIMIT 15;
