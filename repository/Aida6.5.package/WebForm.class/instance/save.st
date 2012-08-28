model posting
save
	"save all changed form field values to the domain model. All values must be valid unitl any value is saved. 
	Raise error if any value is not validated. To avoid exception, check with #isValid before!
	Save the subforms down in hierarchy as well"
	self isValid ifFalse: [self error: 'form fields not all valid'].
	self allFields do: [:field | field save]. "only changed fields are saved! See WebModelAdaptor save"
	self subforms do: [:each | each save]