# Write a SQL query to find the number of captains who were also goalkeepers.
SELECT goalkeeper.player_name, COUNT(*) AS count_captain_goalkeepers
FROM euro_cup_2016.player_mast goalkeeper
JOIN euro_cup_2016.match_captain captain
	ON goalkeeper.player_id = captain.player_captain
WHERE goalkeeper.posi_to_play = 'GK'
GROUP BY goalkeeper.player_name; 
 
