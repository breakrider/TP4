using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PrototypeTP4
{
    public partial class UserConnect : System.Web.UI.Page
    {
        public static string SESSION_UTILISATEUR = "utilisateur";
        protected void Page_Load(object sender, EventArgs e)
        {
            this.lblBienvenu.Text = "Bienvenu, " + this.Session[SESSION_UTILISATEUR];
        }

        protected void btnCommander_Click(object sender, EventArgs e)
        {
            this.Response.Redirect("Commander.aspx");
        }
    }
}