SELECT day, COUNT(assignments) as number_of_assignments, SUM(completed_at - started_at) as duration
FROM assignments
JOIN assistance_requests ON assignment_id = assignments.id
GROUP BY day
ORDER BY day;
