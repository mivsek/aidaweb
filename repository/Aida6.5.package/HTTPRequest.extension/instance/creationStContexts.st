*Aida
creationStContexts
	"Smalltalk contexts of element creation methods, to determine, which elements are 
	created first in each method. See WebElement class new, checkIfFirstInMethod, isFirstInMethod"
	^self environmentAt: #creationStContexts ifAbsent: 
		[self environmentAt: #creationStContexts put: Set new.
		^self creationStContexts]