accessing
warningMessage
	"if set, this warning will be shown on top of that page in red. Usefull for 'Browser not supported' warnings etc"
	^self otherAt: #PageWarningMessage ifAbsent: [nil]