map
urlToMethodMap
	"Url relative to base Url  as key, method and content type in value. Subclasess shall override 
	this method according to example here"
	MapCache ifNotNil: [^MapCache].
	^MapCache := Dictionary new
		at: '/jquery.mobile-1.1.1.css' put: #(jQueryMobile111Css  'text/css');
		at: '/jquery.mobile-1.1.1.js' put: #(jQueryMobile111Js  'application/javascript');
		yourself