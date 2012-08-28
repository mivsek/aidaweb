slovenian characters
initSloveneCharacters
	"AIDASite initSloveneCharacters"
	SloveneCharacters := Set new: 6.
	^SloveneCharacters 
		add: self charC;
		add: self charc;
		add: self charS;
		add: self chars;
		add: self charZ;
		add: self charz;
		yourself