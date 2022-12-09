<%@ page import="java.sql.*" %><%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2022/12/9
  Time: 11:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>关闭JDBC对象</title>
</head>
<body>
<%
    Connection con;
    Statement sql;
    ResultSet rs;
    try {
        Class.forName("com.mysql.jdbc.Driver");
    } catch (Exception e) {
        out.println("没有把MySQL数据库的JDBC数据库驱动复制到JDK的拓展目录中");
    }
    try {
        String url = "jdbc:mysql://localhost:3306/jsp_database";
        String user = "root";
        String password = "huang1107";
        con = DriverManager.getConnection(url, user, password);
        sql = con.createStatement();
        rs = sql.executeQuery("SELECT * from score");
        out.print("<table border = 1>");
        out.print("<tr>");
        out.print("<th width = 100>" + "编号");
        out.print("<th width = 100>" + "学号");
        out.print("<th width = 100>" + "课程名");
        out.print("<th width = 100>" + "分数");
        out.print("</tr>");
        while (rs.next()) {
            out.print("<tr>");
            out.print("<td>" + rs.getInt("id") + "</td>");
            out.print("<td>" + rs.getInt("Stu_id") + "</td>");
            out.print("<td>" + rs.getString("C_name") + "</td>");
            out.print("<td>" + rs.getInt("Grande") + "</td>");
            out.print("</tr>");
        }
        out.print("</table>");
        con.close();
    } catch (SQLException e) {
        out.print(e);
    }
%>
</body>
</html>
