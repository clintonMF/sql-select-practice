use employees;
SELECT 
    *
FROM
    employees;
    
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'denis'; #where clause
    
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'denis' AND gender = 'M';  #And operator
    
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'denis'
        OR first_name = 'elvis';  #OR operator

/*
the code above would give us a table with first name of 
denis and those of elvis combined
*/
    
SELECT 
    *
FROM
    employees
WHERE
    first_name = 'denis'
        AND first_name = 'elvis';
/*The code above would bring no result (Null)
becauwe no row has a first name of both denis and elvis*/


SELECT 
    *
FROM
    employees
WHERE
    last_name = 'Denis' AND gender = 'M'
        OR gender = 'F'; #Operator precedence
        
/*
the block of code would not yeild the intended result due 
to operation precedence rule of SQL which says the and statemenet 
would always precede the OR statement in a give SQL rule regardless
of the other in which they are written. 
this block of code would bring out a table with males with first name denis 
combined with the entire females in the employee table.
the desired ressult is to get a table with male and females with first name 
denis.
To achieve this we would have to use parenthensis to give precedence to the 
OR operator. this is done in the next block of code.
*/

SELECT 
    *
FROM
    employees
WHERE
    first_name = 'denis'
        AND (gender = 'M' OR gender = 'F'); #operator precedence

use employees;

SELECT 
    *
FROM
    employees
WHERE
    first_name = 'denis'
    OR first_name = "Mark"
    OR first_name = 'nathan';
    
/* the block of code above is used to get the individaulas
with 3 specific different first names. there is a more efficient
way to perform the same task in less code and will take less time
for the computer to perform. using the "IN" operator.
An example is down below */

SELECT 
    *
FROM
    employees
WHERE
    first_name IN ("Denis","Mark","Nathan"); # IN operator
    
/*
there is also a "NOT IN" operator which performs the opposite function
of the IN operator.
*/

SELECT 
    *
FROM
    employees
WHERE
    first_name NOT IN ("Denis","Mark","Nathan"); #NOT IN operator.
/*the block of code above would get all the records that do not have 
first name Nathan, Mark or Denis*/






    

    
    