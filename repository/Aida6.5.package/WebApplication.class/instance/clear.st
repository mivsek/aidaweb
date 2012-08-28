private-window delegation
clear
	"delegate to the form of currently executing context"
	super clear. "overall app stuff"
	^self context form clear "view specific stuff"