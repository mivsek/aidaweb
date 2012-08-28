accessing
popupStub
	"empty stub element for eventual popup window"
	self elements first isStubElement ifFalse: [^self error: 'not a popup stub! '].
	^self elements first