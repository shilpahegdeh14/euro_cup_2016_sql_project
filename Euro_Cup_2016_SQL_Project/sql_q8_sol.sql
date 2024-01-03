# Write a SQL query to find the match number for the game with the highest number of penalty shots, 
# and which countries played that match.
SELECT md.match_no, 
       c.country_name AS country_name
FROM euro_cup_2016.match_details md
JOIN euro_cup_2016.soccer_country c 
	ON md.team_id = c.country_id
		WHERE md.penalty_score = (
			SELECT MAX(penalty_score)
			FROM match_details
		);

