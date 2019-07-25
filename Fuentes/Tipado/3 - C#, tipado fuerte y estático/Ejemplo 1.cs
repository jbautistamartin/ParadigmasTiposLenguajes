using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;

namespace Rextester
{
    public class Program
    {
        public static void Main(string[] args)
        {
            int a=20;
            string b=(string) a;
			
			/*
			 * Genera el siguiente error:
			 * (16:22) Cannot convert type 'int' to 'string'
         	 */
        }
    }
}

