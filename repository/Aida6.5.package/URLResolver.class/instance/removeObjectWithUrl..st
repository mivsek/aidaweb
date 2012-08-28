adding-removing
removeObjectWithUrl: aString

"remove object and all its URLs. Returns true if object existed and false if not"

	| object |
	object := allURLLinks at: aString asLowercase ifAbsent: [^false].
	^self removeObject: object.