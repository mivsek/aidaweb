private
shouldSanitize
	"sanitize input from <script> and similar input to prevent entering XSS and similar malicious code"
	(self adaptor buffer isKindOf: String) ifFalse: [^false].
	^(self otherAt: #NoSanitizing ifAbsent: [false]) not