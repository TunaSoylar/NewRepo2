<%@ Page Title="" Language="C#" MasterPageFile="~/Ogretmen.Master" AutoEventWireup="true" CodeBehind="DuyuruSil.aspx.cs" Inherits="ogrenci_bilgi_sistemi.DuyuruSil" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
</asp:Content>
<table class="table table-bordered table-hover">
    <thead class="thead-dark ">
        <tr>
            <th scope="col">ID</th>
            <th scope="col">AD</th>
            <th scope="col">SOYAD</th>
            <th scope="col">TELEFON</th>
            <th scope="col">MAIL</th>
            <th scope="col">ŞİFRE</th>
            <th scope="col">İŞLEMLER</th>
        </tr>
    </thead>
    <tbody>

        <asp:Repeater ID="Repeater1" runat="server">
            <ItemTemplate>

                <tr>
                    <td><%#Eval("OGRID")%></td>
                    <td><%#Eval("OGRAD") %></td>
                    <td><%#Eval("OGRSOYAD") %></td>
                    <td><%#Eval("OGRTELEFON") %></td>
                    <td><%#Eval("OGRMAİL") %></td>
                    <td><%#Eval("OGRSIFRE") %></td>
                    <td>
                        <asp:HyperLink ID="HyperLink1" runat="server" CssClass="btn btn-danger" NavigateUrl='<%#"~/OgrenciSil.aspx?OGRID="+ Eval("OGRID") %>'>SİL</asp:HyperLink>
                        <asp:HyperLink ID="HyperLink2" runat="server" CssClass="btn btn-success" NavigateUrl='<%#"~/OgrenciGuncelle.aspx?OGRID="+ Eval("OGRID") %>'>GÜNCELLE</asp:HyperLink>

                    </td>
                </tr>

            </ItemTemplate>
        </asp:Repeater>


    </tbody>
</table>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
