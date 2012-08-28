session modes
inDevMode
	"is session in developers mode?"
	^(self otherAt: #sessionMode) = #dev