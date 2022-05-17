use employees;

/*
 Pattern matching 
 this is done using the "LIKE" operator in conjuction 
 with percentage symbol "%" and underscore symbol "_"
 
 % - is used as a substitute for a sequence of characters.
 _ - is used as a substitute for a single character.
 
 examples are shown below
 */
 
 SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('%ar');
    
/* the block of code above would get all the records with 
first name ending in ar. this is because we put the percent 
symbol before the ar. */

SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('ar%');
    
/* the block of code above would get all the first name starting in 
ar, because we put the ar before the percentage sign. */

SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('%ar%');
    
/*This block of code would get all records with first name 
that have 'ar' it could start with 'ar' or end with 'ar' or 
'ar' could be inbetween other characters. this is because we 
put ar in between 2 % symbols*/

SELECT 
    *
FROM
    employees
WHERE
    first_name LIKE ('Mar_');
    
/* the block of code above would get all the 
first names that starting with "Mar" that are 4 letter words.
this is becaues we used the "_" after the mar. */

/*
there is also the NOT LIKE operator that does the exact opposite
of the like operator.
*/


/*BETWEEN ... AND ....*/
SELECT 
    *
FROM
    employees
WHERE
    hire_date BETWEEN '1990-01-01' AND '2000-01-01';
    
/* the block of code above would get records for which the 
hire date is between the stipulated dates in the query with 
the dates included.*/

SELECT 
    *
FROM
    employees
WHERE
    hire_date NOT BETWEEN '1990-01-01' AND '2000-01-01';
    
/*
NOT BETWEEN ... AND ...
This does the opposite of the between operator.
It will get all records with dates that are not between the stipulated
dates. it will get the dates before and after the stipulated date.
*/

SELECT 
    *
FROM
    employees
WHERE 
    first_name IS NOT NULL;
    
/* the query above would get all the records with registered first
name. there is also an "IS NULL" operator it will perform the opposite task. */


SELECT DISTINCT
    gender
FROM
    employees; -- SELECT DISTINCT
    
/* The select distinct statement does not get duplicate records*/

 /*Order by*/
 SELECT 
    *
FROM
    employees
ORDER BY first_name;  

/* Data fetched in mysql by default are arranged in order of 
increasing ID values (primary key), except stated otherwise.
If we wish to get the data in a different order we use the order
by statement. at the of the statement above we can add the 
clause DESC and ASC meanning descending and ascending repectively.
*/

/* COUNT function*/
SELECT 
    COUNT(emp_no)
FROM
    employees;
/* the count function is used to count the number of 
non null records in a give column*/

/* COUNT DISTINCT */
SELECT 
    COUNT(DISTINCT first_name)
FROM
    employees;

/* the query above would get the records of different 
first names in the employee table */
    
    
    


    
    
 
