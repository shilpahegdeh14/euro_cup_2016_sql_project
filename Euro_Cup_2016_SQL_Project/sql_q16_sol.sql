# Write a SQL query to find referees and the number of matches they worked in each venue.
SELECT rm.referee_name, sv.venue_name, COUNT(mm.match_no) AS matches_worked
FROM euro_cup_2016.referee_mast rm
JOIN euro_cup_2016.match_mast mm 
	ON rm.referee_id = mm.referee_id
JOIN euro_cup_2016.soccer_venue sv 
	ON mm.venue_id = sv.venue_id
GROUP BY rm.referee_name, sv.venue_name
ORDER BY rm.referee_name, matches_worked DESC;



