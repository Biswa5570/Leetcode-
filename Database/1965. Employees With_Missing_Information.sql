select employee_id from(
    select employee_id from Employees
    union all
    select employee_id from Salaries
)
t1 group by employee_id
having count(employee_id) = 1
order by employee_id
