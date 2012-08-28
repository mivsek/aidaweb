adding-removing
removeObjectsOfClassNamed: aString
	"good for removing Obsolete classes!"
	self site critical:
		[self allWebPages keys do: [:object | 
			object class name= aString ifTrue: [self removeObject: object]] ].

"URLResolver default removeObjectsOfClassNamed: WebMethodImage"
"URLResolver default allWebPages size 10934"