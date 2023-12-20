1.Seleziona tutti gli studenti nati nel 1990(160)
SELECT *
FROM students
WHERE birth_date BETWEEN '1990-01-01' AND '1990-12-31';

2 Selezionare tutti i corsi che valgono più di 10 crediti (479)

SELECT *
FROM courses
WHERE credits > 10;

3 Selezionare tutti gli studenti che hanno più di 30 anni
SELECT *
FROM students
WHERE date_of_birth < '1993-09-01';

4 Selezionare tutti i corsi del primo semestre del primo anno di un qualsiasi corso di laurea (286)
SELECT courses.name,
courses.period,
courses.year
FROM courses
WHERE courses.year = 1
AND courses.period = 1;



5 Selezionare tutti gli appelli d'esame che avvengono nel pomeriggio (dopo le 14) del 20/06/2020 (21)

SELECT exams.date, courses.name
FROM exams
JOIN courses
ON exams.course_id = courses.id
WHERE courses.name = 'Informatica' AND exams.date = '2020-06-20';

6 Selezionare tutti i corsi di laurea magistrale(38)

SELECT degrees.name,
degrees.level,
degrees.department_id
FROM degrees
WHERE degrees.level = 'LM';

7 da quanti dipartimenti è composta l'università? (12)
SELECT COUNT(DISTINCT department_id) AS num_departments
FROM departments;


8 quanti sono gli insegnanti che non hanno un numero di telefono? (50)
SELECT COUNT(*) AS num_teachers_without_phone_number
FROM teachers
WHERE phone IS NULL;


