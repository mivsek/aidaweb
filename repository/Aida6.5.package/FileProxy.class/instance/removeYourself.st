private
removeYourself
	"remove from url resolver and elsewhere"
	self releaseContent.
	self site urlResolver removeObject: self.
	self fileStillExist ifTrue: [self filename delete]