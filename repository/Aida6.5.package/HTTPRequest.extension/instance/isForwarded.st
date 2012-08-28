*Aida
isForwarded
	"Request is forwarded by Proxy server"
	^(self headerAt: 'X-Forwarded-For' ifAbsent: [^false]) notNil