using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace New_Web
{
    public partial class COMMENTS : System.Web.UI.Page
    {
        string qry;
        ClsDataBase obj = new ClsDataBase();
        int id;


        protected void Page_Load(object sender, EventArgs e)
        {

            id = Convert.ToInt32(obj.newId("uid", "tblUsers"));

        }

        protected void btn_SignUp_Click(object sender, EventArgs e)
        {
            SignIN_Panel.Visible = false;
            SignUP_Panel.Visible = true;
        }


        protected void SignUp_Click(object sender, EventArgs e)
        {

            


            if (txt_fname.Text == "" || txt_lname.Text == "" || txt_email.Text == "" || txt_country.Text == "" || txt_logIn.Text == "" || txt_password.Text == "" || txt_cpassword.Text == "")
            {
                lbl_message2.Text = "Plz Fill All Boxes";
            }

            else
            {

                qry = "select * from tblUsers where uname = '" + txt_fname.Text + "' and ulname = '" + txt_lname.Text + "' ";

                bool chek = obj.FindRecord(qry);

                if (chek == true)
                {
                    lbl_message2.Text = " User Already Exists ";
                    txt_fname.Focus();
                }
                else
                {

                    qry = "select * from tblUsers where uloginId = '" + txt_logIn.Text + "' or upassword = '" + txt_password.Text + "' ";

                    bool ck = obj.FindRecord(qry);

                    if (ck == true)
                    {
                        lbl_message2.Text = "login ID Or Password Already Exists";
                    }

                    else
                    {

                        qry = "insert into tblUsers values(" + id + " , '" + txt_fname.Text + "' , '" + txt_lname.Text + "' , '" + txt_email.Text + "' , '" + txt_country.Text + "' , '" + txt_logIn.Text + "' , '" + txt_password.Text + "' , '" + txt_cpassword.Text + "') ";

                        bool check = obj.Manipulate(qry);

                        if (check == true)
                        {
                            lbl_message.Text = "New Record Registered";
                            SignUP_Panel.Visible = false;
                            SignIN_Panel.Visible = true;

                            ClearRecord();
                        }
                        else
                        {
                            lbl_message2.Text = "User Registration Failed";
                            ClearRecord();
                        }
                    }

                }
            }

        }



        protected void ClearRecord()
        {
            txt_fname.Text = "";
            txt_lname.Text = "";
            txt_email.Text = "";
            txt_country.Text = "";
            txt_logIn.Text = "";
            txt_password.Text = "";
            txt_cpassword.Text = "";


        }

        protected void btn_signIn_Click(object sender, EventArgs e)
        {
            qry = "select * from tblUsers where uloginId = '" + TextBox1.Text + "' and upassword = '" + TextBox2.Text + "' ";

            bool ck = obj.FindRecord(qry);

            if (ck == true)
            {
                Session["uid"] = obj.FindField(qry, "uid");
                Session["ufn"] = obj.FindField(qry, "uname");
                Session["uln"] = obj.FindField(qry, "ulname");
                Session["uem"] = obj.FindField(qry, "uemail");


                Response.Redirect("FrmGiveComments.aspx");

            }

            else
            {
                lbl_message.Text = "LogIn ID Or Password Is Incorrect";
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox1.Focus();
            }

        }

    }
}