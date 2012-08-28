private-subelements
replace: aSubelement with: anElement
	| index |
	index := self elements indexOf: aSubelement.
	self elements at: index put: anElement.
	anElement parent: self.
	aSubelement parent: nil.