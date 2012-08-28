private
addSessionID
	"add session id to  parms dictionary. Url with session id looks like: 	http://www.tris-a.si/welcome.html?id=523453. This should be done for every automaticaly 
	generated url (WebLink printHTMLPage) to distinguish sesions among themselves."
	self parms at: 'id' put: self id printString.