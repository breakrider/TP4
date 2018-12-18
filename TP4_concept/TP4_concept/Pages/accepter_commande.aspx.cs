using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TP4_concept;

namespace TP4_concept.Pages.page_accepter_consulter
{
    public partial class accepter_commande : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                LinqDataSource1.DataBind();
                GridView1.DataBind();
            }
           

        }
        public override void VerifyRenderingInServerForm(Control control)
        {
            //base.VerifyRenderingInServerForm(control); 
        }

        protected void ListBox2_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
        

                GridViewRow row = GridView1.SelectedRow;


                TextBox1.Text = row.Cells[0].Text;
          



        }
    }
}