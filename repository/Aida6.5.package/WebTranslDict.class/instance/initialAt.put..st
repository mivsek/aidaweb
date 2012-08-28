accessing
initialAt: key put: value
	"this one does not register the change, use it for initial dict setup!"
	^self dict at: key put: value