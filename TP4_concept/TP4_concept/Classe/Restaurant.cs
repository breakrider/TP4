using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TP4_concept.Classe;

namespace TP4_concept.Classe
{
    public class Restaurant : Etablissement
    {
        private Menu m_MenuAssocie;

        public Restaurant(String p_NomSuccursale, String p_Adresse, int p_Telephone)
        {
            this.NomSuccursale = p_NomSuccursale;
            this.Adresse       = p_Adresse;
            this.Telephone     = p_Telephone;
            this.ListeEmployes = new List<Employe>();
            this.MenuAssocie   = null;
        }

        public Menu MenuAssocie
        {
            get
            {
                return this.m_MenuAssocie;
            }
            private set
            {
                this.m_MenuAssocie = value;
            }
        }

        public bool aUnMenu()
        {
            return this.MenuAssocie != null;
        }
    }
}