groups
groups 
	"where this user is a member"
	^self parent groups select: [:group | group users includes: self]