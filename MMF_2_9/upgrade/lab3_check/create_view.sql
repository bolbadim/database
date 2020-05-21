DEFINE VIEW_NAME = &&1

create view &&VIEW_NAME as 
select 
    project.name Project_Name,
    project.description Project_Description,
    to_char(project.start_date, 'dd-mm-yyyy') Project_Start_Date,
    to_char(project.end_date, 'dd-mm-yyyy') Project_End_Date,
    stage.name Stage_Name,
    to_char(stage.start_date, 'dd-mm-yyyy') Stage_Start_Date,
    to_char(stage.end_date, 'dd-mm-yyyy') Stage_End_Date,
    task.pkey Stage_Tasks_Code,
    to_char(task.start_date, 'dd-mm-yyyy') Stage_Tasks_Start_Date,
    to_char(task.end_date, 'dd-mm-yyyy') Stage_Tasks_End_Date,
    task.name Stage_Tasks_Name,
    task.status Stage_Tasks_Status,
    employee.firstname Assigned_Person_Name,
    employee.lastname Assigned_Person_Last_Name,
    role.label Assigned_Person_Position,
    department.name Assigned_Person_Department,
    t_lead.firstname Team_Lead_Name,
    t_lead.lastname Team_Lead_Last_Name
from stage
left join project
on project.id = stage.project_id
right join task
on task.stage_id = stage.id
right join employee
on task.assignee_id = employee.id
left join employee_role
on employee_role.employee_id = employee.id
left join role
on role.id = employee_role.role_id
join department
on department.id = employee.department_id
left join team
on team.id = employee.team_id
left join employee t_lead
on t_lead.id = team.lead_id
group by 
    project.name,
    project.description,
    project.start_date,
    project.end_date,
    stage.name,
    stage.start_date,
    stage.end_date,
    task.pkey,
    task.start_date,
    task.end_date,
    task.name,
    task.status,
    employee.firstname,
    employee.lastname,
    role.label,
    department.name,
    t_lead.firstname,
    t_lead.lastname
order by stage.start_date, stage.end_date;
