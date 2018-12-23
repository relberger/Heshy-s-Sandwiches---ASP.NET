using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace HeshysSandwiches
{
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void SubmitButton_Click(object sender, EventArgs e)
        {
            MailMessage mail = new MailMessage();
            mail.Subject = "Contact";
            mail.Body = $"From {NameField.Text} \nReply to {EmailField.Text} \n\n{CommentsField.Text}";
            mail.From = new MailAddress("heshyssandwiches@gmail.com", "Heshy From");
            mail.To.Add(new MailAddress("heshyssandwiches@gmail.com", "Heshy To"));

            SmtpClient smtpClient = new SmtpClient();
            smtpClient.Send(mail);

            Response.Redirect("ContactResponse.aspx");
        }

        protected void NameField_TextChanged(object sender, EventArgs e)
        {
            HttpCookie name = new HttpCookie("Name");
            name.Expires = DateTime.Now.AddMinutes(5);
            name.Value = NameField.Text;
            Response.Cookies.Add(name);
        }
    }
}