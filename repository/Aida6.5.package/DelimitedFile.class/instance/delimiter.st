accessing
delimiter
	"delimiter is a character, which separate fields in a delimited file"
	delimiter isNil ifTrue: [self delimiter: self defaultDelimiter].
	^delimiter