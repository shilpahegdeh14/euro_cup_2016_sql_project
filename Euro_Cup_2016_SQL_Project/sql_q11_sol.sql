# Write a SQL query to find the players, their jersey number, and playing club 
# who were the goalkeepers for England in EURO Cup 2016.
SELECT pm.player_name, pm.jersey_no, pm.playing_club
FROM euro_cup_2016.player_mast pm
JOIN euro_cup_2016.soccer_country sc
	ON pm.team_id = sc.country_id
	WHERE pm.posi_to_play = 'GK' AND country_name = 'England';