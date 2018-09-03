<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="FrmAdmin.aspx.cs" Inherits="New_Web.FrmAdmin" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">




    <link href="CSS/Style_Admin.css" rel="stylesheet" />

    <script src="/JQuery/JQ.js"></script>







</asp:Content>














<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">





    
    <div class="page-area">



        <asp:Login runat="server" CssClass="Login-box" LabelStyle-CssClass="label-style" TextBoxStyle-CssClass="textbox-style" PasswordLabelText="Password :" UserNameLabelText="User Name :" EnableTheming="True" TitleTextStyle-CssClass="title-style" LoginButtonStyle-CssClass="btn-login-style" ID="logIn1" ForeColor="White" OnAuthenticate="logIn_authenticate">  
<LabelStyle CssClass="label-style"></LabelStyle>

<TextBoxStyle CssClass="textbox-style"></TextBoxStyle>

<TitleTextStyle CssClass="title-style"></TitleTextStyle>
        </asp:Login>









    </div>


















</asp:Content>
