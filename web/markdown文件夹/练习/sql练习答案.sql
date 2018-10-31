数据库操作SQL练习
一、数据库的创建：
	1、创建一个名称为mydb1的数据库
	CREATE DATABASE mydb1;
	2、创建一个使用utf8字符集的mydb2数据库。
	 CREATE DATABASE mydb2 CHARACTER SET utf8;
	3、创建一个使用utf8字符集，并带比较规则的mydb3数据库。
	CREATE DATABASE mydb3 CHARACTER SET utf8 COLLATE utf8_bin;
二、数据库的修改：
	修改mydb2字符集为gbk;
	ALTER DATABASE mydb2 CHARACTER SET gbk;
三、数据库的删除：
	删除数据库mydb3。
	DROP DATABASE mydb3;
四、数据库查看：
	查看所有数据库。
	SHOW DATABASES;
	查看数据库mydb1的字符集
	SHOW CREATE DATABASE mydb1;
-----------------------------------------------
数据库中表操作的SQL练习
一、创建表
	1、创建一张员工表employee
			字段		类型
			id			整形
			NAME		字符型
			gender		字符型
			birthday    日期型
			entry_date  日期型
			job			字符型
			salary		小数型
			RESUME		文本
			CREATE TABLE employee(id INT ,
			NAME VARCHAR(10),gender VARCHAR(20),
			birthday DATETIME, enty_date TIMESTAMP,
			job VARCHAR(10),salary DOUBLE,RESUME TEXT);
	2、创建一张员工表employee2
			字段		类型
			id			整形
			NAME		字符型
			gender		字符型
			birthday    日期型
			entry_date  日期型
			job			字符型
			salary		小数型
			RESUME		文本
	要求：把id 设置成主键，并且自动增长。NAME不允许为空。
		CREATE TABLE employee2(id INT PRIMARY KEY AUTO_INCREMENT,
		NAME VARCHAR(15),gender VARCHAR(20),birthday DATETIME,
		entry_date TIMESTAMP,job VARCHAR(20),salary DOUBLE 
		,RESUME TEXT);

二、删除表
	1、删除employee2表
		DROP TABLE employee2;
三、数据表的结构的修改：
	1、在上面员工表的基本上增加一个image列。
	ALTER TABLE employee ADD image VARCHAR(20);
	2、修改job列，使其长度为60。
	ALTER TABLE employee MODIFY job VARCHAR(60);
	3、删除gender列。
	  ALTER TABLE employee DROP gender;
	4、表名改为USER。
	RENAME TABLE employee TO USER;
	5、修改表的字符集为utf8
	  ALTER TABLE USER CHARACTER SET utf8;
	6、列名NAME修改为username
	  ALTER TABLE USER CHANGE username NAME VARCHAR(20);
	  RENAME TABLE USER TO employee;
四、查看表结构
	1、查看数据库内的所有表
	SHOW TABLES;
	2、查看employee的建表语句
	SHOW CREATE TABLE employee;
	3、查看employee的表结构
	DESC employee;
	------ 练习题2 sql练习题
	-------------------------------------------------------------------------
数据库操作SQL练习
一、数据库的创建：
	1、创建一个名称为mydb1的数据库
	    CREATE DATABASE mydb1;
	2、创建一个使用utf8字符集的mydb2数据库。
	   CREATE DATABASE mtdb2 CHARACTER SET utf8;   
	3、创建一个使用utf8字符集，并带比较规则的mydb3数据库。
	    CREATE DATABASE mydb3 CHARACTER SET utf8 COLLATE utf8_bin;
二、数据库的修改：
	修改mydb2字符集为gbk;
	ALTER DATABASE mydb2 CHARACTER SET gbk;
三、数据库的删除：
	删除数据库mydb3。
	DROP DATABASE mydb3;
四、数据库查看：
	查看所有数据库。
	SHOW DATABASES;
	查看数据库mydb1的字符集
	SHOW CREATE DATABASE mydb1;
