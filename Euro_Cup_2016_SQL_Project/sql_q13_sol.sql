# Write a SQL query to find all the defenders who scored a goal for their teams.
SELECT pm.player_id, pm.player_name, pm.posi_to_play, md.goal_score
FROM euro_cup_2016.player_mast pm
JOIN euro_cup_2016.match_details md 
	ON pm.team_id = md.team_id
	WHERE (pm.posi_to_play = 'DF' OR pm.posi_to_play = 'FD')
  AND md.goal_score > 0;

