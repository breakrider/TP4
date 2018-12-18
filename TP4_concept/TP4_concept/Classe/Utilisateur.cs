using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TP4_concept.Classe
{
    public abstract class Utilisateur
    {
        private String m_NomUtilisateur;
        private String m_Nom;
        private String m_Prenom;
        private String m_MotDePasse;

        public String NomUtilisateur
        {
            get
            {
                return this.m_NomUtilisateur;
            }
            protected set
            {
                this.m_NomUtilisateur = value;
            }
        }

        public String Nom
        {
            get
            {
                return this.m_Nom;
            }
             protected set
            {
                this.m_Nom = value;
            }
        }

        public String Prenom
        {
            get
            {
                return this.m_Prenom;
            }
            protected set
            {
                this.m_Prenom = value;
            }
        }

        protected String MotDePasse
        {
            get
            {
                return this.m_MotDePasse;
            }
            set
            {
                this.m_MotDePasse = value;
            }
        }
    }
}