-----------------------------------------------
数据库中表操作的SQL练习
一、创建表
	1、创建一张员工表employee
			字段		类型
			id			整形
			NAME		字符型
			gender		字符型
			birthday    日期型
			entry_date  日期型
			job			字符型
			salary		小数型
			RESUME		文本
			CREATE TABLE employee(id INT,NAME VARCHAR(15),gender VARCHAR(20),
			birthday DATETIME,emtry_date TIMESTAMP,job VARCHAR(20),salary DOUBLE,
			RESUME TEXT);
	2、创建一张员工表employee2
			字段		类型
			id			整形
			NAME		字符型
			gender		字符型
			birthday    日期型
			entry_date  日期型
			job			字符型
			salary		小数型
			RESUME		文本
	要求：把id 设置成主键，并且自动增长。NAME不允许为空。
		CREATE TABLE employee2(id INT PRIMARY KEY AUTO_INCREMENT,
		NAME VARCHAR(15),gender VARCHAR(20),birthday DATETIME,entry_date TIMESTAMP,
		job VARCHAR(20),salary DOUBLE,RESUME TEXT);


二、删除表
	1、删除employee2表
	DROP TABLE enployee2;
三、数据表的结构的修改：
	1、在上面员工表的基本上增加一个image列。
  	 ALTER TABLE employee ADD image2 VARCHAR(20);
  	 ALTER TABLE employee DROP image2;
	2、修改job列，使其长度为60。
	  ALTER TABLE employee MODIFY job VARCHAR(80);
	3、删除gender列。
	  ALTER TABLE employee DROP gender;
	4、表名改为USER。
	  RENAME TABLE employee TO USER;
	  RENAME TABLE USER TO employee;
	5、修改表的字符集为utf8
	   ALTER TABLE employee CHARACTER SET utf8;
	6、列名NAME修改为username
	   ALTER TABLE CHANGE NAME username VARCHAR(20);
四、查看表结构
	1、查看数据库内的所有表
	   SHOW TABLES;
	2、查看employee的建表语句
	  SHOW CREATE TABLE employee;
	3、查看employee的表结构
	  DESC employee;
----------------------------------------------------
表记录的操作
一、插入语句 ---INSERT
	1、向employee中插入三个员工信息，要求员工姓名分别是zs,ls,wangwu
	INSERT INTO employee VALUES(NULL,'zs',NULL,NULL,NULL,NULL,NULL,NULL);
	INSERT INTO employee VALUES(NULL,'ls',NULL,NULL,NULL,NULL,NULL,NULL);
	INSERT INTO employee VALUES(NULL,'wangwu',NULL,NULL,NULL,NULL,NULL,NULL);
	
二、更新语句 ---UPDATE
	1、将所有员工薪水修改为5000元。
	   UPDATE employee SET salary=5000;
	   UPDATE employee SET salary=5000 WHERE NAME='wangwu';
	2、将姓名为’zs’的员工薪水修改为3000元。
	    UPDATE employee SET salary=3000 WHERE NAME='zs';
	3、将姓名为’ls’的员工薪水修改为4000元,job改为ccc。
	    UPDATE employee SET salary=4000,job='ccc' WHERE NAME='ls';
	4、将wangwu的薪水在原有基础上增加1000元。
	   UPDATE employee SET salary=salary+1000 WHERE NAME='wangwu';
	   
三、删除语句 ---DELETE
	1、删除表中名称为’zs’的记录。
	   DELETE FROM employee WHERE NAME='zs';
	2、删除表中所有记录。
	   DELETE FROM employee;
四、查询语句 ---SELECT
	CREATE TABLE exam(
		id INT PRIMARY KEY AUTO_INCREMENT,
		NAME VARCHAR(20) NOT NULL,
		chinese DOUBLE,
		math DOUBLE,
		english DOUBLE
	);
	INSERT INTO exam VALUES(NULL,'关羽',85,76,70);
	INSERT INTO exam VALUES(NULL,'张飞',70,75,70);
	INSERT INTO exam VALUES(NULL,'赵云',90,65,95);
	INSERT INTO exam VALUES(NULL,'刘备',97,50,50);
	INSERT INTO exam VALUES(NULL,'曹操',90,89,80);
	INSERT INTO exam VALUES(NULL,'司马懿',90,67,65);
	练习：
	1、查询表中所有学生的信息。
 	   SELECT * FROM exam;
	2、查询表中所有学生的姓名和对应的英语成绩。
	   SELECT NAME,english FROM exam;
