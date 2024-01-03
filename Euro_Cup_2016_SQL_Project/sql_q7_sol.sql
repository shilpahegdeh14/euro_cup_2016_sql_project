# Write a SQL query to find all the venues where matches with penalty shootouts were played.
SELECT venue_name
FROM euro_cup_2016.soccer_venue sv
INNER JOIN euro_cup_2016.match_mast mm
	ON sv.venue_id = mm.venue_id 
		WHERE mm.decided_by = 'P';