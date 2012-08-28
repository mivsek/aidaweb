accessing
asString
	"return only text part of the element and its subelements"
	| stream |
	elements isNil ifTrue: [^''].
	stream := WriteStream on: String new.
	self elements do: [:each | stream nextPutAll: each asString].
	^stream contents