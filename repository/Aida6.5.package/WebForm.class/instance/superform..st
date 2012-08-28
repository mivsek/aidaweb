private
superform: aWebForm
	"parent form"
	self == aWebForm ifTrue: [self error: 'superform?']. "for debugging!"
	superform := aWebForm