accessing
baseUrl
	"base, starting Url for library, like '/tinymce' so that adding an relative Url resource gets 
	a final absolute Url of that resource: '/tinymce/jscripts/tinymce.js' "
	BaseUrl ifNil: [self baseUrl: '/jquery'].
	^BaseUrl