create table usertasks (
    taskid varchar(40),
    duedate date,
    priority varchar(4),
    state varchar(10),
    summary varchar(50),
    task varchar(25),
    task_created datetime,
    task_updated datetime,
    reflist varchar(40),
    primary key (taskid),
    foreign key (reflist) references userlists(listid)
); 