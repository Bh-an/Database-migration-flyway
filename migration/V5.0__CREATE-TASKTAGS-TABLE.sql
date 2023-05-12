create table tasktags (
    tagid varchar(40),
    tag varchar(10),
    tag_created datetime,
    tag_updated datetime,
    refuser varchar(40),
    reftask varchar(40),
    primary key (tagid),
    foreign key (refuser) references users(userid),
    foreign key (reftask) references usertasks(taskid)
); 