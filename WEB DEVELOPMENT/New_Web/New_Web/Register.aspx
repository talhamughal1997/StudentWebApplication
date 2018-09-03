<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="New_Web.Register" %>




<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

  
    
      <link href="/CSS/Style_Register.css" rel="stylesheet" />
              

                    <script src="/JQuery/JQ.js"></script>



    

    


</asp:Content>




















<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">





    <div class="Page_Area">






                    <%-- Panel - 1 : Sign IN --%>




        <asp:Panel ID="Panel1" runat="server" CssClass="Panel-1">



                    <h1>Sign In</h1>



        

                <h2>User Email :</h2>
                
                 <asp:TextBox ID="TextBox1" runat="server" CssClass="txt-box-1" ToolTip="Enter Your Email"></asp:TextBox>
                
                
                


                <br />
                <br />
                
                 <h3>Password :</h3>

                 <asp:TextBox ID="TextBox2" runat="server" CssClass="txt-box-2" TextMode="Password" ToolTip="Enter Your Password"></asp:TextBox>



                <br />
                <br />
                       <asp:LinkButton ID="LinkButton1" runat="server" Visible="false" OnClick="LinkButton1_Click" CssClass="forget-Link">Forget Your Password ?</asp:LinkButton>

                <br />
                <br />
                
                  <asp:Label ID="lbl_Message" runat="server" CssClass="Lbl-Message"></asp:Label>


                   <br />


                     <asp:Button ID="btn_SignIn" runat="server" Text="Sign IN" OnClick="btn_SignIn_Click" CssClass="Btn-Sign-In" />

                     <asp:Button ID="btn_SignUp" runat="server" Text="Sign Up" OnClick="btn_SignUp_Click" CssClass="Btn-Sign-Up" />



        </asp:Panel>













                    <%-- Panel - 2 : Sign Up --%>




        <asp:Panel ID="Panel2" runat="server" Visible="False" CssClass="Panel-2" Font-Italic="False">





                        <h1> Sign Up </h1>


                        
                <h2>First Name :</h2>
            <asp:TextBox ID="txt_Fname" runat="server" CssClass="txt-boxes" ToolTip="Enter First Name"></asp:TextBox>   <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Plz Fill First Name !! " ControlToValidate="txt_Fname" CssClass="rq-validate"></asp:RequiredFieldValidator>


                    
                        <br />




            <h2>Last Name :</h2>
            <asp:TextBox ID="txt_Lname" runat="server" CssClass="txt-boxes" ToolTip="Enter Last Name"></asp:TextBox>   <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Plz Fill Last Name !! " ControlToValidate="txt_Lname" CssClass="rq-validate"></asp:RequiredFieldValidator>




                         <br />



           
             <h2>Email :</h2>
            <asp:TextBox ID="txt_Email" runat="server" CssClass="txt-boxes" ToolTip="Enter Email"></asp:TextBox>   <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Plz Fill Email !! " CssClass="rq-validate" ControlToValidate="txt_Email"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ErrorMessage="InCorrect Email Address" ControlToValidate="txt_Email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" CssClass="regular-validate"></asp:RegularExpressionValidator>



                        <br />




            <h2>Contact :</h2>
            <asp:TextBox ID="txt_Contact" runat="server" CssClass="txt-boxes" ToolTip="Enter Contact"></asp:TextBox>   <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Plz Fill Contact !! "  CssClass="rq-validate" ControlToValidate="txt_Contact"></asp:RequiredFieldValidator>




                <br />






            
            <h2>Credit Card :</h2>
            <asp:TextBox ID="txt_Credit" runat="server" CssClass="txt-boxes" ToolTip="Enter Credit Card"></asp:TextBox>   <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Plz Fill Credit /Debit Card NO !! "  CssClass="rq-validate" ControlToValidate="txt_Credit"></asp:RequiredFieldValidator>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ErrorMessage="Card NO Is Not Valid ! !" ValidationExpression="^4[0-9]{12}(?:[0-9]{3})?$" ControlToValidate="txt_Credit" CssClass="regular-validate"></asp:RegularExpressionValidator>



                <br />



            <h2>Address :</h2>
            <asp:TextBox ID="txt_Adres" runat="server" CssClass="txt-boxes" ToolTip="Enter Address"></asp:TextBox>   <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ErrorMessage="Plz Fill Address !! "  CssClass="rq-validate" ControlToValidate="txt_Adres"></asp:RequiredFieldValidator>




                <br />




            <h2>State:</h2>
            <asp:TextBox ID="txt_State" runat="server" CssClass="txt-boxes" ToolTip="Enter State / Province / Region"></asp:TextBox>   <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator7" runat="server" ErrorMessage="Plz Fill State / Province / Region !! "  CssClass="rq-validate" ControlToValidate="txt_State"></asp:RequiredFieldValidator>




                <br />






            <h2>Postal/Zip :</h2>
            <asp:TextBox ID="txt_Postal" runat="server" CssClass="txt-boxes" ToolTip="Enter Postal / Zip Code"></asp:TextBox>   <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator8" runat="server" ErrorMessage="Plz Fill Credit Card NO !! "  CssClass="rq-validate" ControlToValidate="txt_Postal"></asp:RequiredFieldValidator>




                <br />



            <h2>Password :</h2>
            <asp:TextBox ID="txt_Password" runat="server" CssClass="txt-boxes" ToolTip="Enter Password" TextMode="Password"></asp:TextBox>   <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server" ErrorMessage="Plz Enter Password !!"  CssClass="rq-validate" ControlToValidate="txt_Password"></asp:RequiredFieldValidator>
            



                <br />

            

            <h2>Confirm :</h2>
            <asp:TextBox ID="txt_Cpassword" runat="server" CssClass="txt-boxes" ToolTip="Enter Confirm Password" TextMode="Password"></asp:TextBox>   <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator10" runat="server" ErrorMessage="Plz Enter Confirm Password !! "  CssClass="rq-validate" ControlToValidate="txt_Cpassword"></asp:RequiredFieldValidator>  
            <asp:CompareValidator ID="CompareValidator1" runat="server" ErrorMessage="Password Not Match  !!" ControlToCompare="txt_Password" ControlToValidate="txt_Cpassword" CssClass="compare-validate"></asp:CompareValidator>



                <br />



            <br />

            <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" CssClass="dlst-Ques" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged1" ToolTip="Select Question  ">
                <asp:ListItem>Your Favourite Teacher ?</asp:ListItem>
                <asp:ListItem>Your Favouritr Food ?</asp:ListItem>
                        </asp:DropDownList>

            
            <br />
            <br />



            <h2>Question :</h2>
            <asp:TextBox ID="txt_Ques" runat="server" CssClass="txt-boxes" ToolTip="Enter Question for Forget Password Hint" ReadOnly="true"></asp:TextBox>   <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator11" runat="server" ErrorMessage="Plz Select Question"  CssClass="rq-validate" ControlToValidate="txt_Ques"></asp:RequiredFieldValidator>

            



                <br />
                



            
            <h2>Answer :</h2>
            <asp:TextBox ID="txt_Ans" runat="server" CssClass="txt-boxes" ToolTip="Enter Question for Forget Password Hint" ></asp:TextBox>   <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator12" runat="server" ErrorMessage="Plz Enter Answer"  CssClass="rq-validate" ControlToValidate="txt_Ans"></asp:RequiredFieldValidator>  
           




            <br />






            <asp:Button ID="Sign_Up" runat="server" Text="Sign Up" CssClass="Sign-Up" OnClick="Sign_Up_Click" />
            


        </asp:Panel>

















        <asp:Panel ID="Panel3" runat="server" Visible="false" CssClass="Panel-3">







            <h1>Enter Your Email : </h1>


            <asp:TextBox ID="txt_check_email" runat="server" CssClass="txt-box"></asp:TextBox>




            <br />
             <asp:Label ID="lbl_Email_chk" runat="server" CssClass="lbl-Message"></asp:Label>


            <br />

            <asp:Button ID="btn_chk" runat="server" Text="Check" OnClick="btn_chk_Click" CssClass="btn-Submit" />








        </asp:Panel>







        <asp:Panel ID="Panel4" runat="server" Visible="false" CssClass="Panel-4">


            
           


            <asp:Label ID="lbl_Ques" runat="server" Text="label" CssClass="lbl-Question"></asp:Label>

            <br />
            <br />


            <h2>Enter Answer :</h2>

            <br />
            <br />


            <asp:TextBox ID="TextBox5" runat="server" CssClass="txt-box"></asp:TextBox>


            <br />
            <br />


            <asp:Button ID="Button1" runat="server" Text="send" OnClick="Button1_Click" CssClass="btn-Submit" />





        </asp:Panel>
















         <asp:Panel ID="Panel5" runat="server" Visible="false" CssClass="Panel-5">






             <asp:Label ID="lbl_Email_session" runat="server" CssClass="lbl-Email"></asp:Label>




            <h1>Enter Your New Password : </h1>

             <br />
             <br />

            <asp:TextBox ID="TextBox3" runat="server" CssClass="txt-box" TextMode="Password"></asp:TextBox>

             <br />
             <br />

             <h2>Confirm Password : </h2>

             <br />
             <br />
            <asp:TextBox ID="TextBox4" runat="server" CssClass="txt-box" TextMode="Password"></asp:TextBox>

             <br />


             <asp:Label ID="Label1" runat="server" CssClass="lbl-Message"></asp:Label>

             <br />
             <br />


             <asp:Button ID="btn_new_passwoord" runat="server" Text="Submit" OnClick="btn_new_passwoord_Click" CssClass="btn-Submit" />






        </asp:Panel>



















    </div>








</asp:Content>
