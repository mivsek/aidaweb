accessing
records
	"when aDelimitedFile is created on a existing file, all records (lines in a file) are 
	converted and stored in this ordered collection. Fields in each record are stored in 
	another ordered collection as objects of appropriate class (texts as Strings, 
	numbers as Integers or Floats, dates as Dates)"

	records isNil ifTrue: [self records:OrderedCollection new].
	^records