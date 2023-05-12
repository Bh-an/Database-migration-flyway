use csye7125;

create user 'webapp'@'%' identified by 'csye7125Webapp#';

grant insert, update, delete, select on csye7125.* to 'webapp'@'%';

flush privileges;