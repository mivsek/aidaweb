JQueryLibrary with jQuery and jQuery UI

Import/upgrade:
  1. go to http://jqueryui.com/download/
  2. Theme: stay with UI lightness
  3. Advanced theme settings: change folder name to 'ui'
  4. Download and save to your home dir
  5. Import:

	WebMethodLibImporter default
	   baseUrl: '/jquery';
	   library: 'JQueryLibrary';  "including UI"
	   exclude: #('/development-bundle');            
	   package: 'Aida-Libraries'; 
"	   import: 'file://~/jquery-ui-1.8.21.custom.zip' "   "first check the name (version) if correct! "
	   import: 'file://~/projekti/aida/js-libs/jquery/jquery-ui-1.8.21.custom.adapted'  "added in-place editing"

   6. adjust URLs in ensure* methods with new version information



