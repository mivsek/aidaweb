*Aida
aidaContentType
	"return 'text/html' as content type for web pages"
	"changed from previous #contentType, which can clash with other projects (already on 
	KomHTTPServer on Squeak/Pharo)"
	^'text/html'