
# LeetCode Challenge D14
## Achievements
[![image.png](https://i.postimg.cc/BnzBZppY/image.png)](https://postimg.cc/MnyQdyhV)

This solution outperformed 62.73% of MySQL users on LeetCode according to runtime metrics and 100% of users according to memory metrics.


## Overview

Welcome to my LeetCode solution repository! This project addresses the coding challenge presented by [1965.  Employees With Missing Information](https://leetcode.com/problems/employees-with-missing-information/). Below, you'll find details about the problem, my approach to solving it, and the implemented solution.

## Problem Statement
Table: `Employees`
| Column Name |   Type  |
|:-----------:|:-------:|
| employee_id |   int   |
|     name    | varchar |

> employee_id is the column with unique values for this table. Each row of this table indicates the name of the employee whose ID is employee_id.

Table:  `Salaries`

| Column Name |   Type  |
|:-----------:|:-------:|
| employee_id |   int   |
|     salary    | int |

> employee_id is the column with unique values for this table. Each row of this table indicates the salary of the employee whose ID is employee_id.

Write a solution to report the IDs of all the employees with  **missing information**. The information of an employee is missing if:

-   The employee's  **name**  is missing, or
-   The employee's  **salary**  is missing.

Return the result table ordered by  `employee_id`  **in ascending order**.


**Example**

>**Input:** 
Employees table:

| employee_id |   name   |
|:-----------:|:--------:|
|      2      |   Crew   |
|      4      |   Haven  |
|      5      | Kristian |

Salaries table:
| employee_id |  name |
|:-----------:|:-----:|
|      5      | 76071 |
|      1      | 22517 |
|      4      | 63539 |


>**Output:** 

| employee_id | 
|:-----------:|
|      1      |
|      2      |


>**Explanation:** Employees 1, 2, 4, and 5 are working at this company. The name of employee 1 is missing. The salary of employee 2 is missing.

**Language Used**
> MySQL

**Difficulty**
> Easy

## Solution Overview
The first subquery selects `employee_id`s from the Employees table where the corresponding `employee_id` is not present in the Salaries table. The second subquery selects `employee_id`s from the Salaries table where the corresponding employee_id is not present in the Employees table. The `UNION ALL` operator is used to combine the results of these two subqueries into a single result set. Finally, the result is ordered by `employee_id` in ascending order.
