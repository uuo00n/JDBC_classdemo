<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: junbo
  Date: 2022/12/12
  Time: 8:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" import="java.util.*" %>
<html>
<head>
    <title>huangjunbo的第一个程序</title>
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
        String sqllag = "select name,department from jsp_database.student";
        ResultSet rs = stmt.executeQuery(sqllag);
        while (rs.next()) {
            String name = rs.getString("name");
            String department = rs.getString("department");
%>
姓名：<%=name%>
系别：<%=department%>
<br>
<%
        }
        rs.close();
        stmt.close();
        conn.close();
    } catch (ClassNotFoundException | SQLException e) {
        e.printStackTrace();
    }

%>
</body>
</html>
