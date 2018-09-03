using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace New_Web
{
    public partial class Admin_Registered : System.Web.UI.Page
    {

        ClsDataBase obj = new ClsDataBase();
        

        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["pMb"] == null || Session["pLimit"] == null || Session["pPrice"] == null)
            {

                Label1.Text = Session["F_name"].ToString() + " " + Session["L_name"].ToString();
                Label2.Text = Session["Email"].ToString();
                Label3.Text = Session["Credit_card"].ToString();
                Label4.Text = DateTime.Now.ToShortDateString();
                Label5.Text = DateTime.Now.ToShortTimeString();
                

                Label6.Text = "No Package Were Selected ";
                Label7.Text = "No Package Were Selected ";
                Label8.Text = "No Package Were Selected ";


            }

            else
            {


                Label1.Text = Session["F_name"].ToString() + " " + Session["L_name"].ToString();
                Label2.Text = Session["Email"].ToString();
                Label3.Text = Session["Credit_card"].ToString();
                Label4.Text = DateTime.Now.ToShortDateString();
                Label5.Text = DateTime.Now.ToShortTimeString();
                Label6.Text = Session["pMb"].ToString();
                Label7.Text = Session["pLimit"].ToString();
                Label8.Text = Session["pPrice"].ToString();


            }
                

        }
    }
}