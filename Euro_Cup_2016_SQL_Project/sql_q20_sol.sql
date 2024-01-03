# Write a SQL query to find the substitute players 
# who came into the field in the first half of play, within a normal play schedule.
SELECT *
FROM euro_cup_2016.player_in_out
WHERE in_out = 'I' -- Indicates players coming into the field
  AND play_half = '1' -- First half of play
  AND play_schedule = 'NT'; -- Normal play schedule
