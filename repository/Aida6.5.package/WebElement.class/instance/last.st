private-subelements
last
	"Answer the last element.  If the receiver is empty, create an error notification."

	self checkAndInitElements.  "if not composite element, then error"
	^elements last