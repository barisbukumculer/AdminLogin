<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Veriler.aspx.cs" Inherits="AdminLogin.Veriler" %>

<!DOCTYPE html>
<html>
<head>
    <title>Admin Paneli</title>
    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <style>
        body {
            margin: 0;
            font-family: Arial, Helvetica, sans-serif;
        }

        .topnav {
            overflow: hidden;
            background-color: #333;
        }

            .topnav a {
                float: left;
                color: #f2f2f2;
                text-align: center;
                padding: 14px 16px;
                text-decoration: none;
                font-size: 17px;
            }

                .topnav a:hover {
                    background-color: #04AA6D;
                    color: black;
                }

                .topnav a.active {
                    background-color: #04AA6D;
                    color: white;
                }
    </style>
</head>
<body>
    <div class="topnav">
        <a href="#home">Ana Sayfa</a>
        <a href="#news">Kullanıcılar</a>
        <a href="#contact">Şifreler</a>
        <a href="#about">İletişim</a>
    </div>
    <form runat="server">
        <div style="margin-top: 15px">
            <table class="table table-bordered">
                <tr>
                    <th>ID</th>
                    <th>KULLANICI ADI</th>
                    <th>ŞİFRE</th>
                    <th>SİL</th>
                    <th>GÜNCELLE</th>
                </tr>
             
                    <asp:Repeater ID="Repeater1" runat="server">
                        <ItemTemplate>
                               <tr>
                            <th><%# Eval("ID") %> </th>
                            <td><%# Eval("KULLANICI") %> </td>
                            <td><%# Eval("SIFRE") %> </td>
                                  <td> <asp:HyperLink ID="HyperLink1" navigateUrl='<%# "SilmeSayfası.aspx?ID="+Eval("ID") %>' runat="server" CssClass="btn btn-danger">Sil</asp:HyperLink></td>
                                 <td>  <asp:HyperLink ID="HyperLink2" navigateUrl='<%# "GüncellemeSayfası.aspx?ID="+Eval("ID") %>' runat="server" CssClass="btn btn-success">Güncelle</asp:HyperLink></td>

                </tr>
                        </ItemTemplate>
                    </asp:Repeater>

            </table>
        </div>
    </form>
</body>
</html>
