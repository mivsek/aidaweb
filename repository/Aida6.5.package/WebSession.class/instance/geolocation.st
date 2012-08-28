accessing-other
geolocation
	"Geolocation of user's browser, if any"
	^self otherAt: #geolocation ifAbsent: [nil]