?	3、过滤表中重复数据。
	   SELECT DISTINCT * FROM exam GROUP BY ; 
?	4、在所有学生分数上加10分特长分。
	
	5、统计每个学生的总分。
       SELECT * ,(chinese+math+english) AS 总分 FROM exam;
	6、使用别名表示学生分数。
	  SELECT id,NAME 名字, chinese 语文,math 数学, english 英语 FROM exam;
	-----使用WHERE子句
	7、查询姓名为刘备的学生成绩
	    SELECT NAME,chinese,math,english FROM exam WHERE NAME='刘备';
	8、查询英语成绩大于90分的同学
	   SELECT * FROM exam WHERE english>90;
	9、查询总分大于200分的所有同学
	  SELECT * FROM exam WHERE (chinese+math+english)>200;
	10、查询英语分数在 80－90之间的同学。
	SELECT * FROM exam WHERE english BETWEEN 80 AND 90;
           
	11、查询数学分数为89,75,91的同学。
	    SELECT * FROM exam WHERE math=85 OR math=75 OR math=91;
	    SELECT * FROM exam WHERE math IN(85,75,91);
	12、查询所有姓刘的学生成绩。
	    SELECT * FROM exam WHERE NAME LIKE '刘%';
	13、查询所有姓刘两个字的学生成绩。
	    SELECT * FROM exam WHERE NAME LIKE '刘_';
	14、查询数学分>80并且语文分>80的同学。
	    SELECT * FROM exam WHERE math>80 OR chinese>80;
	15、查询数学分>80 或者 语文分>80的同学。
	   SELECT * FROM exam WHERE math>80 AND chinese>80;
	------使用ORDER BY  排序
	16、对数学成绩排序后输出。
	    SELECT * FROM exam ORDER BY math;
	17、对总分排序按从高到低的顺序输出
	SELECT * FROM exam ORDER BY (chinese+math+english) DESC;
	    
	18、对姓刘的学生成绩排序输出
	    SELECT * FROM exam WHERE NAME LIKE '刘%' ORDER BY chinese;
	------使用COUNT（函数）
	19、统计一个班级共有多少学生？
	   SELECT COUNT(*) AS 总人数 FROM exam;
	20、统计数学成绩大于或等于90的学生有多少个？
	    SELECT COUNT(*) FROM exam WHERE math>90 OR math=90;
	21、统计总分大于250的人数有多少？
	   SELECT COUNT(*) FROM exam WHERE (chinese+math+english)>250;
	-------使用SUM函数
	22、统计一个班级数学总成绩？
	    SELECT SUM(math) FROM exam ;
	23、统计一个班级语文、英语、数学各科的总成绩
	    SELECT SUM(chinese) AS 语文,SUM(math) AS 数学,SUM(english) AS 英语 FROM exam;
	24、统计一个班级语文、英语、数学的成绩总和 
	    SELECT SUM(chinese+math+english) FROM exam;
	25、统计一个班级语文成绩平均分
	    SELECT AVG(chinese) 语文平均分 FROM exam;
	--------使用AVG函数
	26、求一个班级数学平均分？
	    SELECT AVG(math) FROM exam;
	27、求一个班级总分平均分
	   SELECT AVG(chinese+math+english) FROM exam;
	-------使用MAX，MIN函数
	28、求班级最高分和最低分（数值范围在统计中特别有用）
	SELECT MAX(chinese+math+english) FROM exam;
	SELECT MIN(chinese+math+english) FROM exam;
	
	CREATE TABLE orders(
	id INT,
	product VARCHAR(20),
	price FLOAT
	);

	INSERT INTO orders(id,product,price) VALUES(1,'电视',900);
	INSERT INTO orders(id,product,price) VALUES(2,'洗衣机',100);
	INSERT INTO orders(id,product,price) VALUES(3,'洗衣粉',90);
	INSERT INTO orders(id,product,price) VALUES(4,'桔子',9);
	INSERT INTO orders(id,product,price) VALUES(5,'洗衣粉',90);

	29、查询购买了几类商品，并且每类总价大于100的商品
	
	SELECT product,SUM(price) FROM orders WHERE price>100 GROUP BY product;
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
