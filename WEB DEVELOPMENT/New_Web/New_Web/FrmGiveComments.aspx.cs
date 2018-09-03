using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace New_Web
{
    public partial class FrmGiveComments : System.Web.UI.Page
    {
        ClsDataBase obj = new ClsDataBase();

        int comid, id;
        string query;


        protected void Page_Load(object sender, EventArgs e)
        {

            Label1.Text = Session["ufn"].ToString() + " " + Session["uln"].ToString();
            Label2.Text = Session["uem"].ToString();
            Label3.Text = DateTime.Now.ToShortDateString();
            Label4.Text = DateTime.Now.ToShortTimeString();


            id = Convert.ToInt32(Session["uid"]);
            comid = Convert.ToInt32(obj.newId("com_id", "tblShowComments"));
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            if (TextBox1.Text != "")
            {

                query = "insert into tblShowComments values(" + comid + ",'" + Label3.Text + "' , '" + Label4.Text + "' , '" + TextBox1.Text + "'," + id + " )";

                bool chk = obj.Manipulate(query);
                if (chk == true)
                {
                    lblmessage.Text = " Comment Saved";
                    LinkButton1.Visible = true;
                    TextBox1.Text = "";
                    TextBox1.Focus();
                    
                }

                else
                {
                    lblmessage.Text = "Comment Not Saved";
                }






            }

            else
            {
                lblmessage.Text = "Plz Fill Comments";
            }
        }

        


    }
}