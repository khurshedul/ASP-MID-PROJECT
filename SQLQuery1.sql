create table dvds(
id varchar(50) primary key ,
title varchar(50 ) not null,
description varchar(50) not null,
castingId varchar(50) not null foreign key references casting(id),
typeid varchar(50) not null foreign key references type(id),
categoryid varchar(50) not null foreign key references category(id),
Date date not null
)
