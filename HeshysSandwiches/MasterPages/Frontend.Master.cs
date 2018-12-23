using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Heshy_sSandwiches.MasterPages
{
    public partial class Frontend : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            HttpCookie name = Request.Cookies["Name"];

            if (name != null)
            {
                VisitorName.Text = $"Welcome {name.Value}!";
            }
        }
    }
}