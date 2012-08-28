private-importing
clearUnneededMethods
	"methods which are in resources category but not in map should be deleted"
	| allMethods importedMethods |
	allMethods := self library class organization listAtCategoryNamed: #resources.
	importedMethods := (self map values collect: [:each | each first "method"]) asSet.
	allMethods do: [:method |
		(importedMethods includes: method) ifFalse:
			[self library class removeSelector: method] ]