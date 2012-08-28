private
insideSpanTag
	"to enclose or not in span tag. Only if element have any attribute!"
	^self attributes notNil and: [self isLink not]