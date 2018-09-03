using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace New_Web
{
    public partial class FrmAdmin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void logIn_authenticate(object sender, AuthenticateEventArgs e)
        {

            bool check = ValidateUser(logIn1.UserName, logIn1.Password, logIn1.RememberMeSet);

            if (check == true)
            {
                FormsAuthentication.RedirectFromLoginPage(logIn1.UserName, logIn1.RememberMeSet);
            }
        }


        protected bool ValidateUser(string userid, string password, bool remember)
        {
            string uid = "talha";
            string pas = "mughal";

            if (userid == uid && password == pas)
            {
                return true;
            }

            else
            {
                return false;
            }
        }
        
    }
}