<%@ Page Title="" Language="C#" MasterPageFile="~/Ogrenci.Master" AutoEventWireup="true" CodeFile="OgrenciDefault.aspx.cs" Inherits="ogrenci_bilgi_sistemi.OgrenciDefault" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <form id="Form1" runat="server">
        <div class="form-group">
            <div>
                <asp:TextBox ID="TxtNumara" runat="server" CssClass="form-control" Enabled="false" Text="Numara" />
            </div>
            <br />
            <div>
                <asp:TextBox ID="TxtAdSoyad" runat="server" CssClass="form-control" Enabled="false" Text="Ad Soyad" />
            </div>
            <br />
            <div>
                <asp:TextBox ID="TxtMail" runat="server" CssClass="form-control" Enabled="false" Text="Mail" />
            </div>
            <br />
            <div>
                <asp:TextBox ID="TxtTelefon" runat="server" CssClass="form-control" Enabled="false" Text="Telefon" />
            </div>
            <br />
            <div>
                <asp:TextBox ID="TxtSifre" runat="server" CssClass="form-control" Enabled="false" Text="Şifre" />
            </div>
        </div>
    </form>
</asp:Content>
