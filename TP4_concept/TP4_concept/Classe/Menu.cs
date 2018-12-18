using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TP4_concept.Classe
{
    public class Menu
    {
        private static int          m_i = 1;
        private List<CategorieMenu> m_listeCategories;
        private String              m_nom;
        private DateTime            m_DateSauvegarde;
        private Utilisateur         m_UtilisateurSauvegarde;
        
        public Menu()
        {
            this.m_listeCategories = new List<CategorieMenu>();
            this.Nom = "Nouveau Menu" + m_i;
            this.m_DateSauvegarde = DateTime.Now;
            this.m_UtilisateurSauvegarde = null;

            Menu.m_i++;
        }

        public void ConsulterMenu()
        {
            foreach(CategorieMenu c in m_listeCategories)
            {

            }
        }

        public String Nom
        {
            get
            {
                return this.m_nom;
            }
            set
            {
                this.m_nom = value;
            }
        }

        public List<CategorieMenu> ListeCategories
        {
            get
            {
                return this.m_listeCategories;
            }
            private set
            {
                this.m_listeCategories = value;
            }
        }

        public DateTime DateSauvegarde
        {
            get
            {
                return this.m_DateSauvegarde;
            }
            set
            {
                this.m_DateSauvegarde = value;
            }
        }

        public Utilisateur UtilisateurSauvegarde
        {
            get
            {
                return this.m_UtilisateurSauvegarde;
            }
            set
            {
                this.m_UtilisateurSauvegarde = value;
            }
        }

        public void AjouterCategorie(CategorieMenu p_categorieMenu)
        {
            this.ListeCategories.Add(p_categorieMenu);
        }

        override public String ToString()
        {
            return this.Nom;
        }

    }
}