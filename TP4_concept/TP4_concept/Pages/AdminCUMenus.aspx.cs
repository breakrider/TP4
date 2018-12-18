using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using TP4_concept.Classe;

namespace TP4_concept.Pages
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        List<Classe.Menu> m_listeMenus       = new List<Classe.Menu>();
        List<Restaurant>  m_listeRestaurants = new List<Restaurant>();
        Classe.Menu m_menuActuel             = null;
        CategorieMenu m_categorieActuelle    = null;
        Mets m_metActuel                     = null;
        Utilisateur m_utilisateurCourant     = new Employe(TypeEmploye.Administrateur, "Amdin1", "Admin", "Admin", "1234");

        protected void Page_Load(object sender, EventArgs e)
        {
            if(this.m_listeRestaurants.Count == 0) { 
                // Simulation restaurants
                this.m_listeRestaurants.Add(new Restaurant("resto1", "11 rue unun", 1233241234));
                this.m_listeRestaurants.Add(new Restaurant("resto2", "22 rue deuxdeux", 1233241234));
                this.m_listeRestaurants.Add(new Restaurant("resto3", "33 rue troistrois", 1233241233));

                foreach (Restaurant r in m_listeRestaurants)
                    this.ddlChoixRestaurant.Items.Add(r.ToString());
            }
        }

        protected void BtnCUGestionUtilisateurs_Click(object sender, EventArgs e)
        {
            Response.Redirect("PageInexistante.html");
        }

        protected void btnAjouterMenu_Click(object sender, EventArgs e)
        {
            Classe.Menu nouveauMenu = new Classe.Menu();
            this.m_listeMenus.Add(nouveauMenu);
            nouveauMenu.UtilisateurSauvegarde = m_utilisateurCourant;

            this.LstMenus.Items.Add(nouveauMenu.Nom);

            changementDeMenu(nouveauMenu);
        }

        protected void LstMenus_SelectedIndexChanged(object sender, EventArgs e)
        {
            foreach(Classe.Menu m in this.m_listeMenus)
            {
                if(m.Nom == this.LstMenus.SelectedItem.Text)
                {
                    changementDeMenu(m);
                }
            }
        }

        protected void changementDeMenu(Classe.Menu p_nouveauMenuActuel)
        {
            this.m_menuActuel = p_nouveauMenuActuel;
            this.lblMenuSelectionne.Text = this.m_menuActuel.Nom;
            this.lblInfoSauvegardeDate.Text = this.m_menuActuel.DateSauvegarde.ToShortDateString();
            this.lblInfoSauvegardeUtilisateur.Text = this.m_menuActuel.UtilisateurSauvegarde.NomUtilisateur;
        }
    }
}