instance creation
linkTo: aLink
	"set hypertext link to some other object or page. If argumet is a String, then this is an url reference, 	else this is object reference, which is resolved to url with help of URLResolver"
	"to add anchor: #(object anchor) ! "
	^self new linkTo: aLink