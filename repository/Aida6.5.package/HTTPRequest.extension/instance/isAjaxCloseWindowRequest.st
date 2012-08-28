*Aida
isAjaxCloseWindowRequest
	"to Ajax close the window and its context (by WebElement>>addCloseWindowText: )"
	| parm2 |
	(self isPost and: [self isAjaxRequest]) ifFalse: [^false].
	parm2 := (self postDataAt: 'parm2').
	^parm2 notNil and: [parm2 value = 'aidaCloseWindow']