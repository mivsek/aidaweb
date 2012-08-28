AmberLibrary with Amber Smalltalk http://amber-lang.net

Importing/upgrading:

  1.download .zip from http://amber-lang.net/index.html#download
  2. import from local fime:

  WebMethodLibImporter default
     baseUrl: '/amber';
     library: 'AmberLibrary'; 
     package: 'Aida-Libraries';   
     import: 'file://~/Download/NicolasPetton-amber-0.9.1-233-g5c9c9d8.zip'

"After upgrade also slice urlToMethodMap to have less than 100 lines per method! (256 literals limit on older VW)"

  3. in browser open http://localhost:8888/amber/index.html
