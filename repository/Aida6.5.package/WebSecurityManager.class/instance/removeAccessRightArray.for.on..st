private
removeAccessRightArray: anAccessSymbols for: aWebUserOrGroup on: anObject 
	"remove all specified access rigths for specified user or group on specified object"
	| usrGrps rights |
	self site critical:
		[usrGrps := self accessByObject at: anObject ifAbsent: [^self].
		rights := usrGrps at: aWebUserOrGroup ifAbsent: [^self].
		anAccessSymbols do: [:each | rights remove: each ifAbsent: [] ] ].