private-javascript
allJavascriptMethods
	"for javascript, all js* sorted alphabeticaly (sort is not realy needed, just for convenience)"
	"WebStyle new allJavascriptMethods"
	| methods |
	methods := self allWebStyleMethods select: [:each | 'js*' match:each asString].
	^SortedCollection withAll: methods sortBlock: [:a :b | a < b]