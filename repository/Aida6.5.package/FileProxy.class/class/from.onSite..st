instance creation
from: aFilenameString onSite: aSite
	"read a file and make a HTML proxy of it. Return nil, if file does not exist or cannot be opened. 
	Also record a server for which you make a proxy"
	| proxy |
	proxy := self new site: aSite; from: aFilenameString.
	proxy indexContent.
	^proxy