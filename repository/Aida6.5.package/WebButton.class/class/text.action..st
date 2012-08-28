instance creation
text: aString action: aSymbol
	^self new 
		type: #submit;
		text: aString;
		action: aSymbol