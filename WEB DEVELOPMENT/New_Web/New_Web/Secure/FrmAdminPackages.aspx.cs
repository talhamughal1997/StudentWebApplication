using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace New_Web.Secure
{
    public partial class FrmAdminPackages : System.Web.UI.Page
    {

        int id;
        int id_2;
       
        string qry;


        ClsDataBase obj = new ClsDataBase();



        protected void Page_Load(object sender, EventArgs e)
        {
            id = Convert.ToInt32(obj.newId("id", "tblPackages"));

            if (!IsPostBack)
            {
                qry = "select * from tblPackages";
                obj.BindToDropDown(qry, DropDownList1, "id", "id");
            }

            id_2 = Convert.ToInt32(obj.newId("id", "tblPackages2"));

            if (!IsPostBack)
            {
                qry = "select * from tblPackages2";
                obj.BindToDropDown(qry, DropDownList2, "id", "id");
            }

            

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (TextBox1.Text != "" || TextBox2.Text != "")
            {
                qry = "select * from tblPackages where pMb='" + TextBox1 + "' and pLimit='" + TextBox2.Text + "' ";

                bool chk = obj.FindRecord(qry);

                if (chk == false)
                {
                    qry = "insert into tblPackages values(" + id + ", '" + TextBox1.Text + "', '" + TextBox2.Text + "', '" + TextBox3.Text + "') ";

                    bool check = obj.Manipulate(qry);


                    if (check == true)
                    {

                        lbl_Message.Text = " Package Added ";
                        ClearBoxes();

                    }

                    else
                    {
                        lbl_Message.Text = "Package Not Added";
                        ClearBoxes();
                    }

                }

                else
                {
                    lbl_Message.Text = " Package Already Exist ";
                }
                

            }


            

        }


        protected void ClearBoxes()
        {
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox3.Text = "";
            TextBox1.Focus();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (TextBox1.Text == "" || TextBox2.Text == "" || TextBox3.Text == "")
            {

                lbl_Message.Text = " Plz Fill All TextBoxes";

            }

            else
            {
                qry = " update tblPackages set pMb= '" + TextBox1.Text + "', pLimit='" + TextBox2.Text + "', pPrice= '" + TextBox3.Text + "' where id = " + DropDownList1.Text + " ";

                bool check = obj.Manipulate(qry);

                if (check == true)
                {
                    lbl_Message.Text = "Record Update ";
                    ClearBoxes();
                }
                else
                {
                    lbl_Message.Text = "Record Updation Failed";
                    ClearBoxes();
                }

            }


            
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            lbl_Message.Text = "";


            qry = "select * from tblPackages where id= " + DropDownList1.SelectedValue + "";

            bool chk = obj.FindRecord(qry);

            if (chk == true)
            {
                TextBox1.Text = obj.FindField(qry, "pMb");
                TextBox2.Text = obj.FindField(qry, "pLimit");
                TextBox3.Text = obj.FindField(qry, "pPrice");

            }

            else
            {
                lbl_Message.Text = "ID Incorrect";
                ClearBoxes();
            }


        }

        protected void Button3_Click(object sender, EventArgs e)
        {

            qry = "delete from tblPackages where id= " + DropDownList1.SelectedValue + " ";

            bool check = obj.Manipulate(qry);

            if (check == true)
            {
                lbl_Message.Text = " Record Deleted";
                ClearBoxes();
            }

            else
            {
                lbl_Message.Text = "Record Deletion Failed";
            }

        }

       

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {

            if (DropDownList3.SelectedValue == "Limited")
            {
                Panel2.Visible = false;
                Panel1.Visible = true;

            }
            else
            {
                Panel1.Visible = false;
                Panel2.Visible = true;
               
            }


        }




        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            lbl_Message_2.Text = "";


            qry = "select * from tblPackages2 where Id= " + DropDownList2.SelectedValue + "";

            bool chk = obj.FindRecord(qry);

            if (chk == true)
            {
                TextBox4.Text = obj.FindField(qry, "pMb");
                TextBox5.Text = obj.FindField(qry, "pLimit");
                TextBox6.Text = obj.FindField(qry, "pPrice");

            }

            else
            {
                lbl_Message_2.Text = "ID Incorrect";
                ClearBoxes();
            }


        }











        protected void btn_Add_2_Click(object sender, EventArgs e)
        {

            if (TextBox4.Text != "" || TextBox5.Text != "")
            {
                qry = "select * from tblPackages2 where pMb='" + TextBox4.Text + "' and pLimit='" + TextBox5.Text + "' ";

                bool chk = obj.FindRecord(qry);

                if (chk == false)
                {
                    qry = "insert into tblPackages2 values(" + id_2 + ", '" + TextBox4.Text + "', '" + TextBox5.Text + "', '" + TextBox6.Text + "') ";

                    bool check = obj.Manipulate(qry);


                    if (check == true)
                    {

                        lbl_Message_2.Text = " Package Added ";
                        ClearBoxes();

                    }

                    else
                    {
                        lbl_Message_2.Text = "Package Not Added";
                        ClearBoxes();
                    }

                }

                else
                {
                    lbl_Message_2.Text = " Package Already Exist ";
                }


            }


            

        }

        protected void btn_Update_2_Click(object sender, EventArgs e)
        {
            if (TextBox4.Text == "" || TextBox5.Text == "" || TextBox6.Text == "")
            {

                lbl_Message_2.Text = " Plz Fill All TextBoxes";

            }

            else
            {
                qry = " update tblPackages2 set pMb= '" + TextBox4.Text + "', pLimit='" + TextBox5.Text + "', pPrice= '" + TextBox6.Text + "' where id = " + DropDownList2.SelectedValue + " ";

                bool check = obj.Manipulate(qry);

                if (check == true)
                {
                    lbl_Message_2.Text = "Record Update ";
                    ClearBoxes();
                }
                else
                {
                    lbl_Message_2.Text = "Record Updation Failed";
                    ClearBoxes();
                }

            }


            
        }

        protected void btn_Delete_2_Click(object sender, EventArgs e)
        {
            qry = "delete from tblPackages2 where Id= " + DropDownList2.Text + " ";

            bool check = obj.Manipulate(qry);

            if (check == true)
            {
                lbl_Message_2.Text = " Record Deleted";
                ClearBoxes();
            }

            else
            {
                lbl_Message_2.Text = "Record Deletion Failed";
            }
        }

        

       



    }
}