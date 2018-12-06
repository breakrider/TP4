using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Tp4_concept.Classe
{
    public class Central : Etablissement
    {
        public Central(String p_NomSuccursale, String p_Adresse, int p_Telephone)
        {
            this.NomSuccursale = p_NomSuccursale;
            this.Adresse       = p_Adresse;
            this.Telephone     = p_Telephone;
            this.ListeEmployes = new List<Employe>();
        }
    }
}