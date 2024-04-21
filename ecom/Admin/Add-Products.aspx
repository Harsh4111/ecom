<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/admin.Master" AutoEventWireup="true" CodeBehind="Add-Products.aspx.cs" Inherits="ecom.Admin.WebForm2" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Label ID="NameProducts" runat="server" Text="Name : "></asp:Label>
    <asp:TextBox ID="namep" runat="server"></asp:TextBox>
    <asp:Label ID="DisProducts" runat="server" Text="Discription : "></asp:Label>
    <asp:TextBox ID="disp" runat="server"></asp:TextBox>
    <asp:Label ID="PriceProducts" runat="server" Text="Price : "></asp:Label>
    <asp:TextBox ID="pricep" runat="server"></asp:TextBox><br />
    <asp:Label ID="Stockproducts" runat="server" Text="Price : "></asp:Label>
<asp:TextBox ID="stockp" runat="server"></asp:TextBox><br />
    <asp:Button ID="AddProduct" runat="server" Text="Submit" OnClick="AddProduct_Click" />
</asp:Content>
    