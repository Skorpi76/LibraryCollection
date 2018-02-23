<%@ Page Title="Search" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Search.aspx.cs" Inherits="Search" %>

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

    <p>
        Genre:&nbsp;&nbsp;
        <asp:DropDownList ID="genreDropDown" runat="server" DataSourceID="genreDataSource" DataTextField="GenreName" DataValueField="GenreID" AppendDataBoundItems="True" AutoPostBack="true">
            <asp:ListItem Text="Select All" Value="-1" />
        </asp:DropDownList>
        &nbsp;Friends Name:
        <asp:DropDownList ID="friendDropDown" runat="server" AppendDataBoundItems="True"  DataTextField="FRIENDSNAME" DataValueField="FRIENDSNAME" DataSourceID="friendsDataSource" AutoPostBack="true">
            <asp:ListItem Text="Select All" Value="-1" />
        </asp:DropDownList>
    &nbsp;&nbsp;&nbsp;&nbsp;
    </p>
    <p>
        <asp:Label ID="lblAddGenre" runat="server" Text="Add genre: "></asp:Label>
        <asp:TextBox ID="txtGenreName" runat="server"></asp:TextBox>
    </p>
    <p>
        <asp:Button ID="btnAddGenre" runat="server" Text="Add" OnClick="btnAddGenre_Click" />
    </p>
    <p>
        <asp:SqlDataSource ID="genreDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryColletion %>" SelectCommand="SELECT [GENREID], [GENRENAME] FROM [GENRE]"></asp:SqlDataSource>
        <asp:SqlDataSource ID="friendsDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryColletion %>" SelectCommand="SELECT [FRIENDSNAME] FROM [BOOKS] WHERE ([FRIENDSNAME] IS NOT NULL)"></asp:SqlDataSource>
        <asp:SqlDataSource ID="booksDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryColletion %>" SelectCommand="SELECT BOOKS.BOOKID, BOOKS.BOOKTITLE, BOOKS.BOOKAUTOR, BOOKS.ISBN, BOOKS.GENREID, BOOKS.FRIENDSNAME, BOOKS.LANDEDTOFRIEND, GENRE.GenreName, BOOKS.NUMBEROFPAGES FROM BOOKS RIGHT OUTER JOIN GENRE ON BOOKS.GenreID = GENRE.GENREID 
			WHERE ((BOOKS.GENREID = @GENREID) OR (@GENREID = @SelectGenre)) AND 
			((BOOKS.FRIENDSNAME = @FRIENDSNAME) OR (@FRIENDSNAME = @SelectFriend)) AND (BOOKS.BOOKID is not null)">
            <SelectParameters>
				<asp:ControlParameter ControlID="genreDropDown" Name="GENREID" PropertyName="SelectedValue" Type="Int32" />
				<asp:Parameter Name="SelectGenre" Type="Int32" DefaultValue="-1"/>
				<asp:ControlParameter ControlID="friendDropDown" Name="FRIENDSNAME" PropertyName="SelectedValue" Type="String" />
				<asp:Parameter Name="SelectFriend" Type="String" DefaultValue="-1"/>
			</SelectParameters>
        </asp:SqlDataSource>  <%--Eskender Memetov 300805013 --%>
    </p>
        <asp:GridView ID="bookGrid" runat="server" AutoGenerateColumns="False" DataKeyNames="BOOKID" DataSourceID="booksDataSource" AllowPaging="True" OnRowCommand="bookGrid_RowCommand">
            <Columns>
                <asp:BoundField DataField="BOOKID" HeaderText="ID" InsertVisible="False" ReadOnly="True" SortExpression="BOOKID" ItemStyle-CssClass="invisible" HeaderStyle-CssClass="invisible">
<HeaderStyle CssClass="invisible"></HeaderStyle>

<ItemStyle CssClass="invisible"></ItemStyle>
                </asp:BoundField>
                 <asp:TemplateField HeaderText="Title">
                <ItemTemplate>
                    <asp:LinkButton ID="viewBook" runat="server" CommandName="view" Text='<%# Eval("BookTitle") %>' CommandArgument='<%# Bind("BookID") %>'></asp:LinkButton>
                </ItemTemplate>
            </asp:TemplateField>
                <asp:BoundField DataField="BOOKAUTOR" HeaderText="Author" SortExpression="BOOKAUTOR" />
                <asp:BoundField DataField="ISBN" HeaderText="ISBN" SortExpression="ISBN" />
                <asp:BoundField DataField="GenreName" HeaderText="Genre" />
                <asp:BoundField DataField="FRIENDSNAME" HeaderText="Friend's Name" SortExpression="FRIENDSNAME" />           
            </Columns>
        </asp:GridView>

    <p>
    </p>
    <p>
    </p>
    <p>
    </p>
    <p>
    </p>

</asp:Content>

<%--Eskender Memetov 300805013 --%>