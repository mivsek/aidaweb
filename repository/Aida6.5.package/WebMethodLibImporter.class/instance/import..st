import
import: anUrlString
	"import a library from internet to the library class set before"
	self 
		setOrCreateLibClass;
		checkExecutables; "all commands (like wget, unzip) installed and present?"
		fetchLibrary: anUrlString;
		unpackLibrary;
		setBaseDir; initMap;
		importFromDirectory: self baseDir;
		storeMap; storeBaseUrl;
		clearUnneededMethods; clearTempFiles