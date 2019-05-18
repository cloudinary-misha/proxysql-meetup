#####################################
####### CONNECT #####################
#####################################

# mysql  direct
mysql -h 127.0.0.1 -uappuser -p1234 -P3306 # master
mysql -h 127.0.0.1 -uappuser -p1234 -P3307 # slave


# proxysql admin
mysql -h 127.0.0.1 -uradminuser -pradminpass -P6032 

# to mysql via proxysql
mysql -h 127.0.0.1 -uappuser -p1234 -P6033 # mysql



#####################################
##### PROXYSQL CONFIGURATIONS #######
#####################################

select * from main.mysql_servers;
select rule_id, active, destination_hostgroup, apply  from main.mysql_query_rules;
select * from main.mysql_users;


# reroute traffic to different server
update main.mysql_query_rules set destination_hostgroup=2;
LOAD MYSQL QUERY RULES TO RUNTIME;


update main.mysql_servers set status="ONLINE" where comment="new cluster";
LOAD MYSQL SERVERS TO RUNTIME;


# check hostname
select @@hostname;


#####################################
##### QUERIES #######################
#####################################

select * from main.users;

INSERT INTO main.users (id,name) VALUES (51, "Arya"), (52, "Cersei");

