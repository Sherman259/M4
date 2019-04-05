using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace _5._13.Zbirka
{
    class Program
    {
        static void Main(string[] args)
        {
            int min = int.MaxValue;
            int max = int.MinValue;
            int broj;
            for (int i = 1; i <= 10; i++)
            {

                {
                    Console.WriteLine("Unesite  {0}. prirodan broj:", i.ToString());
                    broj = int.Parse(Console.ReadLine());

                    if (broj < min)
                    {
                        min = broj;
                    }
                    if (broj > max)
                    {
                        max = broj;
                    }
                }
                Console.Write("Najmanji = {0}\nNajveci = {1}", min, max);
                Console.ReadKey();
            }

        }
    }
}

