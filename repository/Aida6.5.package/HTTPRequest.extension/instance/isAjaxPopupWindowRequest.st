*Aida
isAjaxPopupWindowRequest
	"to Ajax open some element in a popup window, (WebElement>>onClickPopup: )"
	| parm2 |
	(self isPost and: [self isAjaxRequest]) ifFalse: [^false].
	parm2 := (self postDataAt: 'parm2').
	^parm2 notNil and: [parm2 value = 'aidaPopupWindow']