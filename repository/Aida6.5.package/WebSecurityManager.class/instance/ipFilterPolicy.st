settings
ipFilterPolicy
	"what to do if IP is on blacklist or whitelist"
	^self settings at: #ipFilterPolicy ifAbsentPut: [#warn]