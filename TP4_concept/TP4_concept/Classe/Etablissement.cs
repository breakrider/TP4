using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TP4_concept.Classe
{
    public abstract class Etablissement
    {
        private String        m_NomSuccursale;
        private String        m_Adresse;
        private int           m_Telephone;
        private List<Employe> m_ListeEmployes;

        public String NomSuccursale
        {
            get
            {
                return this.m_NomSuccursale;
            }
            protected set
            {
                this.m_NomSuccursale = value;
            }
        }

        public String Adresse
        {
            get
            {
                return this.m_Adresse;
            }
            protected set
            {
                this.m_Adresse = value;
            }
        }

        public int Telephone
        {
            get
            {
                return this.m_Telephone;
            }
            protected set
            {
                this.m_Telephone = value;
            }
        }

        public List<Employe> ListeEmployes
        {
            get
            {
                return this.m_ListeEmployes;
            }
            protected set
            {
                this.m_ListeEmployes = value;
            }
        }

        public void AjouterEmploye(Employe p_employe)
        {
            this.ListeEmployes.Add(p_employe);
        }
    }
}