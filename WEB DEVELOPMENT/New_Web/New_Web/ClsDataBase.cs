using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;
using System.Web.UI.WebControls;

namespace New_Web
{
    public class ClsDataBase
    {

        SqlConnection cn = new SqlConnection(@"Data Source=(LocalDB)\v11.0;AttachDbFilename=D:\New_Web\New_Web\App_Data\New_Web.mdf;Integrated Security=True");
        SqlDataAdapter da;
        DataSet ds;
        SqlCommand cmd;


        string qry;




        public void BindToDataList(string q, DataList dl)
        {
            da = new SqlDataAdapter(q, cn);
            ds = new DataSet();
            da.Fill(ds, "tab");
            dl.DataSource = ds.Tables["tab"];
            dl.DataBind();
        }



        public void BindToGrid(string q, GridView gv)
        {
            da = new SqlDataAdapter(q, cn);
            ds = new DataSet();
            da.Fill(ds, "tab");
            gv.DataSource = ds.Tables["tab"];
            gv.DataBind();
        }

        public void BindToDropDown(string q, DropDownList ddl, string fieldname, string valuename)
        {
            da = new SqlDataAdapter(q, cn);
            ds = new DataSet();
            da.Fill(ds, "tab");
            ddl.DataSource = ds.Tables["tab"];
            ddl.DataTextField = fieldname;
            ddl.DataValueField = valuename;
            ddl.DataBind();
        }



        public bool Manipulate(string q)
        {
            cmd = new SqlCommand();
            cmd.CommandText = q;
            cmd.Connection = cn;
            cn.Open();
            int num;
            num = cmd.ExecuteNonQuery();
            cn.Close();
            if (num > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }



        public string newId(string fieldname, string tblname)
        {

            qry = "select isnull(max(" + fieldname + "),0) + 1 as ID from " + tblname;

            da = new SqlDataAdapter(qry, cn);
            ds = new DataSet();
            da.Fill(ds, "tab");

            return ds.Tables["tab"].Rows[0]["ID"].ToString();

        }




        public bool FindRecord(string q)
        {

            da = new SqlDataAdapter(q, cn);
            ds = new DataSet();
            da.Fill(ds, "tab");

            int num = ds.Tables["tab"].Rows.Count;

            if (num > 0)
            {
                return true;
            }
            else
            {
                return false;
            }
        }


        public string FindField(string q, string fieldname)
        {
            da = new SqlDataAdapter(q, cn);
            ds = new DataSet();
            da.Fill(ds, "tab");

            int num = ds.Tables["tab"].Rows.Count;

            if (num > 0)
            {
                return ds.Tables["tab"].Rows[0][fieldname].ToString();
            }
            else
            {
                return "Not Found";
            }
        }






    }
}