private
endAttributeTag
	self attribute isEmpty ifTrue: [^''].
	^'</', self attribute copyFrom: 3 to: 5