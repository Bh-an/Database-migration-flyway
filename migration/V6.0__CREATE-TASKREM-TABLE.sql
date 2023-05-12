create table taskreminders (
    reminderid varchar(40),
    reminder datetime,
    reminder_created datetime,
    reminder_updated datetime,
    reftask varchar(40),
    primary key (reminderid),
    foreign key (reftask) references usertasks(taskid)
); 