private
style: aWebStyle
	(aWebStyle isNil or: [aWebStyle isKindOf: WebStyle]) 
		ifFalse: [self error: 'Set the style with method #styleClass: instead!'].
	style := aWebStyle.