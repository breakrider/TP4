using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TP4_concept.Classe
{
    public enum EtatCommande
    {
        Envoyee,
        Annulee,
        Refusee,
        AttentePreparation,
        EnPreparation,
        AttenteLivraison,
        EnChemin,
        Retournee,
        Clot
    }
}