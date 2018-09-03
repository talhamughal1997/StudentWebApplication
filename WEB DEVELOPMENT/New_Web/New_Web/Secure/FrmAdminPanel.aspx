<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="FrmAdminPanel.aspx.cs" Inherits="New_Web.Secure.FrmAdminPanel" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


     <link href="../CSS/Style_Admin_pages.css" rel="stylesheet" />

    <script src="../JQuery/JQ.js"></script>






</asp:Content>












<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">



     <div class="Page-Area">











        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/IMAGES/Admin_Images/new-package-magic-300x228.jpg" CssClass="home-img-btn" PostBackUrl="~/Secure/FrmAdminPackages.aspx"/>


        








    </div>





</asp:Content>
