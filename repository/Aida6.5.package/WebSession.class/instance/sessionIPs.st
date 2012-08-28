accessing-other
sessionIPs
	"all IP addresses of this session. Usually one, except for mobile/roaming users and those with dynamic IP"
	^self otherAt: #SessionIPs ifAbsentPut: [OrderedCollection new]