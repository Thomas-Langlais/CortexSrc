using System.Xml;
using System.Xml.Schema;

namespace XslGenerator.Documents
{
    class XslGenerator : DocumentGenerator {

        //BE SURE TO LOG ALL ERRORS AND SPIT
        public XslGenerator(string fileName)
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
    }
}