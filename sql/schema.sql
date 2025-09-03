-- ========================================================
-- FILE: schema.sql
-- PURPOSE: Create database and tracks_data table
-- ========================================================

-- Create database if it does not exist
CREATE DATABASE IF NOT EXISTS spotify_youtube_analysis;

-- Select database to use
USE spotify_youtube_analysis;

-- Create table with appropriate data types
CREATE TABLE tracks_data (
    SerialNumber INT,                       -- Unique serial number for each row
    Artist VARCHAR(255),                    -- Name of the artist
    Url_spotify VARCHAR(500),               -- Spotify URL of the track
    Track VARCHAR(255),                      -- Track name
    Album VARCHAR(255),                      -- Album name
    Album_type VARCHAR(100),                 -- Album type (single, album, compilation)
    Uri VARCHAR(255),                        -- Spotify URI
    Danceability DECIMAL(3,2),               -- Audio feature: how danceable the track is (0-1)
    Energy DECIMAL(3,2),                     -- Audio feature: energy of the track (0-1)
    Key INT,                                 -- Musical key
    Loudness DECIMAL(5,2),                   -- Track loudness in dB
    Speechiness DECIMAL(3,2),                -- Presence of spoken words (0-1)
    Acousticness DECIMAL(3,2),               -- How acoustic the track is (0-1)
    Instrumentalness DECIMAL(10,5),          -- Probability track has no vocals
    Liveness DECIMAL(3,2),                   -- Likelihood of live audience (0-1)
    Valence DECIMAL(3,2),                    -- Musical positiveness (0-1)
    Tempo DECIMAL(6,2),                      -- Track tempo in BPM
    Duration_ms INT,                          -- Track duration in milliseconds
    Url_youtube VARCHAR(500),                -- YouTube URL of the track
    Title VARCHAR(255),                       -- YouTube title
    Channel VARCHAR(255),                     -- YouTube channel name
    Views BIGINT,                             -- Total views on YouTube
    Likes BIGINT,                             -- Total likes on YouTube
    Comments BIGINT,                          -- Total comments on YouTube
    Description TEXT,                         -- YouTube description
    Licensed BOOLEAN,                         -- Licensed content (TRUE/FALSE)
    Official_video BOOLEAN,                   -- Official video (TRUE/FALSE)
    Stream BIGINT                             -- Total streams on Spotify
);
