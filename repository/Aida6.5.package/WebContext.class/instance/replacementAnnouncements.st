private-ids
replacementAnnouncements
	"current elememnt id replacement announcements"
	^self ids at: #replacementAnnouncements ifAbsent: [self initReplacementAnnouncements]