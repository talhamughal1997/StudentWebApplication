using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

namespace New_Web
{
    public partial class CONTACT : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            MailMessage mailmessage = new MailMessage();


            mailmessage.From = new MailAddress(txt_email.Text);
            mailmessage.Body = txt_message.Text;
            mailmessage.IsBodyHtml = true;
            mailmessage.To.Add(new MailAddress("talhamughal1997@gmail.com"));

            SmtpClient smtp = new SmtpClient();
            smtp.Host = "smtp.gmail.com";


            smtp.EnableSsl = true;


            NetworkCredential networkCred = new NetworkCredential();
            networkCred.UserName = mailmessage.From.Address;
            networkCred.Password = txt_password.Text;
            smtp.UseDefaultCredentials = true;
            smtp.Credentials = networkCred;
            smtp.Port = 587;


            try
            {
                smtp.Send(mailmessage);
                Label1.Text = "Email Sent";
            }
            catch(Exception ex)
            {
                Label1.Text = "Error";
            }





        }
    }
}