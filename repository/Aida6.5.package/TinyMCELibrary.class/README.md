TinyMCELibrary is a platform independent web based Javascript HTML WYSIWYG editor control released as Open Source under LGPL by Moxiecode Systems AB. http://www.tinymce.com/

Don't forget to import/upgrade langages too, manually after import, or step by step with DebugIt, then after #unpackLibrary copy downloaded lang pack over the unziped tiynmce in ~/temp directory

"After upgrade also slice urlToMethodMap to have less than 100 lines per method! (256 literals limit on older VW)"
WebMethodLibImporter default
   baseUrl: '/tinymce';
   library: 'TinyMCELibrary';  
   exclude: #('/examples');    
   package: 'Aida-Libraries';    
   import: 'http://github.com/downloads/tinymce/tinymce/tinymce_3.5.5.zip' 
