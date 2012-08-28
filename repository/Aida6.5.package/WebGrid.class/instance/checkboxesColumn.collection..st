settings-column
checkboxesColumn: aColumnId collection: aCollection
	"this column will have checboxes. Checked row objects will be in aCollection.
	preselected rows are done from initial aCollection"
	self checkboxes: aColumnId.
	self checkboxesCollection: aCollection