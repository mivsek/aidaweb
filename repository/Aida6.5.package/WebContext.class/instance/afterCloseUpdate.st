accessing-other
afterCloseUpdate
	"used for temporary reference to the element to update after some popup will be closed. 
	See WebElement onClickPopup:thenClose, and WebElement>>addClosingLinkText: "
	^self otherAt: #AfterCloseUpdate ifAbsent: [nil]