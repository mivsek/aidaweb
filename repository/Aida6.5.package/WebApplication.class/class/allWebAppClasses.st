accessing
allWebAppClasses
	"return an ordered collection with a WebApplication class all their subclasses ordered
	by levels of inheritance and by class name on the same level"
	| classes |
	classes := OrderedCollection new.
	self allWebAppClassesTo: classes.
	^classes

"WebApplication allWebAppClasses"