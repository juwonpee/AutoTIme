'''
pip
 -> pymysql
    -  table 정보
      ( create table info
      (id int primary key  auto_increment,
      serial_num int not null,
      min int not null,
      sec int not null,
      name varchar(50) ) )
      
    -  mysql 서비스는 유저를 만들어줘 권한 설정해준다.(어떤 db를 사용할 건지)
        추가 방법: https://ourcstory.tistory.com/45
                   http://cadmin80.blogspot.com/2017/09/db-mysql-user.html
    -  /etc/mysql/ 폴더 내에 있는 .cnf 파일들을 찾아보면서
        bind_address=127.0.0.1 줄을 #으로 주석처리해준다.
    -  그 다음 sudo service mysql restart 해준다.


'''

import pymysql as pm

conn = pm.connect(host="192.168.1.7", port=3306,user="pi",passwd="raspberry",db="electro_db",charset="utf8")
print("connect success")
cur = conn.cursor()
query = "use electro_db;"
cur.execute(query)
conn.commit()

def made_table():
    query = "create table info (id int primary key  auto_increment,serial_num int not null,min int not null,sec int not null,name varchar(50) );"
    cur.execute(query)
    conn.commit()


def put_data(serial_num, m,s,name):
    query = "insert into info(serial_num, min, sec, name) values ('%d','%d','%d','%s');"%(serial_num, m,s,name)
    cur.execute(query)
    conn.commit()


def get_data_serial():
    result_array = []
    query = "select * from info where serial_num='%d';"%(serial_num)
    cur.execute(query)
    conn.commit()

    while result:
        result = cursor.fetchone()
        result_array.append(result)
    return result_array

    '''
    for row_data in result:
        print(row_data[0], row_data[1], row_data[2], row_data[3])
    '''




cur.close
conn.close()
