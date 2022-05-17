use employees;
/*GROUP BY statement and ALIASES*/
SELECT 
    first_name, COUNT(first_name) AS name_count
FROM
    employees
WHERE
    first_name LIKE ('a%')
GROUP BY first_name
ORDER BY first_name DESC;

/*
a lot went on in that query. 
first we have the AS key word 
this is used to rename a column for better understanding 
of what went on. the name_count which is the new name of 
the column is known as the alias or the alias name.

then the group by statement
*/

/*
HAVING keyword
refines the output from records that do not satisfy a certain
condition. it is frequently used with the GROUP BY keyword.
it does the same job as the WHERE keyword but it is able to 
have conditions containing aggregate functions which the 
WHERE keyword can't */

SELECT 
    first_name, COUNT(first_name)
FROM
    employees
GROUP BY first_name
HAVING COUNT(first_name) > 250
ORDER BY first_name;
/*the query above gets all the first names which are 
repeated more than 250 times. */

/* it is possible to use the HAVING and WHERE keyword in 
the same query the solution to the question below 
does that.
Extract a list of all names taht are encountered less than 
200 times. let the daa refer to people hired after the 1st
of january 1999 */

SELECT 
    first_name, COUNT(first_name)
FROM
    employees
WHERE
    hire_date > '1999-01-01'
GROUP BY first_name
HAVING COUNT(first_name) < 200
ORDER BY first_name;

/* LIMIT keyword
used to reduce the number of records retrieved.
it is written at the end of a query then followed by an 
integer which is the number of records we want.*/

-- question
/* please show me he number of the 10 highest paid employees in 
the database */

-- solution
SELECT 
    *
FROM
    salaries
ORDER BY salary
LIMIT 10;
