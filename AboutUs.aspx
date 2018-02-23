<%@ Page Title="About Us" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="AboutUs.aspx.cs" Inherits="AboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

 <%--Eskender Memetov 300805013 --%>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    &nbsp;<p>
        Hello, my name is Eskender Memetov, currently i'm enrolled into full time studies in Centennial College on 
        Software Engineering Technology Interactive Gaming program, the Library Collection application is an Assignment 
        for Web Application Development Comp_229 course.
    </p>
    <b>Please feel free to to leave any feedback: </b>
    <br />
    <p>
        <b style="color: red">*</b>Name:&nbsp;&nbsp;&nbsp;&nbsp;
         <br />
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="txtNameReqVal" runat="server" ControlToValidate="txtName" ErrorMessage="&lt;br/&gt;Name is required"  SetFocusOnError="True"></asp:RequiredFieldValidator>
    </p>
  <%--Eskender Memetov 300805013 --%>
    <p>
        <b style="color: red">*</b>Email:
            <br />
        <asp:TextBox ID="txtEmail" runat="server" TextMode="Email"></asp:TextBox>
        <asp:RequiredFieldValidator ID="txtEmailReqVal" runat="server" ControlToValidate="txtEmail" ErrorMessage="&lt;br/&gt;Email is required"  SetFocusOnError="True"></asp:RequiredFieldValidator>
    </p>
    <p>
        <b style="color: red">*</b>Comment:
         <br />
        <asp:TextBox ID="txtComment" runat="server" Columns="30" Rows="5" TextMode="MultiLine"></asp:TextBox>
         <asp:RequiredFieldValidator ID="txtCommentReqVal" runat="server" ControlToValidate="txtComment" ErrorMessage="&lt;br/&gt;Comment field cannot be empty"  SetFocusOnError="True"></asp:RequiredFieldValidator>
    </p>
    <p style="color: orangered">
        <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click" />
    </p>
    <p style="color: orangered">

        <h2>Comment: </h2>
       
        <asp:DataList ID="DataList1" runat="server" DataSourceID="feedbackDataSource" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Width="100%">
            <AlternatingItemStyle BackColor="White" />
            <FooterStyle BackColor="#CCCC99" />
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <ItemStyle BackColor="#F7F7DE" />
            <ItemTemplate>              
                NAME:
                <asp:Label ID="NAMELabel" runat="server" Text='<%# Eval("NAME") %>' />
                <br />
                EMAIL:
                <asp:Label ID="EMAILLabel" runat="server" Text='<%# Eval("EMAIL") %>' />
                <br />
                COMMENT:
                <asp:Label ID="COMMENTLabel" runat="server" Text='<%# Eval("COMMENT") %>' />
                <br />
<br />
            </ItemTemplate>
            <SelectedItemStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        </asp:DataList>
    </p>
    <p style="color: orangered">
        <asp:SqlDataSource ID="feedbackDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:LibraryColletion %>" SelectCommand="SELECT [COMMENTID], [NAME], [EMAIL], [COMMENT] FROM [FEEDBACK]"></asp:SqlDataSource>
    </p>
    
</asp:Content>

 <%--Eskender Memetov 300805013 --%>