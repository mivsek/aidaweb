private
sendUrl: aString
	"sends a real network request with that RELATIVE url to the site with parameters from defaults. 
	Returns a Net.HttpResponse"
	| client request |
	client := Net.HttpClient new.
	request := Net.HttpRequest get: 'http://', self siteHost, ':', self sitePort printString, aString.
	^client executeRequest: request.