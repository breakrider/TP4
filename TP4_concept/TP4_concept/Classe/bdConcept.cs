using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.Linq;
using System.Web;
using TP4_concept.base_donnee;

namespace TP4_concept.Classe
{
    public class bdConcept
    {
        private static bdConcept m_DB;

        /// <summary>
        /// BD sous-jacente.
        /// </summary>
        private bdConceptDataContext m_BaseDeDonnees;

        private bdConcept()
        {
            this.m_BaseDeDonnees = new bdConceptDataContext();
        }

        /// <summary>
        /// un Singleton 
        /// </summary>
        public static bdConcept Instance
        {
            get
            {
                if (m_DB == null)
                {
                    m_DB = new bdConcept();
                }
                return m_DB;
            }
        }

        /// <summary>
        /// Pour ajouter un client dans la BD.
        /// </summary>
        /// <param name="p_Client">Objet à ajouter</param>
        public void Ajouter(comptes p_compte)
        {
            Debug.Assert(p_compte != null, "p_Client doit être différent de null");


            this.m_BaseDeDonnees.comptes.InsertOnSubmit(p_compte);
        }

        /// <summary>
        /// Retourne le client dont l'identifiant est p_Id, ou
        /// null s'il n'y en a aucun.
        /// </summary>
        /// <param name="p_Id">Identifiant à rechercher</param>
        /// <returns>Un client ou null</returns>
        public comptes GetComptes(int p_Id)
        {
            return m_BaseDeDonnees.comptes.SingleOrDefault(
                comptes => (comptes.noCompte == p_Id));
        }

      

        /// <summary>
        /// Retourne l'achat dont l'identifiant est p_Id, ou
        /// null s'il n'y en a aucun.
        /// </summary>
        /// <param name="p_Id">Identifiant de l'achat à rechercher</param>
        /// <returns>Un achat ou null</returns>
        public commandes GetCommande(int p_Id)
        {
            return m_BaseDeDonnees.commandes.SingleOrDefault(
                commandes => commandes.idCommande == p_Id);
        }

        /// <summary>
        /// Retourne la liste de tous les clients. 
        /// </summary>
        public IQueryable<comptes> GetAllComptes()
        {
            return m_BaseDeDonnees.comptes;
        }

        /// <summary>
        /// Pour sauvegarder toute modification faite
        /// sur un client ou un achat.
        /// </summary>
        public void Sauvegarder()
        {
            this.m_BaseDeDonnees.SubmitChanges();
        }

    
}
}