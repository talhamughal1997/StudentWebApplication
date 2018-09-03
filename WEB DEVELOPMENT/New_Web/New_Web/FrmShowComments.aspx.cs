using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace New_Web
{
    public partial class FrmShowComments : System.Web.UI.Page
    {
        
        ClsDataBase obj = new ClsDataBase();
        string query;



        protected void Page_Load(object sender, EventArgs e)
        {

            query = "select tblShowComments.com_id,tblShowComments.time,tblShowComments.dt,tblShowComments.comment,tblUsers.uname,tblUsers.ulname,tblUsers.uemail,tblUsers.ucountry from tblShowComments join tblUsers on tblShowComments.uid = tblUsers.uid order by com_id  desc";
            obj.BindToDataList(query, DataList1);

        }
    }
}