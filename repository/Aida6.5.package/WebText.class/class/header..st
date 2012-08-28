instance creation
header: aNumber

	"create an empty header. You can add elements such as images and text later"

	^(self new) header: aNumber.

"| a | 
a := (WebText header: 1).
a add: (WebImage urlReference: 'http://pu/stefan.gif').
a inspect"