# Pewlett-Hackard-Analysis

## Overview 

Pewlett Hackard is preparing and analyzing their employee database to determine the amount of employees that is retiring. A major part of the analysis is to determine the retiring employees per department and per title, and to identify potential candidates from their current employees list who can fill the roles of some of the exiting employees. The objectives of this project were:

* to determine the number of retiring employees per title;
* and to identify employees who are eligible to participate in a mentorship program. 

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

1. 90398 roles are in urgent need to be filled  as the "silver tsunami" begins to make an impact. The SQL statement and output from postgres to determine this number is illustrated in Figure 1 below.

  Figure 1: 

  <img width="278" alt="fig 4" src="https://user-images.githubusercontent.com/92636438/146672296-e87c5f9b-d84a-40b1-b4c7-1b296e9e964a.png">


2. In general, there are enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees. There are 1549 employees eligible for the mentorship program and 90398 retirement-ready employees. And, as can be observed from Table 2 above a lot of these retirement-ready employees are at the senior level; there are 29414 senior engineer and 28254 senior staff members, who are current employees, that would have had enough experience to be mentors. 
