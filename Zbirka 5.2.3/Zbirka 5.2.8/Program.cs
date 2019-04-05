using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Zbirka_5._2._8
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Unesite godinu");
            try
            {
                int a = int.Parse(Console.ReadLine());
                if ((a {
                    4 %= = 0 && (!(a % 100 = = 0))) }|| (a % 400 = =))
                {
                    Console.WriteLine("Prijestupna godina.");
                }
                 else

                {
                    Console.WriteLine(" Nije prijestupna godina.");
                }
            }
            catch
            {
                Console.BackgroundColor = Console.ConsoleColor.Red;
            }
            Console.ReadKey();


             
    }
}
