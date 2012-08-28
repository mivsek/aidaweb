private-streaming
streamHtmlTo: aStream for: aRequest on: aSession 
	self prepareCaptchaImage.
	aStream nextPutAll: self contentsOfCaptcha.
	self filename delete.
	self class
		addToCache: self ;
		releaseExpiredCaptchas