namespace Prog.Documents
{
    public abstract class DocumentGenerator {

        public DocumentGenerator() { }

        /*
         * Generates a type of document defined in its subclasses.
         * Uses the file name given and returns the full path file name generated
         */
        public abstract string GenerateDocument(string fileName = null);

        /*
         * Gets the documents file extension
         */
        public abstract string GetDocumentExt();
        
        /*
         * create a file with a given name
         */
        private string GenerateFileName(string fileName, string path = null) {

            //string fullPathRegex = "^(?:[\w]:|\\)(\\[a-zA-Z_-\s0-9][\\[a-zA-Z_-\s0-9.]+)+$";
            //string localPathRegex = "^[a-zA-Z][a-zA-Z]$";
            return null;
        }
    }
}