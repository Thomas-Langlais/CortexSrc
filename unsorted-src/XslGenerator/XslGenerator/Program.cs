using System;
using System.Collections.Generic;
using System.Xml;
using System.Xml.Linq;
using System.Xml.Schema;
using System.Text.RegularExpressions;
using Prog.Documents;

namespace Prog
{
    class Program
    {
        [STAThread]
        static void Main(string[] args)
        {
            // //must have a .xsd file... do checks
            // if (args.Length < 1)
            // {
            //     Console.WriteLine("Must have an XSD file to generate an XSL file");
            //     return;
            // }

            // string filePath = args[0];

            // //is not xsd file
            // if (!Regex.Match(filePath, "^.*\.xsd$")) {
            //     Console.WriteLine("File submitted is not of type XSD");
            //     return;
            // }

            DocumentGenerator generator = DocumentGeneratorFacade.GetGenerator<XslGenerator>();
            
        }
    }
}
