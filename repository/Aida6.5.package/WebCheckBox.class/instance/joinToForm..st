private
joinToForm: aWebForm
	aWebForm fields keysAndValuesDo: [:fname :element | 
		element == self ifTrue: [self name: fname]. ^self]