<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.SQLException" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/12/9
  Time: 9:31
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>JDBC_test</title>
</head>
<body>
<%
    Connection conn = null;
    try {
        Class.forName("com.mysql.jdbc.Driver");
    } catch (Exception e) {
        out.println("没有吧MySQL数据库的JDBC数据库驱动复制到JDK的拓展目录中");
    }
    try {
        String url = "jdbc:mysql://localhost:3306/hjb_database";
        String user = "root";
        String password = "168168";
        conn = DriverManager.getConnection(url, user, password);
        out.println("<h1>hjb的JDBC专用驱动数据库连接数据库成功！</h1>");
    } catch (SQLException e) {
        out.println(e.getMessage());
    } finally {
        try {
            if (conn != null) conn.close();
        } catch (Exception e) {

        }
    }
%>
</body>
</html>
