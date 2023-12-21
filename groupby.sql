1. Contare quanti iscritti ci sono stati ogni anno.

SELECT YEAR(enrolment_date) AS anno, COUNT(*) AS num_iscritti
FROM students
GROUP BY anno;

2. Contare gli insegnanti che hanno l'ufficio nello stesso edificio.
SELECT COUNT(DISTINCT id) AS num_insegnanti
FROM teachers
GROUP BY office_address;

3. Calcolare la media dei voti di ogni appello d'esame

4. Contare quanti corsi di laurea ci sono per ogni dipartimento