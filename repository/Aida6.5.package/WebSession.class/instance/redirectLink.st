redirection
redirectLink
	"if this aWebLink is set, then web browser will recreate another request with url from that link. Used, if you like, after form action in one page to show page for some other object, e.g. if you have search field in page in one object, and search result is exactly one, then you want to show result page immediately. You can do this with this method.
Atribute redirectLink is reset to nil immediately after printWebPage and before printHTMLPage in WebMediator method dicpatchClient (see WebMediator sendResponseHeaderOn:)"
	^self otherAt: #redirectLink