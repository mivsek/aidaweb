attributes
background: aWebImage
	"bachground image"
	self attributesAt: #background put:
		(((aWebImage isKindOf: WebImage) ifTrue: [aWebImage] ifFalse: [WebImage image: aWebImage]) 
			urlOnSession: self session)