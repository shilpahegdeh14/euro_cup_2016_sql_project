# Write a SQL query to find the goalkeeper’s name and jersey number, 
# playing for Germany, who played in Germany’s group stage matches.
SELECT pm.player_name AS goalkeeper_name, 
       pm.jersey_no AS goalkeeper_jersey_number
FROM euro_cup_2016.player_mast pm
JOIN euro_cup_2016.match_details md 
	ON pm.player_id = md.player_gk
JOIN euro_cup_2016.soccer_country sc 
	ON md.team_id = sc.country_id
		WHERE pm.team_id = (
			SELECT country_id 
			FROM soccer_country 
			WHERE country_name = 'Germany'
		)
AND sc.country_name = 'Germany'
AND md.play_stage = 'G';
