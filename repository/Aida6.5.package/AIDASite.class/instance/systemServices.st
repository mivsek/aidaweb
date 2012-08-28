private
systemServices
	"return a dictionary of system services (e.g. URLResolver, ImageManager etc.)"
	systemServices isNil 
		ifTrue: [systemServices := Dictionary new].
	^systemServices