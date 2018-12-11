using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TP4_concept.Classe
{
    public class Employe : Utilisateur
    {
        private TypeEmploye m_typeEmploye;

        public Employe(TypeEmploye p_TypeEmploye, String p_NomUtilisateur, String p_Nom, String p_Prenom, String p_MotDePasse)
        {
            this.NomUtilisateur = p_NomUtilisateur;
            this.Nom            = p_Nom;
            this.Prenom         = p_Prenom;
            this.MotDePasse     = p_MotDePasse;
            this.Type           = p_TypeEmploye;
        }

        public TypeEmploye Type {
            get
            { 
                return this.m_typeEmploye;
            }
            private set
            {
                this.m_typeEmploye = value;
            }
        }

    }
}