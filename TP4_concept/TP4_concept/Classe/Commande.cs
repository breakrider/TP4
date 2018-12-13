using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using TP4_concept.Classe;

namespace TP4_concept.Classe
{
	public class Commande
	{
		private Client m_Client;
		private Restaurant m_Restaurant;
		private List<LigneCommande> m_ListeLigneCommande;
		private EtatCommande m_Etat;

		public float CalcuterTotal() {
			return 0;
				}


	}
}