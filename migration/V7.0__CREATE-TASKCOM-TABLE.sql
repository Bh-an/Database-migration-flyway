CREATE TABLE taskcomments (
    commentid varchar(40),
    comment varchar(40),
    comment_created datetime,
    comment_updated datetime,
    reftask varchar(40),
    primary key (commentid),
    foreign key (reftask) references usertasks(taskid)
); 