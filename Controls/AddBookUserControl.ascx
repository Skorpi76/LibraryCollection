<%@ Control Language="C#" AutoEventWireup="true" CodeFile="AddBookUserControl.ascx.cs" Inherits="Controls_AddBookUserControl" %>
 <%--Eskender Memetov 300805013 --%>
        <p>
            Name of book:
            <br />
            <asp:TextBox ID="txtBookName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="BookNameReqVal" runat="server" ControlToValidate="txtBookName" Display="Dynamic" ErrorMessage="&lt;br/&gt; Book name is Required"  SetFocusOnError="True"></asp:RequiredFieldValidator>
        </p>
        <p>
            Author(s):
            <br />
            <asp:TextBox ID="txtAuthorName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="AutorNameReqVal" runat="server" ControlToValidate="txtAuthorName" ErrorMessage="&lt;br/&gt; Author's name is required"  SetFocusOnError="True"></asp:RequiredFieldValidator>
        </p>
        <p>
            ISBN number:
            <br />
            <asp:TextBox ID="txtIsbnNumber" runat="server"></asp:TextBox>
        </p>

 <%--Eskender Memetov 300805013 --%>