attributes
preload: aSymbol
	"Specifies if and how the author thinks the video should be loaded when the page loads"
	" #auto #metadata or #none "
	self attributes at: #preload put: aSymbol asString