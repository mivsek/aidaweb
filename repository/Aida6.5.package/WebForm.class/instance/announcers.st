private-ajax
announcers
	"whom to announce form field change. A collection of blocks to call"
	^self otherAt: #announcers ifAbsentPut: [OrderedCollection new]