create table users (
    userid varchar(40),
    account_created datetime,
    account_updated datetime,
    first_name varchar(20),
    last_name varchar(20),
    middle_name varchar(20),
    password varchar(255),
    username varchar(40),
    primary key (userid)
); 