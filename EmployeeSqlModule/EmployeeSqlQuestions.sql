-- Question 1
select e.emp_no,e.last_name, e.first_name, e.sex, s.salary 
from employees e
join salaries s
on (e.emp_no = s.emp_no)


--Question 2
select first_name, last_name, hire_date
from employees
where hire_date >= '1986-01-01' and hire_date < '1987-01-01'

--Question 3
select de.dept_no, d.dept_name, e.emp_no, e.last_name, e.first_name
from employees e
join dept_emp de on e.emp_no = de.emp_no
join departments d on d.dept_no = de.dept_no

--Question 4
select de.dept_no, e.emp_no, e.last_name, e.first_name, d.dept_name
from employees e
join dept_emp de on e.emp_no = de.emp_no
join departments d on d.dept_no = de.dept_no

--Question 5
select first_name, last_name, sex
from employees
where first_name = 'Hercules' and last_name like 'B%'

--Question 6
select e.emp_no, e.last_name, e.first_name
from employees e
join dept_emp de on e.emp_no = de.emp_no
join departments d on d.dept_no = de.dept_no
where d.dept_name = 'Sales'

--Question 7
select e.emp_no, e.last_name, e.first_name,d.dept_name
from employees e
join dept_emp de on e.emp_no = de.emp_no
join departments d on d.dept_no = de.dept_no
where d.dept_name = 'Sales' or d.dept_name = 'Development'

--Question 8
select last_name, count(last_name)
from employees
group by last_name
order by count(last_name) desc


