private
headers
	^self otherAt: #pageHeaders ifAbsent: [self initHeaders]