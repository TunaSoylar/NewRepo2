<%@ Page Language="C#" AutoEventWireup="true" CodeFile="LoginPanel.aspx.cs" Inherits="ogrenci_bilgi_sistemi.LoginPanel" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <link href="Dosyalar1/bootstrap.min.css" rel="stylesheet" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Öğrenci Bilgi Sistemi Giriş</title>
    <style type="text/css">
        #form1 {
            height: 966px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server" style="background-image: url('fb-bg.jpg')">
        <div style="width: 700px; margin: auto; background-image: url('fb-bg.jpg'); height: 0px;">

            <br />

            <div style="margin:auto">
                <asp:Image ID="Image1" runat="server" Height="143px" Width="313px" ImageUrl="~/fb-logo-mobile.png" />
            </div>
            
            <br /><br /><br /><br />

            <div>
                <asp:Label for="TxtNumara" runat="server" Style="color: #FFFFFF; font-weight: 700;">Kullanıcı Adı (E-posta)</asp:Label>
                <br />
                <asp:TextBox ID="TxtNumara" runat="server" CssClass="form-control" Width="700px" Height="36px"></asp:TextBox>
            </div>
            <br />

            <div>
                <asp:Label for="TxtSifre" runat="server" Style="color: #FFFFFF; font-weight: 700;">Şifre</asp:Label>
                <br />
                <asp:TextBox ID="TxtSifre" runat="server" TextMode="Password" CssClass="form-control" Width="700px"></asp:TextBox>
            </div>
            <br />

            <div>
                <asp:Button ID="Button1" runat="server" Text="Giriş Yap" CssClass="btn btn-warning" Width="700px" OnClick="Button1_Click" />
                <br /><br />
                <asp:Button ID="Button2" runat="server" Text="İptal Et" CssClass="btn btn-danger" Width="200px" />
                <asp:Button ID="Button3" runat="server" Text="Şifremi Unuttum" CssClass="btn btn-default" Width="300px" />
                <asp:Button ID="Button4" runat="server" Text="Yardım" CssClass="btn btn-info" Width="190px" />
            </div>
        </div>
    </form>
</body>
</html>
