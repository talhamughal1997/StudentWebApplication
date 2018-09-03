using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;



namespace New_Web
{
    public partial class PACKAGES : System.Web.UI.Page
    {
        ClsDataBase obj = new ClsDataBase();
        string query;

        protected void Page_Load(object sender, EventArgs e)
        {
            query = "select * from tblPackages";
            obj.BindToDataList(query, DataList1);

            query = "select * from tblPackages2";
            obj.BindToDataList(query, DataList2);

            Panel2.Visible = false;
            
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedItem.Text == "Un-Limited")
            {
                Panel1.Visible = false;
                Panel2.Visible = true;
            }

            else
            {
                Panel1.Visible = true;
                Panel2.Visible = false;
            }
        }

        protected void DataList1_ItemCommand(object source, DataListCommandEventArgs e)
        {


            Label lblId1 = (Label)e.Item.FindControl("Label1");
            Label lblId2 = (Label)e.Item.FindControl("Label2");
            Label lblId3 = (Label)e.Item.FindControl("Label3");

            Label8.Text = lblId1.Text;
            Label9.Text = lblId2.Text;
            Label10.Text = lblId3.Text;

            Session["pMb"] = Label8.Text;
            Session["pLimit"] = Label9.Text;
            Session["pPrice"] = Label10.Text;

            if (e.CommandName == "ON")
            {
                Response.Redirect("Register.aspx");
            }



        }

        
      
       

        

        







        


       



       
        

        

        



    }
}