accessing
security
	"you can gray or not show a link at all if this object is not accessible - a view 
	on that aWebApplication has no access rights in SecurityManager for current user.
	possible values:
	nil - no access restrictions, always show the link,
	#grayed - show only text in gray - no link if access denied
	#invisible - don't show anything - invisible link if access denied
	"

	^security