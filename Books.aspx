<%@ Page Title="Books" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Books.aspx.cs" Inherits="Books" %>

<%--Eskender Memetov 300805013 --%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    <style>
        table {
            width: 100%;
            border-top-style: dotted;
            border-right-style: solid;
            border-bottom-style: dotted;
            border-left-style: solid;
            border-radius: 5px;
            font-size: 20px;
            margin-right: 1px;
        }

        .firstTr {
            height: 50px;
            padding: 15px;
            text-align: left;
            color: #F99A5C;
        }

        td {
            height: 50px;
            padding: 15px;
            text-align: center;
        }
        .invisible {
    display: none;
}
      
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <asp:Label ID="lblMessage" runat="server"></asp:Label>
    <br />
    <asp:GridView ID="gridBooks" runat="server" AllowPaging="True" AutoGenerateColumns="False" DataSourceID="booksDataSource" DataKeyNames="BOOKID"  OnRowCommand="gridBooks_RowCommand" >
        <Columns>
            <asp:BoundField DataField="BOOKID" HeaderText="ID" ReadOnly="True" SortExpression="BOOKID" ItemStyle-CssClass="invisible" HeaderStyle-CssClass="invisible">
            </asp:BoundField>
           <asp:TemplateField HeaderText="Title">
                <ItemTemplate>
                    <asp:LinkButton ID="viewBook" runat="server" CommandName="view" Text='<%# Eval("BookTitle") %>' CommandArgument='<%# Bind("BookID") %>'></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
            <asp:BoundField DataField="BOOKAUTOR" HeaderText="Author" SortExpression="BOOKAUTOR" />
            <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
        </Columns>
    </asp:GridView>
    <br />
    <asp:SqlDataSource ID="booksDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryColletion %>" SelectCommand="SELECT [BOOKID], [BOOKTITLE], [BOOKAUTOR], [ISBN] FROM [BOOKS]"></asp:SqlDataSource>
</asp:Content>

<%--Eskender Memetov 300805013 --%>