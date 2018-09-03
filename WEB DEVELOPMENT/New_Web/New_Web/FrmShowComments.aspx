<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="FrmShowComments.aspx.cs" Inherits="New_Web.FrmShowComments" %>





<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">



    
    <link href="CSS/Style_Contact.css" rel="stylesheet" />
    <script src="/JQuery/JQ.js"></script>








</asp:Content>


















<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


     <asp:Panel ID="Panel1" runat="server" ScrollBars="Auto" CssClass="gv-comments-dlst">
                    <asp:DataList ID="DataList1" runat="server" Width="527px">
                        <ItemTemplate>
                           <h4> Name :</h4><h5><%#Eval("uname") %> &nbsp; <%#Eval("ulname") %></h5><br /><h4>email :</h4><h5><%#Eval("uemail") %></h5><br /><h4>country :</h4><h5><%#Eval("ucountry") %></h5> <br /> <h4>Date :</h4><h5><%#Eval("dt") %> </h5> <br /> <h4>Time :</h4> <h5><%#Eval("time") %> </h5> <br /><br /> <h6>Comment :</h6> <section><%#Eval("comment") %> </section><br /><hr />
                        </ItemTemplate>
                    </asp:DataList>
                </asp:Panel>
            





</asp:Content>
