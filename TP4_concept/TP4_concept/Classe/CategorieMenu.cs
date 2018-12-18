using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TP4_concept.Classe
{
    public class CategorieMenu
    {
        private List<Mets> m_listeMets;
        private String     m_nom;
        private String     m_description;

        public CategorieMenu()
        {
            this.ListeMets   = new List<Mets>();
            this.Nom         = "Nouvelle Catégorie";
            this.Description = "";

        }

        public List<Mets> ListeMets
        {
            get
            {
                return this.m_listeMets;
            }
            private set
            {
                this.m_listeMets = value;
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

        public String Description
        {
            get
            {
                return this.m_description;
            }
            set
            {
                this.m_description = value;
            }
        }

        public void AjouterMet(Mets p_met)
        {
            this.ListeMets.Add(p_met);
        }


    }
}