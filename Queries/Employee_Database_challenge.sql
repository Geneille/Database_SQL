--Retiring employees by titles

SELECT em.emp_no,
    em.first_name,
	em.last_name,
	ti.title,
	ti.from_date,
	ti.to_date
INTO retirees_bytitle
FROM employees as em
LEFT JOIN titles as ti
ON em.emp_no = ti.emp_no
WHERE (birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY em.emp_no;

SELECT DISTINCT ON (emp_no) emp_no,
	first_name,
	last_name,
	title
INTO unique_titles
FROM retirees_bytitle
ORDER BY emp_no, to_date DESC;


SELECT COUNT(emp_no), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY COUNT(emp_no) DESC;

-- Mentorship Eligibility

SELECT DISTINCT ON (em.emp_no) em.emp_no,
    em.first_name,
	em.last_name,
	em.birth_date,
	de.from_date,
	de.to_date,
	ti.title
INTO mentorship_eligibilty
FROM employees as em
INNER JOIN dept_emp as de
ON em.emp_no = de.emp_no
INNER JOIN titles as ti
ON em.emp_no = ti.emp_no
WHERE (de.to_date = '9999-01-01')
	AND (em.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
ORDER BY emp_no;
