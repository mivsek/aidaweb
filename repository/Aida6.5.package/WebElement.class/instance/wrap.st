private
wrap
	"wrap this element in <span> element to become updatable, if the element is basic one, 
	like button or input field"
	| wrap |
	self isWrapped ifTrue: [^nil].
	self parent isNil ifTrue: [self error: 'cannot wrap yet'].
	wrap := WebElement newSpan.
	wrap parent: self parent.
	self parent elements
		remove: self;
		add: wrap.
	wrap add: self. self parent: wrap.
	wrap ensureId.
	self otherAt: #Wrapped put: true.