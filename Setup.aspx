<%@ Page Title="Setup" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Setup.aspx.cs" Inherits="Setup" %>
 <%--Eskender Memetov 300805013 --%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <h1>Change the theme</h1>
    <asp:Button ID="btnLight" runat="server" OnClick="btnOrangeMain_Click" Text="Light" />
<asp:Button ID="btnDark" runat="server" OnClick="btnDark_Click" Text="Dark" />

</asp:Content>

 <%--Eskender Memetov 300805013 --%>