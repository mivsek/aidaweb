settings
logging

	"if true, all requests are logged into a database"
	^self settings  at: #logging ifAbsentPut: [false].