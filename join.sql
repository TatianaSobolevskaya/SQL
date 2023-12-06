select * from employee_salary;
select * from salary;
select * from employees;
SELECT e.employee_name, s.monthly_salary
FROM employees e
INNER JOIN employee_salary es ON e.id = es.employee_id
INNER JOIN salary s ON es.salary_id = s.id;
SELECT e.employee_name, s.monthly_salary
FROM employees e
INNER JOIN employee_salary es ON e.id = es.employee_id
INNER JOIN salary s ON es.salary_id = s.id and s.monthly_salary < 2000;


select es.* , s.monthly_salary , e.employee_name 
from employee_salary es 
left join employees e on es.employee_id = e.id 
left join salary s on s.id = es.salary_id 
where e.employee_name is null ; 
select es.* , s.monthly_salary , e.employee_name 
from employee_salary es 
left join employees e on es.employee_id = e.id 
left join salary s on s.id = es.salary_id 
where e.employee_name is null and s.monthly_salary < 2000 ; 

select e.* from employees e 
left join employee_salary es on es.employee_id = e.id
where es.id is null
order by e.id ;
select e.*, r.role_name  from employees e 
left join roles_employee re on re.employee_id = e.id 
left join roles r on r.id = re.role_id 
order by e.id ;
select e.*,r.role_name  from employees e 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id 
where r.role_name ilike  '%java%'
order by e.id ;
select e.*,r.role_name  from employees e 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id 
where r.role_name ilike  '%Python%'
order by e.id ;
select  e.*,r.role_name  from employees e 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id 
where r.role_name ilike  '%qa%'
order by e.id ;
select  e.*,r.role_name  from employees e 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id = re.role_id 
where r.role_name ilike  '%manual%'
order by e.id ;
select e.*, s.monthly_salary  from employees e 
join employee_salary es on e.id = es.employee_id 
join salary s on s.id = es.salary_id 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id =re.role_id 
where r.role_name ilike '%junior%'
order by e.id ;
select e.*, s.monthly_salary  from employees e 
join employee_salary es on e.id = es.employee_id 
join salary s on s.id = es.salary_id 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id =re.role_id 
where r.role_name ilike '%middle%'
order by e.id ;
select e.*, s.monthly_salary  from employees e 
join employee_salary es on e.id = es.employee_id 
join salary s on s.id = es.salary_id 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id =re.role_id 
where r.role_name ilike '%senior%'
order by e.id ;
select  s.monthly_salary, r.role_name  from employees e 
join employee_salary es on e.id = es.employee_id 
join salary s on s.id = es.salary_id 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id =re.role_id 
where r.role_name ilike  '%Java %'
order by s.monthly_salary ;
select  s.monthly_salary, r.role_name  from employees e 
join employee_salary es on e.id = es.employee_id 
join salary s on s.id = es.salary_id 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id =re.role_id 
where r.role_name ilike  '%Python%'
order by s.monthly_salary ;
select e.employee_name , s.monthly_salary, r.role_name  from employees e 
join employee_salary es on e.id = es.employee_id 
join salary s on s.id = es.salary_id 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id =re.role_id 
where r.role_name ilike  '%junior Python%'
order by e.employee_name  ;
select e.employee_name , s.monthly_salary, r.role_name  from employees e 
join employee_salary es on e.id = es.employee_id 
join salary s on s.id = es.salary_id 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id =re.role_id 
where r.role_name ilike  '%middle javas%'
order by e.employee_name ;
select e.employee_name , s.monthly_salary, r.role_name  from employees e 
join employee_salary es on e.id = es.employee_id 
join salary s on s.id = es.salary_id 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id =re.role_id 
where r.role_name ilike  '%senior java %'
order by e.employee_name ;
select  s.monthly_salary, r.role_name  from employees e 
join employee_salary es on e.id = es.employee_id 
join salary s on s.id = es.salary_id 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id =re.role_id 
where r.role_name ilike  '%qa%';
select round (avg (s.monthly_salary),2) as average_salary_junior from employees e 
join employee_salary es on e.id = es.employee_id 
join salary s on s.id = es.salary_id 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id =re.role_id 
where r.role_name ilike  '%junior%';
select sum(s.monthly_salary)  as sum_sal_js from employees e 
join employee_salary es on e.id = es.employee_id 
join salary s on s.id = es.salary_id 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id =re.role_id 
where r.role_name ilike  '%javas%';
select min(s.monthly_salary)  as min_sal_qa from employees e 
join employee_salary es on e.id = es.employee_id 
join salary s on s.id = es.salary_id 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id =re.role_id 
where r.role_name ilike  '%qa%';
select max(s.monthly_salary)  as max_sal_qa from employees e 
join employee_salary es on e.id = es.employee_id 
join salary s on s.id = es.salary_id 
join roles_employee re on re.employee_id = e.id 
join roles r on r.id =re.role_id 
where r.role_name ilike  '%qa%';
select count(re.employee_id)  from roles r 
join roles_employee re on r.id  = re.role_id 
where r.role_name ilike '%qa%';
select count(re.employee_id) as count_middle  from roles r 
join roles_employee re on r.id  = re.role_id 
where r.role_name ilike '%middle%';
select count(re.employee_id) as count_dev  from roles r 
join roles_employee re on r.id  = re.role_id 
where r.role_name ilike '%develop%';
select sum(s.monthly_salary) as monrh_dev_sal from salary s 
inner join employee_salary es on s.id = es.salary_id 
inner join employees e on e.id = es.employee_id 
inner join roles_employee re on re.employee_id = e.id 
inner join roles r on r.id = re.id 
where r.role_name ilike '%dev%';
select e.employee_name , r.role_name , s.monthly_salary  from employees e 
inner join employee_salary es on e.id = es.employee_id 
inner join salary s on es.salary_id = s.id 
inner join roles_employee re on re.employee_id = e.id 
inner join roles r on r.id = re.role_id 
order by s.monthly_salary;
select e.employee_name , r.role_name , s.monthly_salary  from employees e 
inner join employee_salary es on e.id = es.employee_id 
inner join salary s on es.salary_id = s.id 
inner join roles_employee re on re.employee_id = e.id 
inner join roles r on r.id = re.role_id 
where s.monthly_salary between 1700 and 2300
order by s.monthly_salary;
select e.employee_name , r.role_name , s.monthly_salary  from employees e 
inner join employee_salary es on e.id = es.employee_id 
inner join salary s on es.salary_id = s.id 
inner join roles_employee re on re.employee_id = e.id 
inner join roles r on r.id = re.role_id 
where s.monthly_salary < 2300
order by s.monthly_salary;
select e.employee_name , r.role_name , s.monthly_salary  from employees e 
inner join employee_salary es on e.id = es.employee_id 
inner join salary s on es.salary_id = s.id 
inner join roles_employee re on re.employee_id = e.id 
inner join roles r on r.id = re.role_id 
where s.monthly_salary in (1100, 1500, 2000)
order by s.monthly_salary;
















 





