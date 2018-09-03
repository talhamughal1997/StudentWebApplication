<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="PACKAGES.aspx.cs" Inherits="New_Web.PACKAGES" %>











<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">




    <link href="CSS/Style_Packages.css" rel="stylesheet" />











</asp:Content>























<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">





<div class="Page-Area">






    <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="true" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" CssClass="dropdownlist1">
            <asp:ListItem>Limited</asp:ListItem>
            <asp:ListItem>Un-Limited</asp:ListItem>
            

    </asp:DropDownList>



    <asp:Label ID="Label8" runat="server" Text="Label" Visible="false"></asp:Label>

    <asp:Label ID="Label9" runat="server" Text="Label" Visible="false"></asp:Label>

    <asp:Label ID="Label10" runat="server" Text="Label" Visible="false"></asp:Label>

        


         <asp:Panel ID="Panel1" runat="server" CssClass="panel1">


             <section> LIMITED </section>



        
        <asp:DataList ID="DataList1" runat="server" RepeatDirection="Horizontal" RepeatColumns="2" OnItemCommand="DataList1_ItemCommand" >


            <ItemTemplate>



               
       
            <div class="package-datalist-1" > 

               

                



                <%--<h1> <%#Eval("pMb") %> <br /> Mbps</h1> --%>      
                <asp:Label ID="Label1" runat="server" CssClass="h1" Height="122px" Width="162px"><%#Eval("pMb") %><br />Mbps</asp:Label>   
                
                <br />

                    
                <%-- <h2> <%#Eval("pLimit") %> GBs </h2>--%> 
                <asp:Label ID="Label2" runat="server" CssClass="h2"><%#Eval("pLimit") %>  GBs</asp:Label>   
                <br />
               
                
                <p>Access To 100,000 WI-FI Hotspots <br> At No Extra Cost ..</p> 




                <div id="price-line-1"></div>  <!-- Make a Line  -->
                




              <%-- <h3> <%#Eval("pPrice") %> </h3> --%> 
               <asp:Label ID="Label3" runat="server" CssClass="h3"><%#Eval("pPrice") %></asp:Label>   
                 
                
                
                
                <h4>For The First 6 Months</h4>






                <asp:LinkButton ID="LinkButton1" runat="server" CssClass="h5" CommandName="ON" Text="Order Now"></asp:LinkButton>
    









            </div>
                  
               


            </ItemTemplate>





        </asp:DataList>





           








      
              </asp:Panel>

        
    



   





     
         <asp:Panel ID="Panel2" runat="server" CssClass="panel2">


             <section> UN-LIMITED </section>
        
        <asp:DataList ID="DataList2" runat="server" RepeatDirection="Horizontal" RepeatColumns="2">


            <ItemTemplate>



               
               


            <div class="package-datalist-2" > 

               

                



              <%--  <h1> <%#Eval("pMb") %> <br /> Mbps</h1>--%>

                <asp:Label ID="Label4" runat="server" CssClass="h1" Height="122px" Width="162px"><%#Eval("pMb")  %><br />Mbps</asp:Label>
                <br />
                <br />
                <%-- <h2> <%#Eval("pLimit") %> GBs </h2> --%>

                <asp:Label ID="Label5" runat="server" CssClass="h2"><%#Eval("pLimit") %>  GBs</asp:Label>
                <br />
                <br />
                <p>Access To 100,000 WI-FI Hotspots <br> At No Extra Cost ..</p> 
                
                <div id="price-line-1"></div>  <!-- Make a Line  -->
                
                  <%--   <h3> <%#eval("pprice") %> </h3>--%>
                
                <asp:Label ID="Label6" runat="server" CssClass="h3"><%#Eval("pPrice") %></asp:Label>


                        <h4>For The First 6 Months</h4>


                <asp:LinkButton ID="LinkButton2" runat="server" CssClass="h5" CommandName="ON">Order Now</asp:LinkButton>

                

            </div>
                  
               


            </ItemTemplate>





        </asp:DataList>
      
              </asp:Panel>

        
    


    </div>




</asp:Content>
