initialize-release
initialize
	parms := Dictionary new.
	self security: #grayed.  "if access not allowed, only gray text is shown"