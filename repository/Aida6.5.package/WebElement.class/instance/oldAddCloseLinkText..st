private-obsolete
oldAddCloseLinkText: aString
	"OBSOLETE"
	"a link to close that window if popup (it also closes by Ajax its execution context!)"
	| ctx link |
	ctx := self context.
	link := self addNilLinkText: aString.
	link
		onClick: 'closeLightboxLevel(', ctx level printString,')'; "from WebStyle>>js30Lightbox"
		onClickUpdate: nil from: nil with: nil optional: 'aidaCloseWindow'.  "to close context too"
	ctx afterCloseUpdate notNil ifTrue: "if set by WebElement>>onClickPopup:thenUpdate:"
		[link onClick: "update on parent context of the popup! "
			(self scriptForUpdate: ctx afterCloseUpdate from: ctx afterCloseUpdate
				with: nil 	optional: nil
				context: (ctx isFirst not ifTrue: [ctx parent] ifFalse: [ctx]) )]