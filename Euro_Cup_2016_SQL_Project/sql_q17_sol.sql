# Write a SQL query to find the country where the most assistant referees come from, 
# and the count of the assistant referees.
SELECT sc.country_name, COUNT(ar.ass_ref_id) AS count_assistant_referees
FROM euro_cup_2016.asst_referee_mast ar
JOIN euro_cup_2016.soccer_country sc ON ar.country_id = sc.country_id
GROUP BY sc.country_name
ORDER BY count_assistant_referees DESC
LIMIT 1;
