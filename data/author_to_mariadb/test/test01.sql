use django_plural_table;
drop table if exists plural_table_author2;
create table plural_table_author2 (ID int NOT NULL,
	name_jp varchar(10) NOT NULL,
	name_de varchar(10) NOT NULL,
	xkey varchar(10) NOT NULL,
	name_en varchar(20) NOT NULL
	);
quit
