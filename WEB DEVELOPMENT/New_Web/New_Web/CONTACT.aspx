<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="CONTACT.aspx.cs" Inherits="New_Web.CONTACT" %>





<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">



    
    <link href="CSS/Style_Contact.css" rel="stylesheet" />
    <script src="/JQuery/JQ.js"></script>


    <script>

        $(document).scroll(function () {




            $(".address-box h2,h3,h4,img,.p").slideDown(3000);
            $(".message-box h2,h3,h4,img,.p,input,.button").slideDown(3000);




        });



         </script>



</asp:Content>
















<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="Page-Area">   <!-- Open Page Area -->
           
           
           				<h1>Contacts</h1>
           
           
           
           
           <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d6045.4543933585455!2d-73.94934413098822!3d40.74602795106729!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x89c25925b8fb086f%3A0x0604e1e280275e3a!2s21+Street-+Van+Alst+Station!5e0!3m2!1sen!2s!4v1463455034605" width="1263" height="460" frameborder="0" style="border:0" allowfullscreen></iframe>
           
           
           
           
           
           
           <div class="address-box">   <!-- Open Address Box  -->
           
           	<h2>Address:</h2>
            
            <img src="IMAGES/Contact_Images/address-icon.png" />
           	<p id="adres-para-1" class="p">138 Atlantis Ln Kingsport Illinois 121164 </p>
             
             
             
             
             
             
    
           
           	<h3>Phones:</h3>
            
            <img src="IMAGES/Contact_Images/phone-icon.png" />
            <p id="adres-para-2" class="p">800-2345-6789  </p>
            
            
            <img src="IMAGES/Contact_Images/fax-icon.png" />
            <p id="adres-para-3" class="p">800-2345-6789   </p>
                          
                  
            
            
            
            
            <h4>E-mail:</h4>
        
        
          <img src="IMAGES/Contact_Images/email-icon.png" />
          <p id="adres-para-4" class="p">   mail@demolink.org  </p>
             
             
             
             
             
             
            
            	</div>  <!-- Close Address Box  -->
           
           
           
           
           
           
           
           
           
           
           
           
           
    		     <div class="message-box">   <!-- Open message box  -->
     	      
           
           		<h2>Miscellaneous information:</h2>
            		
      		<p id="message-para">
                
                Email us with any questions or inquiries or use our contact data.
                
                	</p>
            	
                
            	
                
                
                     <asp:TextBox ID="txt_name" runat="server" CssClass="txt_name" placeholder="Name" ToolTip="Enter Your Name :"></asp:TextBox>
&nbsp;               <asp:TextBox ID="txt_email" runat="server" CssClass="txt_email" placeholder="Email" ToolTip="Enter Your Email :"></asp:TextBox>
&nbsp;               <asp:TextBox ID="txt_phone" runat="server" CssClass="txt_phone" placeholder="Phone" ToolTip="Enter Your Phone :"></asp:TextBox>
                      <asp:TextBox ID="txt_password" runat="server" CssClass="txt_phone" placeholder="Password" ToolTip="Enter Your Password :" TextMode="Password"></asp:TextBox>



&nbsp;               <asp:TextBox ID="txt_message" runat="server" CssClass="txt_message" placeholder="Message" ToolTip="Enter Your Message :"></asp:TextBox>
&nbsp;
                     <br />
                     <br />
                     <br />
                     <br />
                     <asp:Label ID="Label1" runat="server" CssClass="lbl_Message"></asp:Label>
                     <br />
                     <br />
    		         <asp:Button ID="Button1" runat="server" Text="Send" CssClass="button" OnClick="Button1_Click" />


    		     </div>     <!-- close message box  -->
           
           
           
           
           
           
           </div>    <!-- Close Page Area  -->
           
           
        
        
        
        












</asp:Content>
