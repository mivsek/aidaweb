settings
ipFilterPolicy: aSymbol
	"what to do if IP is on blacklist or whitelist"
	"(AIDASite named: 'aidademo') securityManager ipFilterPolicy: #deny "
	(#(#none #warn #deny) includes: aSymbol) ifFalse: [self error: 'unkown IP filter policy'].
	^self settings at: #ipFilterPolicy put: aSymbol