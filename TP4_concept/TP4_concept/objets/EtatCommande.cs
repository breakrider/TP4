using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Tp4
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