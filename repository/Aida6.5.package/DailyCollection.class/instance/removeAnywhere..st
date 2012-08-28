adding-removing
removeAnywhere: oldObject 
	"First find the right day then remove it. Use tham method if an object's date was changed later"
	self days values do: [:collection | 
		(collection includes: oldObject) ifTrue: 
			[collection remove: oldObject. 
			^true] ].
	^false