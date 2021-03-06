
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


    - 구글 클라우드 접속
      -> https://itcenter.yju.ac.kr/xe_board_gcp/6295
      -> 공개 ip를 0.0.0.0/0 으로 설정
      - 이 외에도 bind address 풀어주기
      


'''

import pymysql as pm

class Emysql:

    def __init__(self):
        self.result = True
        self.result_array=[]
        self.lines=0
        

    def connect(self,ip,port,user,passwd,db_name):
        try:
            self.conn = pm.connect(host=ip, port=port,user=user,passwd=passwd,db=db_name,charset="utf8",connect_timeout=0.5)
            self.cur = self.conn.cursor()
            print("connect success")
            return True
        except Exception as e:
            print(e)
            print("connect fail")
            return False
        
        

    def made_table(self):
        self.query = "create table info (id int primary key  auto_increment,serial_num bigint not null,min int not null,sec int not null,name varchar(50) );"
        self.cur.execute(self.query)
        self.conn.commit()

    def put_data(self,serial_num, m,s):
        self.query = "insert into info(serial_num, min, sec) values (%d,%d,%d);"%(serial_num, m,s)
        self.cur.execute(self.query)
        self.conn.commit()

    def put_data_with_name(self,serial_num, m,s,name):
        self.query = 'insert into info(serial_num, min, sec, name) values (%d,%d,%d,"%s");'%(serial_num, m,s,name)
        self.cur.execute(self.query)
        self.conn.commit()


    def get_data_serial(self,serial_num):
        self.query = "select * from info where serial_num='%d';"%(serial_num)
        self.cur.execute(self.query)
        self.conn.commit()
        self.result = self.cur.fetchone()
        return self.result

        
    def get_txt_data(self,file_name):
        f= open(file_name+".txt",'r')
        self.lines = f.readlines()
        f.close()

    def put_txt_data_to_sql(self,file_name):
        self.get_txt_data(file_name)
        #print(self.lines)
        for line in self.lines:
            line = line.replace("\n","")
            line = line.split(" ")
            line[0] = int(line[0])
            line[1] = int(line[1])
            line[2] = int(line[2])
            if not self.is_serial_data_sql(line[0]):
                #print("not")
                if len(line)==3:
                    #print("3")
                    self.put_data(line[0],line[1],line[2])
                elif len(line)==4:
                    #print("4")
                    self.put_data_with_name(line[0],line[1],line[2],line[3])
        

    def exit_sql(self):
        self.cur.close
        self.conn.close()

    def is_serial_data_sql(self,serial_num):
        self.get_data_serial(serial_num)
        if self.result != None:
            return True
        else:
            return False
        


if __name__ == '__main__':
    se = Emysql()
    se.connect("35.240.152.59",3306,"pi","raspberry","electro_db")
    #se.connect("35.240.153.59",3306,"pi","raspberry","electro_db")
    
    #se.put_txt_data_to_sql("timeDatabase")
    #print(se.is_serial_data_sql(1233))
    



#self.conn = pm.connect(host="35.240.152.59", port=3306,user="pi",passwd="raspberry",db="electro_db",charset="utf8")    
