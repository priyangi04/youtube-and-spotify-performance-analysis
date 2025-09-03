# youtube-and-spotify-performance-analysis
Analysed cross-platforn music data (Spotify+YouTube) using SQL to compare artist performance, correlate audio features with popularity and reveal engagement-reach insights.


🎵 Spotify & YouTube Performance Analysis

Tools & Skills: MySQL Workbench (v8), SQL (DDL/DML, Joins, Aggregations, Window Functions), Data Cleaning, Business Analytics
Dataset: 24,000+ rows × 26 columns (Spotify + YouTube track metadata and engagement metrics)
Purpose: To analyze how artists and tracks perform across platforms, understand the role of audio attributes in popularity, and compare engagement vs. reach.

1. Problem

Streaming platforms shape modern music success, yet Spotify and YouTube measure it differently. This project asks:

Which artists perform best across both platforms?

How do track attributes (danceability, energy, valence, etc.) influence popularity?

Does engagement (likes, comments) align with reach (views)?

2. Approach

Built a structured SQL database from raw Excel → CSV (24k rows, 26 cols).

Applied schema design, correct data types, and thorough data quality checks (duplicates, NULLs, encoding).

Wrote advanced SQL queries to compare artists, tracks, and platform performance.

Designed analysis to connect business insights with data-driven evidence.

3. SQL Techniques Applied

Data Cleaning & Validation: Checked for nulls, duplicates, anomalies.

Aggregation: COUNT(), SUM(), AVG() for metrics.

Joins: Merging Spotify attributes with YouTube engagement.

Window Functions: Ranking artists/tracks by popularity.

Conditional Logic: CASE WHEN for Spotify vs. YouTube comparisons.

4. Insights & Impact

Highlighted top-performing artists across both platforms and where success diverged.

Found patterns linking audio features (danceability, energy, valence) to higher popularity.

Exposed gaps between reach and engagement — tracks with high views but low interaction.

📌 Business Outcome: Enables music labels, marketers, and platform teams to align promotion strategies, optimize track placement, and better predict what resonates with audiences.
