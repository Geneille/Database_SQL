# Pewlett-Hackard-Analysis

## Overview & Objectives

Pewlett Hackard is preparing and analyzing their employee database to determine the amount of employees that is retiring. A major part of the analysis is to determine the retiring employees per department and per title, and to identify potential candidates from their current employees list who can fill the roles of some of the exiting employees. The objectives of this project were:

* to determine the number of retiring employees per title;
* and to identify employees who are eligible to participate in a mentorship program. 

## Resources

* Data Tools/Language: PostgreSQL, Python, Jupyter Notebook, Visual Studio Code


## Analysis

Figure 1 below shows the ERD for the various data tables used in the analysis. This figure was used to make the necessary connections to extract the relevant information to complete the objectives. 

  Figure 1
  
  ![image](https://user-images.githubusercontent.com/92636438/146693992-a4f5ebe9-929b-449a-ab65-0ee0314b768c.png)


The following steps summarizes the method used to analyze the data. The full query language can be found in the employee_Database_challenge.sql file.

1. Relevant employee data from the Employees table was extracted and joined with data from the Titles table on the primary key.
2. The data was filtered on the birth_date to retrieve the employees who were born between 1952 and 1955 and sorted.
3. The data was exported to the retirees_bytitle table and saved as a csv file. 
4. As there were duplicate entirees in this new table, the data was filtered to include the most recent titles of the employees. This was achieved by using the DISTINCT ON statement to retrieve the first occurrence of the employee number (since the data was already sorted by employee number).
5.  Retired employees no longer with the company was filtered from the data set and a new table, called Unique Titles, was created and the exported to a csv file after the data was sorted in ascending order by the employee number and descending order by the last date (i.e., to_date) of the most recent title.
6.  A query was then written file to retrieve the number of employees by their most recent job title who are about to retire. This was achieved by retrieving the information from the unique_titles table, grouping the table by title, then finally sorting the count column in descending order.
7.  The information was then stored in a new table, retiring_titles table.
8.  To determine employees eligible for the mentorship program, relevant information from the Employees table, the Department Employee table and the Titles table was joined.
9.  DISTINCT ON statement was used to retrieve the first occurrence of the employee number for each set of rows.
10. The data was filter on the to_date to all the current employees, then on the birth_date column to get all the employees who was born in the year 1965.
11. The data in this new table,  mentorship_eligibilty, was then ordered by the employee number before being exported as mentorship_eligibilty.csv

## Results

* There a lot of employees eligible for retirement from Pewlett Hackard. While some of these employees have held one position witin the company, many have held several titles. Table 1 below shows some of these retiring employees with a single or different titles as an illustration. The full list can be viewed in the retirees_bytitle table (retirees_bytitle.csv file).



  Table 1. Some retirement eligible employees with different titles  

  <img width="508" alt="Fig1" src="https://user-images.githubusercontent.com/92636438/146672092-b2f791cb-2c16-4e12-8bb3-348004132c7c.png">



* Because some employees have held multiple titles over their time with the company, there are duplicate entries in the retirees_bytitle table. The DISTINCT ON function was used to remove the duplicate rows where a single employee have held different titles to obtain the exact amount of retiring employees. This information was summarized in the unique titles table. There are 90398 employees with unique titles elibible for retirement.


* Table 2 below summarizes the current retirement eligible employees according to position held within the company. Senior engineers have the highest count of retirees, 29414 while managers have the lowest count of 2.


  Table 2

  <img width="167" alt="fig 2" src="https://user-images.githubusercontent.com/92636438/146672214-2ca9c201-ad80-41a6-8f1c-0effb95f1973.png">


* Of the current employees, born in the year 1965, 1549 employees are eligible for the company's mentorship program (see the mentorship_eligibility table). Table 3 below shows some of these eligible employees as an illustration.


  Table 3: Some employees eligible for mentorship

  <img width="548" alt="fig 3" src="https://user-images.githubusercontent.com/92636438/146672251-620a1e96-4578-4fa9-81a5-afa63337d09b.png">



## Summary

1. 90398 roles are in urgent need to be filled  as the "silver tsunami" begins to make an impact. The SQL statement and output from postgres to determine this number is illustrated in Figure 2 below.

  Figure 2: 

  <img width="278" alt="fig 4" src="https://user-images.githubusercontent.com/92636438/146672296-e87c5f9b-d84a-40b1-b4c7-1b296e9e964a.png">


2. In general, there are enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees. There are 1549 employees eligible for the mentorship program and 90398 retirement-ready employees. And, as can be observed from Table 2 above a lot of these retirement-ready employees are at the senior level; there are 29414 senior engineer and 28254 senior staff members, who are current employees, that would have had enough experience to be mentors. 
