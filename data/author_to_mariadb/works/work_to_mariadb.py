#! /usr/bin/python
# -*- coding: utf-8 -*-
#
#	work_to_mariadb.py
#
#					Feb/08/2019
#
# ------------------------------------------------------------------
import	sys
import	os
import	json
import	mysql.connector
#
sys.path.append('/var/www/data_base/common/python_common')
from text_manipulate import dict_display_proc
from file_io import file_to_str_proc
#
# ------------------------------------------------------------------
def	sql_insert_proc	(cursor_aa,id_work,title_jp,title_en,id_author):
#	print ("*** sql_insert_proc ***")
#
	ft_aa="insert into plural_table_work (id_work,title_jp,title_en,id_author) values ("
	ft_bb ="'%s','%s','%s','%s')" % (id_work,title_jp,title_en,id_author)
	sql_str=ft_aa + ft_bb
	print (sql_str)
	cursor_aa.execute (sql_str)
#
# ------------------------------------------------------------------
def	table_insert_proc	(cursor,dict_aa):
	for id_work in dict_aa:
		unit = dict_aa[id_work]
		try:
			sql_insert_proc	(cursor,id_work,unit['title_jp'], \
				unit['title_en'],unit['author'])
		except Exception as ee:
			sys.stderr.write ("*** error *** table_insert_proc ***\n")
			sys.stderr.write (str (ee) + "\n")
			sys.stderr.write (id_work + "\n")
#
# ------------------------------------------------------------------
sys.stderr.write("*** 開始 ***\n")
#
file_in = sys.argv[1]
sys.stderr.write(file_in + "\n")
#
json_str = file_to_str_proc(file_in)
dict_aa = json.loads(json_str)
#
for id_work in dict_aa.keys():
	unit_aa = dict_aa[id_work]
	print(id_work,unit_aa['title_jp'],unit_aa['title_en'],unit_aa['author'])
#
host_aa='localhost'
data_base = 'django_plural_table'
user_aa ='django'
password_aa = 'tiger123'
conn = mysql.connector.connect(user=user_aa, password=password_aa, \
                              host=host_aa,database=data_base)
#
cursor = conn.cursor()
#
table_insert_proc(cursor,dict_aa)
#
conn.commit()
cursor.close()
conn.close()
#
sys.stderr.write("*** 終了 ***\n")
# ------------------------------------------------------------------
