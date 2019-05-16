CREATE DATABASE top_momaDB;
USE top_momaDB;
SELECT top.top_500_rank, moma.artist_name
FROM moma
JOIN top_500_artists AS top
ON moma.artist_name = top.artist_name
WHERE top.top_500_rank < 500
GROUP BY moma.artist_name, top.top_500_rank
ORDER BY top.top_500_rank ASC; 