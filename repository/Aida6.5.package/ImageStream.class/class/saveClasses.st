saving
saveClasses
	"ImageStream saveClasses."

	| patternCollection classCollection |
	patternCollection := #('*ImageStream*' '*Progress*').
	classCollection := Smalltalk organization superclassOrder: self category.
	classCollection := classCollection
				select: 
					[:aClass | 
					| string something |
					string := aClass name asString.
					something := patternCollection detect: [:it | it match: string]
								ifNone: [nil].
					something notNil].
	^classCollection , Progress saveClasses