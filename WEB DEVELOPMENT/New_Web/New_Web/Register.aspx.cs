using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace New_Web
{
    public partial class Register : System.Web.UI.Page
    {
        ClsDataBase obj = new ClsDataBase();
        string qry;
        int id;


        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt32(obj.newId("Id", "tbl_NetUser"));

            

            Label1.Text = "";
            lbl_Message.Text = "";

           

        }

        protected void btn_SignIn_Click(object sender, EventArgs e)
        {


            if (TextBox1.Text == "" || TextBox2.Text == "")
            {

                lbl_Message.Text = "Plz Fill TextBoxes";

            }

            else
            {
                qry = "select * from tbl_NetUser where Email= '" + TextBox1.Text + "' and Password = '" + TextBox2.Text + "' ";

                bool chek = obj.FindRecord(qry);

                if (chek == true)
                {

                    Session["F_name"] = obj.FindField(qry, "First_name");
                    Session["L_name"] = obj.FindField(qry, "Last_name");
                    Session["Email"] = obj.FindField(qry, "Email");
                    Session["Credit_card"] = obj.FindField(qry, "Credit_card");


                    Response.Redirect("Admin_Registered.aspx");

                }

                else
                {

                    lbl_Message.Text = "Email Or Password is InCorrect";
                    
                }


            }


            if (lbl_Message.Text == "Email Or Password is InCorrect")
            {
                LinkButton1.Visible = true;
            }



        }

        protected void btn_SignUp_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
            Panel2.Visible = true;
        }

        protected void Sign_Up_Click(object sender, EventArgs e)
        {


            if (txt_Fname.Text == "" || txt_Lname.Text == "" || txt_Email.Text == "" || txt_Contact.Text == "" || txt_Credit.Text == "" || txt_Adres.Text == "" || txt_State.Text == "" || txt_Postal.Text == "" || txt_Password.Text == "" || txt_Ans.Text == "" )
            {
                lbl_Message.Text = "Plz Fil All TextBoxes";
                txt_Fname.Focus();
            }

            else
            {

                qry = "select * from tbl_NetUser where Email = '" + txt_Email.Text + "' and Password = '" + txt_Password.Text + "' ";

                bool chk = obj.FindRecord(qry);

                if (chk == true)
                {
                    lbl_Message.Text = "Acount Already exist";
                    txt_Fname.Focus();

                }

                else
                {

                    qry = "Select * from tbl_NetUser where Credit_card = '" + txt_Credit.Text + "' ";

                    bool check = obj.FindRecord(qry);

                    if (check == true)
                    {
                        lbl_Message.Text = "Credit Card is Already Exist";
                    }

                    else
                    {
                        qry = "Insert Into tbl_NetUser Values(" + id + " , '" + txt_Fname.Text + "' , '" + txt_Lname.Text + "' , '" + txt_Email.Text + "' , '" + txt_Contact.Text + "' , '" + txt_Credit.Text + "' , '" + txt_Adres.Text + "' , '" + txt_State.Text + "' , '" + txt_Postal.Text + "' , '" + txt_Password.Text + "' , '" + txt_Ques.Text + "' , '" + txt_Ans.Text + "') ";

                        bool chek = obj.Manipulate(qry);

                        if (chek == true)
                        {
                            lbl_Message.Text = "Acount Registered";
                            Panel2.Visible = false;
                            Panel1.Visible = true;
                        }

                        else
                        {
                            lbl_Message.Text = "Account Is Not Registered ";
                            ClearBoxes();
                        }

                    }


                }


            }
        
        }


        protected void ClearBoxes()
        {
            txt_Fname.Text = "";
            txt_Lname.Text = "";
            txt_Email.Text = "";
            txt_Contact.Text = "";
            txt_Credit.Text = "";
            txt_Adres.Text = "";
            txt_State.Text = "";
            txt_Postal.Text = "";
            txt_Password.Text = "";
            txt_Ques.Text = "";
            txt_Ans.Text = "";
            txt_Fname.Focus();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

            txt_Ques.Text = DropDownList1.SelectedItem.Text;

            


        }

        protected void LinkButton1_Click(object sender, EventArgs e)
        {
            Panel3.Visible = true;
            Panel1.Visible = false;

        }

        protected void btn_chk_Click(object sender, EventArgs e)
        {
            qry = "select * from tbl_NetUser where Email='" + txt_check_email.Text + "' ";
                
                bool chk = obj.FindRecord(qry);

            if (chk == true)
            {

                lbl_Ques.Text = obj.FindField(qry, "Question").ToString();
                 
                

                Panel3.Visible = false;
                Panel4.Visible = true;

                lbl_Email_session.Text = txt_check_email.Text;

            }

            else 
            {
                lbl_Email_chk.Text = "Email Is Not Found";
            }

        }

        protected void btn_new_passwoord_Click(object sender, EventArgs e)
        {


            if (TextBox3.Text == "" || TextBox4.Text == "")
            {
                Label1.Text = "Plz Fill Text-Boxes";
            }

            else if (TextBox4.Text != TextBox3.Text)
            {
                Label1.Text = "Password Not Matched";
            }


            else
            {

                

                qry = "update tbl_NetUser set password='" + TextBox3.Text + "' where email='" + txt_check_email.Text + "' ";

                bool chk = obj.Manipulate(qry);

                if (chk == true)
                {
                    lbl_Message.Text = "Password Changed";
                    Panel1.Visible = true;
                    Panel5.Visible = false;
                }

                else
                {
                    Label1.Text = "Password Not Changed";
                }
            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            qry = "select * from tbl_NetUser where Answer='" + TextBox5.Text + "'";

            bool ck = obj.FindRecord(qry);


            if (ck == true)
            {
                Panel4.Visible = false;
                Panel5.Visible = true;

            }


        }

        protected void DropDownList1_SelectedIndexChanged1(object sender, EventArgs e)
        {
            txt_Ques.Text = DropDownList1.SelectedItem.Text;
        }

       

    }
}