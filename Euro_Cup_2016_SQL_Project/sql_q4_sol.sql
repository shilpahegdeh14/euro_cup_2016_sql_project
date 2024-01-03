# Write a SQL query to compute a list showing the number of substitutions 
# that happened in various stages of play for the entire tournament.
USE euro_cup_2016;
SELECT CASE 
        WHEN mm.play_stage = 'G' THEN 'Group Stage'
        WHEN mm.play_stage = 'R' THEN 'Round of 16'
        WHEN mm.play_stage = 'Q' THEN 'Quarter Final'
        WHEN mm.play_stage = 'S' THEN 'Semi Final'
        WHEN mm.play_stage = 'F' THEN 'Final'
        ELSE 'Other Stage'
    END AS play_stage,
    COUNT(*) AS substitution_count
FROM euro_cup_2016.player_in_out pio
INNER JOIN match_mast mm 
	ON pio.match_no = mm.match_no
WHERE pio.in_out = 'I' -- 'I' indicates a player coming into the field (substitution in)
GROUP BY mm.play_stage;


