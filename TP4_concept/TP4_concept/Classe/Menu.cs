using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TP4_concept.Classe
{
    public class Menu
    {
        private List<Mets> m_listMenu;
        
        public Menu()
        {
            m_listMenu = new List<Mets>();
        }

        public void ConsulterMenu()
        {
            foreach(Mets m in m_listMenu)
            {

            }
        }
    }
}