<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="FrmGiveComments.aspx.cs" Inherits="New_Web.FrmGiveComments" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">



    
    <link href="CSS/Style_Contact.css" rel="stylesheet" />
    
 





</asp:Content>














<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">




    
    <asp:Panel ID="Panel1" runat="server" ScrollBars="Auto" CssClass="gv-comment-panel">
        <h6>give comment : </h6>
        <br />
        <br />
        <br />
        <h6>name : </h6>
        <asp:Label ID="Label1" runat="server" Text="Label" CssClass="Label1"></asp:Label>
        <br />
        <h6>email : </h6>
        <asp:Label ID="Label2" runat="server" Text="Label" CssClass="Label1"></asp:Label>
        <br />
        <h6>date : </h6>
        <asp:Label ID="Label3" runat="server" Text="Label" CssClass="Label1"></asp:Label>
        <br />
        <h6>time : </h6>
        <asp:Label ID="Label4" runat="server" Text="Label" CssClass="Label1"></asp:Label>
        <br />
        <br />
        <h6>comment : </h6>  &nbsp; &nbsp;
        <br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Height="125px" style="margin-bottom: 13px" TextMode="MultiLine" Width="294px" CssClass="txt-box"></asp:TextBox>
        &nbsp;<br />
        <br />
        <br />
        &nbsp;<asp:Label ID="lblmessage" runat="server" ForeColor="Red"></asp:Label>
        <br />
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="submit" CssClass="btn-submit" />

        <asp:LinkButton ID="LinkButton1" runat="server" Visible="False" CssClass="lnk-view-comments" PostBackUrl="~/FrmShowComments.aspx">View Comments</asp:LinkButton>

        <br />
    </asp:Panel>











</asp:Content>
