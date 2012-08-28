private
joinToForm: aWebForm
	"join  this checkbox to the group of them with the same name in aWebForm. 
	This method is called by aWebForm!"
	| existing |
	existing := aWebForm fieldSet 
		detect: [:each | each isRadioButton and: [each name = self name]]
		ifNone: [self value: Dictionary new. self].
	(existing value = '') ifTrue: [existing value: Dictionary new].
	self adaptor: existing adaptor.
	(self value includesKey: self value) ifFalse:
		[self value at: self value put: false] "????"