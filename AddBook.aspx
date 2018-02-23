<%@ Page Title="Add Book" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AddBook.aspx.cs" Inherits="AddBook" %>

 <%--Eskender Memetov 300805013 --%>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div>

    
        <asp:SqlDataSource ID="genreDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryColletion %>" SelectCommand="SELECT [GenreID], [GenreName] FROM [Genre]"></asp:SqlDataSource>

    
        <addbook:addbookcontrol runat="server" id="AddBookUserControl" />
        <p>
            Genre:
            <br />
            <asp:DropDownList ID="dropdownGenre" runat="server" DataSourceID="genreDataSource" DataTextField="GenreName" DataValueField="GenreID">
                <asp:ListItem>Horror</asp:ListItem>
                <asp:ListItem>Fiction</asp:ListItem>
            </asp:DropDownList>
        </p>
        <p>
            Number of pages:
            <br />
            <asp:TextBox ID="txtNumberOfPages" runat="server" TextMode="Number"></asp:TextBox>
            <asp:RequiredFieldValidator ID="NumberOfPagesReqVal" runat="server" ControlToValidate="txtNumberOfPages" ErrorMessage="&lt;br/&gt; Number of pages if required"  SetFocusOnError="True"></asp:RequiredFieldValidator>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToValidate="txtNumberOfPages" Display="Dynamic" ErrorMessage="&lt;br/&gt;Number of pages cannot be 0 or less" ForeColor="Red" Operator="GreaterThan" SetFocusOnError="True" ValueToCompare="0"></asp:CompareValidator>
        </p>
        <p>Landed to a fried:</p>
        <asp:RadioButton ID="rdLadnedYes" runat="server" GroupName="LandedToFriend" Text="Yes" AutoPostBack="True" OnCheckedChanged="rdLadnedYes_CheckedChanged" />
        <asp:RadioButton ID="rdLandedNo" runat="server" Checked="True" GroupName="LandedToFriend" Text="No" AutoPostBack="True" />
        <p>
            Friend's name:
            <br />
            <asp:TextBox ID="txtFriendName" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="FriendNameValReq" runat="server" ControlToValidate="txtFriendName" Display="Dynamic" ErrorMessage="&lt;br/&gt; Friend's name is required" SetFocusOnError="True"></asp:RequiredFieldValidator>
        </p>  <%--Eskender Memetov 300805013 --%>
        <p>
            Comments:
            <br />
            <asp:TextBox ID="txtComments" runat="server" Columns="30" Rows="5" TextMode="MultiLine"></asp:TextBox>
        </p>
        <p>
            <asp:Button ID="btnCancel" runat="server" Text="Cancel" CausesValidation="False" OnClick="btnCancel_Click" />
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnAddBook" runat="server" Text="Add book" OnClick="btnAddBook_Click" />
        </p>

    </div>

</asp:Content>

 <%--Eskender Memetov 300805013 --%>