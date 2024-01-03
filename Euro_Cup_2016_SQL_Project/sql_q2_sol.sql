SELECT DISTINCT mm.match_no AS matches_won_by_penalty
FROM euro_cup_2016.penalty_shootout ps
INNER JOIN euro_cup_2016.match_mast mm 
	ON ps.match_no = mm.match_no
	WHERE mm.results = 'WIN'
	AND mm.decided_by = 'P';




