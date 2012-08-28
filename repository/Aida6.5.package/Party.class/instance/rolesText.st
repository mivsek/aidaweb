accessing
rolesText
	"names of roles this party plays, in one string separated with commas"
	| text |
	text := ''.
	1 to: self roleNames size do: [:inx |
		text := text, (self roleNames at: inx).
		inx = self roleNames size ifFalse: [text := text, ', '] ].
	^text