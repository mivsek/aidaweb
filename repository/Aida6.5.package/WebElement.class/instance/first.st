private-subelements
first
	"Answer the first element.  If the receiver is empty, provide an error 
	notification."

	self checkAndInitElements.  "if not composite element, then error"
	^elements first