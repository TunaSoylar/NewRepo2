<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DersEkle.aspx.cs" Inherits="ogrenci_bilgi_sistemi.DersEkle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">

    <form id="Form1" runat="server">


        <div class="form-group">

            <div></div>
            
        </div>
        <br />
        <div>
            <asp:Label for="TxtDers" runat="server">Ders Adı</asp:Label>
            <asp:TextBox ID="TxtDers" runat="server" CssClass="form-control"></asp:TextBox>

        </div>
        <br />
        <div>
            
        </div>
        <br />

        <asp:Button ID="Button2" runat="server" Text="Oluştur" CssClass="btn btn-info" OnClick="Button2_Click" />
        <br />
    </form>

</asp:Content>
