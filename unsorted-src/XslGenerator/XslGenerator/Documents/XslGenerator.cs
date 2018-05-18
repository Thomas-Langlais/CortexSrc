using System;
using System.Xml;
using System.Xml.Schema;

namespace Prog.Documents
{
    class XslGenerator : DocumentGenerator {

        //BE SURE TO LOG ALL ERRORS AND SPIT
        public XslGenerator() : base()
        {
        }

        public void PushRequirements(string filePath)
        {
            XmlTextReader reader = new XmlTextReader(filePath);
            XmlSchema schema = XmlSchema.Read(reader, ValidationCallback);

            //complie the schema and add callback to get errors
            XmlSchemaSet schemaSet = new XmlSchemaSet();
            schemaSet.ValidationEventHandler += new ValidationEventHandler(ValidationCallback);
            schemaSet.Add(schema);
            schemaSet.Compile();
        }

        /*
         * Generates a xsl file.
         * Uses the file name given and returns the full path file name generated
         */
        public override string GenerateDocument(string fileName = null) {
            return null;
        }

        public override string GetDocumentExt()
        {
            return ".xsd";
        }

        static void ValidationCallback(object sender, ValidationEventArgs arg)
        {
            if (arg.Severity == XmlSeverityType.Warning)
            {
                Console.Write("WARNING: ");
            }
            else if (arg.Severity == XmlSeverityType.Error)
            {
                Console.Write("ERROR: ");
            }
            Console.WriteLine(arg.Message);
        }
    }
}