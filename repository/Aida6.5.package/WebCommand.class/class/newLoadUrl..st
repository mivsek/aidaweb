instance creation
newLoadUrl: aString
	"command to load in current browser window some other page or reload current one"
	^self new 
		command: #load;
		value: aString