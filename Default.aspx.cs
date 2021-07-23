using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Security;

namespace GamesLibrary
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        private void cmdSignOut_ServerClick(object sender, System.EventArgs e)
        {
            FormsAuthentication.SignOut();
            Response.Redirect("logon.aspx", true);

            this.cmdSignOut.ServerClick += new System.EventHandler(this.cmdSignOut_ServerClick);
        }
    }
}