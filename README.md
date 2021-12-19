# Pewlett-Hackard-Analysis

## Overview & Analysis

Pewlett Hackard is preparing and analyzing their employee database to determine the amount of employees that is retiring. A major part of the analysis is to determine the retiring employees per department and per title, and to identify potential candidates from their current employees list who can fill the roles of some of the exiting employees. The objects of this project were:

* to determine the number of retiring employees per title;
* and to identify employees who are eligible to participate in a mentorship program. 

## Results

* The number of retiring employees from the company is 133776. Of these employees, many have held several titles. Table 1 below shows some of these retiring employees as an illustration. The full list can be viewed in retirees_bytitle.csv file.


* Because some employees have held multiple titles over their time with the company, there are duplicate entries in the retirees_bytitle table. The DISTINCT ON statement was used to remove the duplicate rows where a single employee may have had switched positions or received a promotion in the company. This information, was summarized in the unique titles table, of which there are now 90,398 employees with unique titles table elibible for retirement.


* Table 2 below summarizes the employees of retirement age according to position held within the company. Senior engineers have the highest count of retirees, 29,414 and managers have the lowest count, 2.

* Of the current employees, born in the year 1965, 1549 employees are eligible for the company's mentorship program (see the  mentorship_eligibility table). Table 3 below shows some of these eligible employees as an illustration.




## Summary:

1. 90398 roles are in urgent need to be filled  as the "silver tsunami" begins to make an impact. The SQL statement and output from postgres to determine this number is illustrated in Figure 1 below.

2. In general, there are enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees. There are 1549 employees eligible for the mentorship program and 90398 retirement-ready employees. And as can be observed from Table 2 above a lot of these retirement-ready employees are at the senior level; there are 29414 senior engineer and 28254 senior staff members, who are current employees, that would have had enough experience to be mentors. 