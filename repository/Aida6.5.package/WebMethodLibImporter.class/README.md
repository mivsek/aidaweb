WebMethodLibImporter helps importing and upgrading libraries directly from the internet. 

Usage

WebMethodLibImporter default
   baseUrl: '/jquery-mobile';
   library: 'JQueryMobileLibrary';  "class name, lib class will be created if not yet exist"
   exclude: #('/demos');                "exclude directories like demos etc."
   package: 'Aida-Libraries';         "optional, usefull for new libraries, under Undeclared by default"
   import: 'http://code.jquery.com/mobile/1.1.1/jquery.mobile-1.1.1.zip' "also file:// and ftp://, .zip or plain directory"