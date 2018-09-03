<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="FrmAdminPackages.aspx.cs" Inherits="New_Web.Secure.FrmAdminPackages" %>



<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


    <link href="../CSS/Style_Admin_pages.css" rel="stylesheet" />
    <script src="../JQuery/JQ.js"></script>



</asp:Content>













<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="Packages-Page-Area">
           


                                <h1>PACKAGES</h1>



                    <h2>Packages : </h2>
        
        <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged" CssClass="DropDownList-chng-pkg">
            
            <asp:ListItem>Limited</asp:ListItem>
            <asp:ListItem>Un-Limited</asp:ListItem>

                                </asp:DropDownList>


           



                                 <%-- Panel : 1 --%>







        <asp:Panel ID="Panel1" runat="server" CssClass="Panel-Packages-1" Visible="true">

                            <h3 id="limit-pkg-1"> LIMIT PACKAGE </h3>


        <p id="ID">ID : </p>

        <asp:DropDownList ID="DropDownList1" runat="server" CssClass="DropDownList"></asp:DropDownList>

        <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/IMAGES/Admin_Images/magnifying-glass-145942_960_720.png" CssClass="img-btn" OnClick="ImageButton1_Click" />

       
        <br />
        
         <p id="Mb">MBps : </p>

        <asp:TextBox ID="TextBox1" runat="server" CssClass="Txt-boxes" ></asp:TextBox>

        

            <br />

        
        <p id="Limit">LIMIT : </p>
        
        <asp:TextBox ID="TextBox2" runat="server" CssClass="Txt-boxes"></asp:TextBox>




            <br />

        
        <p id="Price">PRICE : </p>

        <asp:TextBox ID="TextBox3" runat="server" CssClass="Txt-boxes"></asp:TextBox>





            <br />




        <asp:Button ID="Button1" runat="server" Text="ADD" CssClass="btn-Add" OnClick="Button1_Click" />


        

        <asp:Button ID="Button2" runat="server" Text="UPDATE" CssClass="btn-Update" OnClick="Button2_Click" />




        <asp:Button ID="Button3" runat="server" Text="DELETE" CssClass="btn-Delete" OnClick="Button3_Click" />




        <asp:Label ID="lbl_Message" runat="server" CssClass="Label1"></asp:Label>




            </asp:Panel>







                    <%-- Panel : 2 --%>


        






        


        <asp:Panel ID="Panel2" runat="server" CssClass="Panel-Packages-1" Visible="False">



                            <h3 id="limit-pkg-2"> UN-LIMITED PACKAGE </h3>





        <p id="ID-2">ID : </p>

        <asp:DropDownList ID="DropDownList2" runat="server" CssClass="DropDownList"></asp:DropDownList>

        <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/IMAGES/Admin_Images/magnifying-glass-145942_960_720.png" CssClass="img-btn" OnClick="ImageButton2_Click" />

       

            <br />
        
        
         <p id="Mb-2">MBps : </p>

        <asp:TextBox ID="TextBox4" runat="server" CssClass="Txt-boxes" ></asp:TextBox>


            <br />
        
        
        <p id="Limit-2">LIMIT : </p>
        
        <asp:TextBox ID="TextBox5" runat="server" CssClass="Txt-boxes"></asp:TextBox>



            <br />


        
        <p id="Price-2">PRICE : </p>

        <asp:TextBox ID="TextBox6" runat="server" CssClass="Txt-boxes"></asp:TextBox>



            <br />




        <asp:Button ID="btn_Add_2" runat="server" Text="ADD" CssClass="btn-Add" OnClick="btn_Add_2_Click"  />


        

        <asp:Button ID="btn_Update_2" runat="server" Text="UPDATE" CssClass="btn-Update" OnClick="btn_Update_2_Click"  />




        <asp:Button ID="btn_Delete_2" runat="server" Text="DELETE" CssClass="btn-Delete" OnClick="btn_Delete_2_Click"  />




        <asp:Label ID="lbl_Message_2" runat="server" CssClass="Label1"></asp:Label>




            </asp:Panel>










        














        </div>



    



</asp:Content>
