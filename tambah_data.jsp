<%@include file="koneksi.jsp"%>
<%
String submit = request.getParameter("button_submit");

if (submit == null) {
    response.sendRedirect("./");
}
String no_ktp = request.getParameter("no_ktp");
String no_kk = request.getParameter("no_kk");
String nama = request.getParameter("nama");
String alamat = request.getParameter("alamat");
String no_hp = request.getParameter("no_hp");


String query = "INSERT INTO warga(nomor_ktp, nomor_kk, kepala_rumah_tangga, alamat, no_hp) VALUES(?,?,?,?,?)";

PreparedStatement ps = con.prepareStatement(query);
ps.setString(1, no_ktp);
ps.setString(2, no_kk);
ps.setString(3, nama);
ps.setString(4, alamat);
ps.setString(5, no_hp);
ps.executeUpdate();
response.sendRedirect("./");
%>