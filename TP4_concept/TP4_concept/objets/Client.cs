using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Tp4.objets
{
    public class Client: Utilisateur
    {
        private int        m_telephone;
        private String     m_Adresse;
        private List<Note> m_ListeNotes;

        public Client(String p_NomUtilisateur)
        {
            this.NomUtilisateur = p_NomUtilisateur;
            this.ListeNotes     = new List<Note>();
        }

        public Client(String p_NomUtilisateur, String p_Nom, String p_Prenom, String  p_Adresse, int p_Telephone, String p_MotDePasse)
        {
            this.NomUtilisateur = p_NomUtilisateur;
            this.Nom            = p_Nom;
            this.Prenom         = p_Prenom;
            this.Adresse        = p_Adresse;
            this.Telephone      = p_Telephone;
            this.MotDePasse     = p_MotDePasse;
            this.ListeNotes     = new List<Note>();
        }

        public int Telephone
        {
            get
            {
                return this.m_telephone;
            }
            private set
            {
                this.m_telephone = value;
            }
        }

        public String Adresse
        {
            get
            {
                return this.m_Adresse;
            }
            private set
            {
                this.m_Adresse = value;
            }
        }

        public List<Note> ListeNotes
        {
            get
            {
                return this.m_ListeNotes;
            }
            private set
            {
                this.m_ListeNotes = value;
            }
        }

        public bool isEnregistre()
        {
            return this.MotDePasse != null;
        }

        public void EnregisrerClient(String p_Nom, String p_Prenom, String p_MotDePasse)
        {
            if (!this.isEnregistre())
            {
                this.Nom        = p_Nom;
                this.Prenom     = p_Prenom;
                this.MotDePasse = p_MotDePasse;
            }
        }

        public void AjouterNote(Note p_note)
        {
            this.ListeNotes.Add(p_note);
        }
    }
}