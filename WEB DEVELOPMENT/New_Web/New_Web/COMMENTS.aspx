<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="COMMENTS.aspx.cs" Inherits="New_Web.COMMENTS" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">


         
           <link href="CSS/Style_Contact.css" rel="stylesheet" />

     <script src="/JQuery/JQ.js"></script>


     <script>


         $(document).ready(function () {


         });





     </script>






</asp:Content>






<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    
      <div class="Comment-box">
        
        
        
        
        





            <asp:Panel ID="SignIN_Panel" runat="server" Class="SignIN-Panel">


                <h1>Sign IN </h1>
    
                <h2>LogIn ID : </h2>
                    <asp:TextBox ID="TextBox1" runat="server" placeholder="Name :" CssClass="logIn-txt"></asp:TextBox>

                <h3>Password : </h3>
                    <asp:TextBox ID="TextBox2" runat="server" placeholder="Password :" CssClass="Password-txt" TextMode="Password"></asp:TextBox>


                 <asp:Label ID="lbl_message" runat="server" CssClass="lbl-message"></asp:Label>


                





                <asp:Button ID="btn_signIn" runat="server" Class="btn-SignIn" Text="Sign In" OnClick="btn_signIn_Click"   />

                
               
                <asp:Button ID="btn_SignUp" runat="server" Class="sign-up" Text="Sign Up" OnClick="btn_SignUp_Click" />
                

                <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/frmShowComments.aspx" CssClass="lnk-btn">view comments</asp:LinkButton>


        </asp:Panel>












        <asp:Panel ID="SignUP_Panel" runat="server" Visible="False" Class="SignUP-Panel">



                <section>SIGN UP</section>


                <br />



            <h1>First Name :</h1>
           
                <asp:TextBox ID="txt_fname" runat="server" Class="txt-fname" ></asp:TextBox>   


                <h2>Last Name :</h2>
           
                <asp:TextBox ID="txt_lname" runat="server" Class="txt-lname"></asp:TextBox>   


                <br />
                



            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Enter First Name !" Class="rq-field-validator-1" ControlToValidate="txt_fname"></asp:RequiredFieldValidator>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Last Name !" Class="rq-field-validator-2" ControlToValidate="txt_lname"></asp:RequiredFieldValidator>
                




                  <br />
                  


                
                
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="Email Format Is InCorrect !" ControlToValidate="txt_email" CssClass="rg-exp-validator" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
               <br />
                
                    
                 <h3>Email :</h3>
           
                <asp:TextBox ID="txt_email" runat="server" Class="txt-email" ></asp:TextBox>   


                <h4>Country :</h4>
           
                <asp:TextBox ID="txt_country" runat="server" Class="txt-country"></asp:TextBox>   
                
              
                
             <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Email !"  Class="rq-field-validator-3" ControlToValidate="txt_email"></asp:RequiredFieldValidator>
             <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Country !" Class="rq-field-validator-4" ControlToValidate="txt_country"></asp:RequiredFieldValidator>
              


                <br />
                <br />




                 <h5>LOG IN :</h5>
           
                <asp:TextBox ID="txt_logIn" runat="server" Class="txt-logIn"></asp:TextBox>   <br />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter LogIN ID !" Class="rq-field-validator-5" ControlToValidate="txt_logIn"></asp:RequiredFieldValidator>


                <br />
                <br />



                <h6>PASSWORD :</h6>
           
                <asp:TextBox ID="txt_password" runat="server" Class="txt-password" TextMode="Password"></asp:TextBox>   <br />
                                     
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Enter Password !" Class="rq-field-validator-6" ControlToValidate="txt_password"></asp:RequiredFieldValidator>
 




                <br />
            <br />






            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password Not Match !" ControlToValidate="txt_cpassword" ControlToCompare="txt_password" Class="compare-validator"></asp:CompareValidator>
                <br />
            
               <p>CONFIRM PASSWORD :</p>
           
                <asp:TextBox ID="txt_cpassword" runat="server" Class="txt-cpassword" TextMode="Password"></asp:TextBox>    <br />
                         
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Enter confirm Password !" Class="rq-field-validator-7" ControlToValidate="txt_cpassword"></asp:RequiredFieldValidator>




                <br />
                <br />





            <asp:Label ID="lbl_message2" runat="server" Class="lbl-message2"></asp:Label>


                <br />
                <br />


            <asp:Button ID="SignUp" runat="server" Text="SIGN UP" Class="btn-SignUP" OnClick="SignUp_Click" />




        </asp:Panel>



                                                                                                                



          
      </div>




</asp:Content>
