instance creation
newUpdate: aWebElement with: aString
	"command to update some element on webpage"
	^self new 
		command: #update;
		element: aWebElement;
		value: aString