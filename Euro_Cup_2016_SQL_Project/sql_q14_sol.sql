# Write a SQL query to find referees and the number of bookings they made for the entire tournament. 
# Sort your answer by the number of bookings in descending order.
SELECT rm.referee_name, COUNT(pb.player_id) AS total_bookings
FROM euro_cup_2016.referee_mast rm
JOIN euro_cup_2016.player_booked pb 
	ON rm.country_id = pb.team_id
GROUP BY rm.referee_name
ORDER BY total_bookings DESC;

