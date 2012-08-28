testing
isExtranetUser
	"a general user for extranets"
	^self name = 'Extranet' or: [(self username = 'extranet') & (self password = 'password')]