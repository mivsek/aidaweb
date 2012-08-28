private
appClassLevel
	"return the level of inheritance of a class, relative to a WebApplication class"
	| level cls |
	level := 1.
	cls := self.
	[cls == WebApplication] whileFalse: 
			[level := level + 1.
			cls := cls superclass].
	^level