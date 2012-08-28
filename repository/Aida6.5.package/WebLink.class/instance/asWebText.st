private
asWebText
	"return just a text part (with formating) of this link"
	| wtext |
	wtext := WebText new.
	wtext 
		basicText: self text copy;
		textAttributes: self textAttributes copy.
	self header notNil ifTrue: [wtext header: self header].
	self size notNil ifTrue: [wtext size: self size].
	self paragraph notNil ifTrue: [wtext paragraph: self paragraph].
	self elements do: [:each | wtext add: each].
	^wtext