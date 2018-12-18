using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace PrototypeTP4
{
    public partial class accueil : System.Web.UI.Page
    {
        public static string SESSION_UTILISATEUR = "utilisateur";
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnConnect_Click(object sender, EventArgs e)
        {
            if (this.txtPass.Text == "1234")
            {
                this.Session[SESSION_UTILISATEUR] = this.txtAuth.Text;

                this.Response.Redirect("~/UserConnect.aspx");
            }
            else
            {
                this.lblErreur.Text = "Erreur !";
            }
        }
    }
}