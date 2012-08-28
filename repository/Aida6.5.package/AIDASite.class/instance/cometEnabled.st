settings
cometEnabled
	"Is long-polling Comet enabled? By default no"
	^self settings at: #CometEnabled ifAbsent: [false]