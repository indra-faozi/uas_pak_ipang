<%@include file="koneksi.jsp" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Pembayaran Kas</title>
</head>

<body>
    <center>
        <h1>Tambah Data</h1>
        <form action="tambah_data.jsp" method="post">
            <table border="1">
                <tr>
                    <td>Nomor KTP</td>
                    <td>:</td>
                    <td><input type="number" min="1" name="no_ktp" required></td>
                </tr>
                <tr>
                    <td>Nomor KK</td>
                    <td>:</td>
                    <td><input type="number" min="1" name="no_kk" required></td>
                </tr>
                <tr>
                    <td>Nama Kepala Rumah Tangga</td>
                    <td>:</td>
                    <td><input type="text" name="nama" autofocus required></td>
                </tr>
                <tr>
                    <td>Alamat Rumah</td>
                    <td>:</td>
                    <td><textarea name="alamat"></textarea></td>
                </tr>
                <tr>
                    <td>Nomor HP</td>
                    <td>:</td>
                    <td><input type="number" min="1" name="no_hp" required></td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                    <td>&nbsp;</td>
                    <td><input type="submit" name="button_submit" value="Simpan"></td>
                </tr>
            </table>
        </form>

        <hr>
        <h1>Data Warga RT 27</h1>
        <table border="1">
            <thead>
                <tr>
                    <th>Nomor KTP</th>
                    <th>Nomor KK</th>
                    <th>Nama Kepala Rumah Tangga</th>
                    <th>Alamat Rumah</th>
                    <th>Nomor HP</th>
                </tr>
            </thead>
            <tbody>
                <%
                String data = "SELECT * FROM warga";
                rs = st.executeQuery(data);
                while(rs.next()){
                %>
                <tr>
                    <td><%= rs.getString("nomor_ktp")%></td>
                    <td><%= rs.getString("nomor_kk")%></td>
                    <td><%= rs.getString("kepala_rumah_tangga")%></td>
                    <td><%= rs.getString("alamat")%></td>
                    <td><%= rs.getString("no_hp")%></td>
                </tr>
                <% } %>
            </tbody>
        </table>
    </center>

</body>

</html>