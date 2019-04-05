using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Knjiga_53.Tablica_mnozena
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Tablica mnozenja");
            for (int i = 1, i < =10; i++)
            {
                for (int j = 1; j < 10; ++)
                {
                    Console.WriteLine("{0}\t", (i * j).ToString());
                }
                Console.WriteLine();
            }
        }
    }
}
