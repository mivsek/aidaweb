running
setRequest
	request := HTTPGet new.
	request parseURI: 'http://www.eranova.si/demo.html'.
	session lastRequest: request