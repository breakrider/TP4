using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TP4_concept.Classe
{
	public class Mets
	{
		private string m_Nom;
		private string m_Description;
		private float m_Prix;

		public string Nom
		{
			get
			{
				return this.m_Nom;
			}
			private set
			{
				this.m_Nom = value;
			}
		}

		public string Description
		{
			get
			{
				return this.m_Description;
			}
			private set
			{
				this.m_Description = value;
			}
		}

		public float Prix
		{
			get
			{
				return this.m_Prix;
			}
			private set
			{
				this.m_Prix = value;
			}

		}


	}
}