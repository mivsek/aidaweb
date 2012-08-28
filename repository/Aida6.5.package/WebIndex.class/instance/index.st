accessing
index
	"index is a dictionary with first three lowercase letters of each indexed world as key and
	another dictionary for remaining letters as value. The second dictionary has remaining letters for key
      and dictionary with objects, where this word occured, as key and number of occurences as value"
	index isNil ifTrue: [self initIndex].
	^index