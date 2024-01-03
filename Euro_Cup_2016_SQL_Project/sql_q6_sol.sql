# Write a SQL query to find the number of matches that were won by a single point, 
# but do not include matches decided by penalty shootout.
#COUNT(*) AS matches_won_by_single_point
SELECT match_no, results, goal_score
FROM euro_cup_2016.match_mast
WHERE results = 'WIN'
AND ABS(SUBSTRING_INDEX(goal_score, '-', 1) - SUBSTRING_INDEX(goal_score, '-', -1)) = 1
AND decided_by != 'P';

