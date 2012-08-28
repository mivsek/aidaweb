session modes
inNormalMode
	"is session in normal users mode?"
	^(self otherAt: #sessionMode) = #normal