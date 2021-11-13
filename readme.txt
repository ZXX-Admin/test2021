SpringMVC:视图层，界面层，负责接收请求，显示处理结果的。
Spring:业务层，管理service,dao,工具类对象的。
Mybatis:持久层，访问数据库的。


用户发起请求----SpringMVC接收----Spring中的Service对象------Mybatis处理数据

这些web用的对象定义在springmvc的配置文件中

service,dao对象定义在spring的配置文件中，让spring管理这些对象

springmvc容器和spring容器是有关系的，关系已经确定好了
springmvc容器是spring容器的子容器
在子容器的control可以访问父容器中的Service对象，就可以实现controller使用service对象

实现步骤：

1.加入依赖：
   springmvc,spring,mybatis三个框架的依赖，jackson依赖，mysql驱动，druid连接池
   jsp,servlet依赖

2.写web.xml
  a.注册DispatcherServlet：1.创建springmvc容器对象，才能创建Controller类对象 2.创建的是servlet,才能接受用户的请求

  b.注册spring的监听器:ContextLoaderListener:创建spring的容器对象，才能创建service,dao等对象

  c.注册字符集过滤器，解决post请求乱码的问题

3.创建包，Controller包，service,dao，实体类报名创建好

4.写springmvc,spring,mybatis的配置文件

5.写代码，dao接口和mapper文件，service和实现类，controller,实体类
