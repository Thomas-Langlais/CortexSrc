namespace DocxTest1
{
    using System;
    using System.Collections.Generic;
    using System.Linq;
    using System.Text;

    using System.IO;
    using System.Xml;
    using System.Xml.Xsl;
    using Saxon.Api;
    using System.Reflection;

    namespace XSLTWordDocument
    {
        class Program
        {
            /// <summary>
            /// This application uses the xslt file created from the 
            /// original Word 2007 template document to transform xml data 
            /// into a valid Open XML 2.0 Wordprocessing format.
            /// The application then updates the output document with the 
            /// new content using the Open XML SDK version 2.0.
            /// </summary>
            static void Main(string[] args)
            {
                //Declare variables for file locations.
                string xmlDocxFile = @".\mydoc.xml";
                string xmlResult = @".\mydoc1.xml";

                FileStream fs = new FileStream(xmlDocxFile, FileMode.OpenOrCreate);
                
                XQueryCompiler compiler = new Processor().NewXQueryCompiler();

                //bug on saxon's end... sounds stupid but force add base URI for the current location
                string directory = new FileInfo(Assembly.GetExecutingAssembly().Location).Directory.FullName + '\\';
                string uri = new Uri(directory).AbsoluteUri;
                compiler.BaseUri = uri;

                XQueryExecutable executable = compiler.Compile(fs);
                XQueryEvaluator evaluator = executable.Load();
                XdmValue result = evaluator.Evaluate();

                FileStream fStream = System.IO.File.Open(xmlResult, FileMode.OpenOrCreate, FileAccess.ReadWrite);
                XmlWriterSettings settings = new XmlWriterSettings
                {
                    ConformanceLevel = ConformanceLevel.Fragment,
                    Indent = true
                };
                XmlWriter writer = XmlWriter.Create(fStream, settings);
                try
                {
                    writer.WriteRaw(result.ToString());
                } catch(Exception e)
                {
                    writer.Close();
                    throw e;
                } finally
                {
                    writer.Close();
                }
            }
        }
    }
}
