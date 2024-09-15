<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="NotGuncelle.aspx.cs" Inherits="ogrenci_bilgi_sistemi.NotGuncelle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">


    <form id="Form1" runat="server">



        <div class="form-group">

            <div>
                <asp:Label for="TxtDersad" runat="server">Ders Adı</asp:Label>
                <asp:TextBox ID="TxtDersad" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />

            <div>
                <asp:Label for="TxtOgrID" runat="server">Öğrenci ID</asp:Label>
                <asp:TextBox ID="TxtOgrID" runat="server" CssClass="form-control"></asp:TextBox>
            </div>
            <br />
            <div>
                <asp:Label for="TxtOgrAdSoyad" runat="server">Öğrenci Adı Soyadı</asp:Label>
                <asp:TextBox ID="TxtOgrAdSoyad" runat="server" CssClass="form-control"></asp:TextBox>

            </div>
            <br />
            <div>
                <asp:Label for="TxtSinav1" runat="server">Sınav 1</asp:Label>
                <asp:TextBox ID="TxtSinav1" runat="server" CssClass="form-control"></asp:TextBox>

            </div>
            <br />
            <div>
                <asp:Label for="TxtSinav2" runat="server">Sınav 2</asp:Label>
                <asp:TextBox ID="TxtSinav2" runat="server" CssClass="form-control"></asp:TextBox>

            </div>
            <br />
            <div>
                <asp:Label for="TxtSinav3" runat="server">Sınav 3</asp:Label>
                <asp:TextBox ID="TxtSinav3" runat="server" CssClass="form-control"></asp:TextBox>

            </div>
            <br />
            <div>
                <asp:Label for="TxtOrt" runat="server">Ortalama</asp:Label>
                <asp:TextBox ID="TxtOrt" runat="server" CssClass="form-control"></asp:TextBox>

            </div>

            <br />
            <div>
                <asp:Label for="TextDurum" runat="server">Durum</asp:Label>
                <asp:TextBox ID="TextDurum" runat="server" CssClass="form-control"></asp:TextBox>

            </div>


            <br />

            <asp:Button ID="Button2" runat="server" Text="Hesapla" CssClass="btn btn-toolbar" OnClick="Button2_Click" />
            <asp:Button ID="Button1" runat="server" Text="Güncelle" CssClass="btn btn-primary" OnClick="Button1_Click" />


        </div>




    </form>


</asp:Content>
