<%@ page import = "java.sql.*"%>

<%
Connection con=null;
Class.forName("com.mysql.jdbc.Driver");
String koneksi = "jdbc:mysql://localhost:3306/uas_pak_ipang";
String user = "root";
String pass = "";
con = DriverManager.getConnection(koneksi, user, pass);
Statement st = con.createStatement();
ResultSet rs = null;
%>