create table sapadu(food_id int primary key,food_name varchar,price int)

insert into sapadu values(1,'chickenrice',100),(2,'dosa',20),(3,'idly',50),
(4,'kali',90),(5,'noodles',120)

select * from sapadu

create table district(dis_name varchar,dis_fam varchar,
dis_id int,foreign key(dis_id) references sapadu(food_id))

insert into district values('madurai','mali',1),('kovai','education',2),('tirunelveli','halwa',3),
('thanjavur','temples',4),('chennai','itparks',5)

select * from district

select dis_name from district where dis_id=(select food_id from sapadu where food_name = 'chickenrice');

update  district set dis_id =(select food_id from sapadu where price = 50)where dis_name = 'tirunelveli'

update  district set dis_fam =(select food_id from sapadu where price = 120)where dis_name = 'madurai'







