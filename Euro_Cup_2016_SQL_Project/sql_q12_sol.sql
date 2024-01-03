# .Write a SQL query that returns the total number of goals scored by each position on each country’s team. 
# Do not include positions which scored no goals.
SELECT sc.country_name AS country,
       pm.posi_to_play AS position,
       COUNT(md.goal_score) AS total_goals
FROM euro_cup_2016.player_mast pm
JOIN euro_cup_2016.match_details md 
	ON pm.player_id = md.player_gk
JOIN euro_cup_2016.soccer_country sc 
	ON pm.team_id = sc.country_id
WHERE md.goal_score != 0
GROUP BY sc.country_name, pm.posi_to_play
ORDER BY sc.country_name, pm.posi_to_play;
