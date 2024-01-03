# Write a SQL query to find the referees who booked the most number of players.
SELECT r.referee_name, count(player_id) AS total_bookings
FROM euro_cup_2016.referee_mast r
JOIN euro_cup_2016.player_booked pb
	ON r.country_id = pb.team_id
GROUP BY r.referee_name
HAVING COUNT(pb.player_id) = (
    SELECT MAX(booking_count)
    FROM (
        SELECT COUNT(player_id) AS booking_count
        FROM euro_cup_2016.player_booked
        GROUP BY player_id
    ) AS max_bookings
);
