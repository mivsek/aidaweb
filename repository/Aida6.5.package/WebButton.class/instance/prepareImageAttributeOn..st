private
prepareImageAttributeOn: aSession
	self attributesAt: #src put:  (self image urlOnSession: aSession)