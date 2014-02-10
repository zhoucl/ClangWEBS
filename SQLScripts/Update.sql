--此文档为XX项目的数据库更新脚本，创建于${date}
--使用帮助：
--1、此脚本作为所有包括建表、序列、存储过程、函数、包、类型和触发器脚本的一个调用主入口；
--2、新建所有内容需要在对应的文件件中进行编写，在本入口中使用@方式进行调用
--   例如：@\base\mis\scott\table\test.sql;
--3、修改表结构或内容的语句，直接在本文档中插入语句，并且在对应的建表语句中进行修改；
--   例如: alter table scott.test add column sex varchar2(10) default '女';
--4、注释说明格式：[Issue ID] 简单说明描述 [修改人] [日期]
--   例如：[000001] 新增日志功能 [张三] [2014-01-01]
--5、SQLScripts的目录结构
--   +base   		//基目录
--   ++mis			//mis系统目录(如果单独作为一个SQL项目平级的可以有更多)
--   +++scott       //用户目录
--   ++++function   //函数目录
--   ++++package	//包目录
--   ++++procedure	//存储过程目录
--   ++++sequence	//序列目录
--   ++++table		//表结构目录
--	 ++++trigger	//触发器目录
--   ++++type		//类型目录
--6、在commnd或者pl/sql的comman中执行方法：
--   sql> @@<物理路径>/Update.sql
--   例如：
--   sql> @@d:/SQLScripts/Update.sql


--测试脚本添加 2014-01-23 周才樑
@\base\mis\scott\table\myTest.sql;


--特别注意：所有的脚本提交必须在这行之前，并且严格按照使用帮助进行修改。
commit;