accessing-doctypes
setHTML5
	"this page is in HTML5"
	self otherAt: #HTML5 put: true.
	^self htmlDocType: '<!DOCTYPE html>'.