<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="OgrenciEkle.aspx.cs" Inherits="ogrenci_bilgi_sistemi.OgrenciEkle" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">


        <div class="form-group">

            <div></div>
            <asp:Label for="TxtOgrad" runat="server">Öğrenci Adı</asp:Label>
            <asp:TextBox ID="TxtOgrad" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
            <asp:Label for="TxtOgrSoyad" runat="server">Öğrenci Soyadı</asp:Label>
            <asp:TextBox ID="TxtOgrSoyad" runat="server" CssClass="form-control"></asp:TextBox>
            
                </div>
                <br />
                <div>
            <asp:Label for="TxtOgrTelefon" runat="server">Öğrenci Telefon</asp:Label>
            <asp:TextBox ID="TxtOgrTelefon" runat="server" CssClass="form-control"></asp:TextBox>

            </div>
        <br />
            <div>
            <asp:Label for="TxtOgrMail" runat="server">Öğrenci Mail</asp:Label>
            <asp:TextBox ID="TxtOgrMail" runat="server" CssClass="form-control"></asp:TextBox>

</div>
        <br />
           <div>
            <asp:Label for="TxtOgrSifre" runat="server">Öğrenci Şifre</asp:Label>
            <asp:TextBox ID="TxtOgrSifre" runat="server" CssClass="form-control"></asp:TextBox>

</div>
      <br />
           <div>
            <asp:Label for="TxtOgrFoto" runat="server">Öğrenci Fotoğraf Linki</asp:Label>
            <asp:TextBox ID="TxtOgrFoto" runat="server" CssClass="form-control"></asp:TextBox>

</div>
        

        <br />

        <asp:Button ID="Button2" runat="server" Text="Kaydet" CssClass="btn btn-info" OnClick="Button2_Click" />
            
        </div>

        
        

    </form>

</asp:Content>
