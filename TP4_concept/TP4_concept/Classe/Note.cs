using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Tp4_concept.Classe
{
	public class Note
	{
		private string m_Message;

		public string Message
		{
			get
			{
				return this.m_Message;
			}
			private set
			{
				this.m_Message = value;

			}
		}
	}
}