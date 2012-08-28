settings
cometEnabled: aBoolean
	"Is long-polling Comet enabled? By default no"
	^self settings at: #CometEnabled put: aBoolean