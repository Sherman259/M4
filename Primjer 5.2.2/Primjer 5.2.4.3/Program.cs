using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Primjer_5._2._4._3
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Unesite ime skole koju pohađate:");
            string skola = Console.ReadLine();
            if (!(skola == "Algebra"))
            {
                Console.WriteLine("Upisite seminar u Algebri!: -)");
                    Console.ReadKey();
            }
        }
    }
}
