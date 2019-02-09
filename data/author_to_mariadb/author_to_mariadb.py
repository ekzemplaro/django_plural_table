#! /usr/bin/python
# -*- coding: utf-8 -*-
#
#	json_read.py
#
#					Aug/29/2018
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
def	sql_insert_proc	(cursor_aa,id_author,name_jp,name_en):
#	print ("*** sql_insert_proc ***")
#
	ft_aa="insert into plural_table_author (id_author,name_jp,name_en) values ("
	ft_bb ="'%s','%s','%s')" % (id_author,name_jp,name_en)
	sql_str=ft_aa + ft_bb
	print (sql_str)
	cursor_aa.execute (sql_str)
#
# ------------------------------------------------------------------
def	table_insert_proc	(cursor,dict_aa):
	for id_author in dict_aa:
		unit = dict_aa[id_author]
		try:
			sql_insert_proc	(cursor,id_author,unit['name_jp'], \
				unit['name_en'])
		except Exception as ee:
			sys.stderr.write ("*** error *** table_insert_proc ***\n")
			sys.stderr.write (str (ee) + "\n")
			sys.stderr.write (key + "\n")
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
for key in dict_aa.keys():
	unit_aa = dict_aa[key]
	print(key,unit_aa['name_jp'],unit_aa['name_en'])
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
