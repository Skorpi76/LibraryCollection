﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Bookinfo.aspx.cs" Inherits="Bookinfo"%>
<%--<%@ PreviousPageType VirtualPath="Books.aspx" %>--%> 
  <%--Eskender Memetov 300805013 --%>
<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
  
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    
    <p>
        <br />
    </p>  <%--Eskender Memetov 300805013 --%>
    <asp:SqlDataSource ID="genreDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryColletion %>" SelectCommand="SELECT [GenreID], [GenreName] FROM [Genre]"></asp:SqlDataSource>
    <p>
        <asp:SqlDataSource ID="bookDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryColletion %>" 
            DeleteCommand="DELETE FROM [BOOKS] WHERE [BOOKID] = @BOOKID" 
            InsertCommand="INSERT INTO [BOOKS] ([BOOKTITLE], [BOOKAUTOR], [ISBN], [GENREID], [NUMBEROFPAGES], [LANDEDTOFRIEND], [FRIENDSNAME], [COMMENTS]) VALUES (@BOOKTITLE, @BOOKAUTOR, @ISBN, @GENREID, @NUMBEROFPAGES, @LANDEDTOFRIEND, @FRIENDSNAME, @COMMENTS)" 
            SelectCommand="SELECT * FROM Books  WHERE (Books.BookID = @BOOKID)"
            UpdateCommand="UPDATE [BOOKS] SET [BOOKTITLE] = @BOOKTITLE, [BOOKAUTOR] = @BOOKAUTOR, [ISBN] = @ISBN, [GENREID] = @GENREID, [NUMBEROFPAGES] = @NUMBEROFPAGES, [LANDEDTOFRIEND] = @LANDEDTOFRIEND, [FRIENDSNAME] = @FRIENDSNAME, [COMMENTS] = @COMMENTS WHERE [BOOKID] = @BOOKID">
            <DeleteParameters>
                <asp:Parameter Name="BOOKID" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="BOOKTITLE" Type="String" />
                <asp:Parameter Name="BOOKAUTOR" Type="String" />
                <asp:Parameter Name="ISBN" Type="String" />
                <asp:Parameter Name="GENREID" Type="Int32" />
                <asp:Parameter Name="NUMBEROFPAGES" Type="Int32" />
                <asp:Parameter Name="LANDEDTOFRIEND" Type="Int32" />
                <asp:Parameter Name="FRIENDSNAME" Type="String" />
                <asp:Parameter Name="COMMENTS" Type="String" />
            </InsertParameters>
            <SelectParameters>
                <asp:QueryStringParameter DefaultValue="0" Name="BOOKID" QueryStringField="move" Type="Int32" />
            </SelectParameters>
            <UpdateParameters>
                <asp:Parameter Name="BOOKTITLE" Type="String" />
                <asp:Parameter Name="BOOKAUTOR" Type="String" />
                <asp:Parameter Name="ISBN" Type="String" />
                <asp:Parameter Name="GENREID" Type="Int32" />
                <asp:Parameter Name="NUMBEROFPAGES" Type="Int32" />
                <asp:Parameter Name="LANDEDTOFRIEND" Type="Int32" />
                <asp:Parameter Name="FRIENDSNAME" Type="String" />
                <asp:Parameter Name="COMMENTS" Type="String" />
                <asp:Parameter Name="BOOKID" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
        <asp:DetailsView ID="BookDetails0" runat="server" Height="239px" Width="100%" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" AutoGenerateRows="False" AutoGenerateDeleteButton="True"  DataKeyNames="BOOKID" DataSourceID="bookDataSource" OnItemDeleted="BookDetails0_ItemDeleted" OnItemInserted="BookDetails0_ItemInserted" OnItemUpdated="BookDetails0_ItemUpdated">
            <EditRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="BOOKID" HeaderText="BOOKID" InsertVisible="False" ReadOnly="True" SortExpression="BOOKID" Visible="False" />
                <asp:BoundField DataField="BOOKTITLE" HeaderText="Title:" SortExpression="BOOKTITLE" />
                <asp:BoundField DataField="BOOKAUTOR" HeaderText="Author:" SortExpression="BOOKAUTOR" />
                <asp:BoundField DataField="ISBN" HeaderText="ISBN:" SortExpression="ISBN" />
              <asp:TemplateField HeaderText="Genre:" SortExpression="GenreID">
                    <EditItemTemplate>
                        <asp:DropDownList ID="genreDD" runat="server" DataSourceID="genreDataSource" DataTextField="GenreName" DataValueField="GenreID" SelectedValue= <%# Bind("GenreID") %>>
                        </asp:DropDownList>
                    </EditItemTemplate>
                    <ItemTemplate>
                         <asp:DropDownList ID="genreDD2" runat="server" DataSourceID="genreDataSource" DataTextField="GenreName" DataValueField="GenreID" SelectedValue= <%# Bind("GenreID") %> Enabled="false">
                        </asp:DropDownList>
                    </ItemTemplate>
            </asp:TemplateField>
                <asp:BoundField DataField="NUMBEROFPAGES" HeaderText="Number of pages:" SortExpression="NUMBEROFPAGES" />
                <asp:BoundField DataField="LANDEDTOFRIEND" HeaderText="LANDEDTOFRIEND" SortExpression="LANDEDTOFRIEND" Visible="False" />
                <asp:BoundField DataField="FRIENDSNAME" HeaderText="Friend's name:" SortExpression="FRIENDSNAME" />
                <asp:BoundField DataField="COMMENTS" HeaderText="About:" SortExpression="COMMENTS" />
                <asp:CommandField ShowEditButton="True" />
            </Fields>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
        </asp:DetailsView>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>

    
</asp:Content>

  <%--Eskender Memetov 300805013 --%>