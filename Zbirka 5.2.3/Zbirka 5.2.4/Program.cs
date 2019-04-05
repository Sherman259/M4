using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Zbirka_5._2._4
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Unesi cijeli broj:");
            int a = int.Parse(Console.ReadLine());
            if (a >= 1000)
            {
                Console.WriteLine("Broj je velik.");
            }
            else
            {
                Console.WriteLine("Broj nije velik.");
            }
            Console.ReadKey();

        }
    }
}
