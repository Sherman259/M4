using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _5._2._7
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Upišite broj:");

            int broj = 0;
            try



            {
                broj = int.Parse(Console.ReadLine());
            }
            catch (FormatException e)
            {
                Console.WriteLine(e.ToString());
            }
            if (broj % 4 == 0 && broj > = 100)
                {
                Console.WriteLine("Broj je djeljiv sa 4 i nije manj od 100");
            }
                else
            {
                Console.WriteLine("Broj je djeljiv sa 4 i nije manj od 100");
            }
            Console.ReadKey();



            }
    }
}
