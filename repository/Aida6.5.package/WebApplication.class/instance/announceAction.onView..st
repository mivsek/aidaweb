private
announceAction: anActionSymbol onView: aSymbol
	"Squeak specific"
	"When Squeak will have Announcements by default ..."
"	self announce: 
		(AppActionTrigered for: self observee on: self session view: aSymbol action: anActionSymbol)
"