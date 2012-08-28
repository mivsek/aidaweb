private
regenerateAllUrlLinks
	"from urls in allWebPages"
	"AIDASite default urlResolver regenerateAllUrlLinks"
	self allWebPages keysAndValuesDo: [:object :urls |
		urls do: [:url | self allUrlLinks at: url put: object] ].