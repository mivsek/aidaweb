session modes
inAdminMode
	"is session in admin mode?"
	^(self otherAt: #sessionMode) = #admin