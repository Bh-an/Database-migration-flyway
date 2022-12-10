create table userlists (
    listid varchar(40),
    list_created datetime,
    list_updated datetime,
    listname varchar(20),
    refuser varchar(40),
    primary key (listid),
    foreign key (refuser) references users(userid)
); 