# Write a SQL query to find all available information about the players under contract to 
# Liverpool F.C. playing for England in EURO Cup 2016.
SELECT *
FROM euro_cup_2016.player_mast pm
JOIN euro_cup_2016.soccer_country sc 
	ON pm.team_id = sc.country_id
	WHERE pm.playing_club = 'Liverpool'
	AND sc.country_name = 'England';

