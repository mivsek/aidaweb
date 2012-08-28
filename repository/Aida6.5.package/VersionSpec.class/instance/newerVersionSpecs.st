accessing
newerVersionSpecs
	"return all version specs of that object, newer than this one"
	self isNewest ifTrue: [^#()].
	^OrderedCollection new 
		add: self next version; addAll: self next version newerVersionSpecs;
		yourself