using System;
using System.Collections;
using System.Collections.Generic;
using System.Reflection;

namespace Prog.Documents
{
    public class DocumentGeneratorFacade {

        private static Dictionary<Type, ConstructorInfo> subclassDictionary = new Dictionary<Type, ConstructorInfo>();

        static DocumentGeneratorFacade()
        {
            Assembly ass = typeof(DocumentGeneratorFacade).Assembly;
            Type generatorType = typeof(DocumentGenerator);

            foreach (Type type in ass.GetTypes())
            {
                if (type.IsSubclassOf(generatorType))
                {
                    ConstructorInfo ctor = type.GetConstructor(new Type[] { });
                    subclassDictionary.Add(type, ctor);
                }
            }
        }

        public static DocumentGenerator GetGenerator<T>() {
            //find type
            Type lookupType = typeof(T);
            if (subclassDictionary.ContainsKey(lookupType))
            {
                return (DocumentGenerator)subclassDictionary[lookupType].Invoke(new object[0]);
            }
            return null;
        }
    }
}