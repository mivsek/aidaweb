private
allWebStyleMethods
	"all methods in WebStyle class and sublcasses down to my class"
	"WebStyle new allWebStyleMethods"
	| styleClasses |
	styleClasses := self class allSuperclasses asSet
		add: self class; 
		removeAll: WebStyle allSuperclasses; "only WebStyle and subclasses down to my class"
		yourself. 
	^styleClasses 
		inject: Set new 
		into: [:set :each | set addAll: each selectors; yourself].