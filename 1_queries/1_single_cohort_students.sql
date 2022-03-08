-- // Students in a single cohort
-- SELECT id, name
-- FROM students
-- WHERE cohort_id IN(1)
-- ORDER BY id;

-- // Get total students
-- SELECT count(id)
-- FROM students
-- WHERE cohort_id IN (1,2,3)

-- // Contact details
-- SELECT name, id, cohort_id
-- FROM students
-- WHERE email IS NULL OR phone IS NULL;

-- // Non Gmail Students
-- SELECT name, email, id, cohort_id
-- FROM students
-- WHERE email NOT LIKE '%gmail' AND phone IS NULL;

-- // Currently Enrolled Students
-- SELECT name, id, cohort_id
-- FROM students
-- WHERE end_date IS NOT NULL
-- ORDER BY cohort_id;

-- // Github Activity
SELECT name, email, phone
FROM students
WHERE github IS NULL AND end_date IS NOT NULL;