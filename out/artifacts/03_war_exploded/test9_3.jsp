<%@ page import="java.sql.Connection" %>
<%@ page import="java.sql.Statement" %>
<%@ page import="java.sql.DriverManager" %>
<%@ page import="java.sql.SQLException" %><%--
  Created by IntelliJ IDEA.
  User: junbo
  Date: 2022/12/12
  Time: 10:34
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>黄俊博的第二个代码</title>
</head>
<body>
<%
    Connection conn = null;
    Statement stmt = null;
    try {
        Class.forName("com.mysql.jdbc.Driver");
        String url = "jdbc:mysql://localhost:3306/jsp_database?characterEncoding=utf-8&serverTimezone=GMT";
        String user = "root";
        String password = "huang1107";
        conn = DriverManager.getConnection(url, user, password);
        stmt = conn.createStatement();
        String sql = "insert into student value (907,'李强','男','1990','电子系','北京市西城区')";
        int num = stmt.executeUpdate(sql);
        stmt.close();
        conn.close();
        out.println("插入数据影响的行数为" + num);
    } catch (ClassNotFoundException | SQLException e) {
        e.printStackTrace();
    }
%>
</body>
</html>
