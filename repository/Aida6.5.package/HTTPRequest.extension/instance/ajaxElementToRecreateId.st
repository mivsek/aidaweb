*Aida
ajaxElementToRecreateId
	"for Ajax updates from contents of another element "
	"see WebElement>>onClickPopup:, WebApplication>>ajaxUpdate:with: etc."
	| id |
	id := self queryAt: 'ajaxElementToRecreateId' ifAbsent: [nil].
	id notNil ifTrue: [^id asSymbol].
	^self isPost 
		ifTrue: [(self postDataAt: 'ajaxElementToRecreateId' ifAbsent: [^nil]) value asSymbol]
		ifFalse: [nil]