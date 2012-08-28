views
viewTests
	"VW specific"
	| e inx bundle testClasses versionId |
	self title: 'Test results'.
	e := WebElement new. inx := 1.
	bundle := Store.BundleModel allInstances detect: [:each | each name = 'BiArt'].
	testClasses := bundle definedClasses
		 select: [:each | each inheritsFrom: XProgramming.SUnit.TestCase].
	testClasses := SortedCollection withAll: testClasses sortBlock: [:a :b | a name < b name].
	e addTextH2: 'Unit testing report'. 
	e table width: 1. e cell colspan: 3; addRulerSize: 1. e newRow.
	e cell addText: 'Bundle: '. e newCell addTextBold: bundle name. e newCell width: 0.7. 
	e newRow.
	e cell addText: 'Version:'. e newCell addText: bundle traceVersionString. e newRow.
	e cell addText: 'Testing date: '. e newCell addText: Date today shortPrintSloString.  e newRow.
	e cell addText: 'Time: '. e newCell addText: Time now printSloString.  e newRow.
	e cell colspan: 3; addText: 'Testing environment: ', 'Cincom VisualWorks Smalltalk v'.  
	versionId := ObjectMemory versionId at: 5.
	e cell addText: (versionId // 10) printString, '.', (versionId \\ 10) printString. e newRow.
	e cell colspan: 3; addRulerSize: 1. e newRow.
	e newTable width: 1.
	e newCell width: 0.05; addText: 'Test class/method'. e newCell width: 0.4; align: #right; addText: 'Result'. 
	e newCell width: 0.3. e newRow.
	e cell colspan: 4; addRulerSize: 1. e newRow.
	testClasses do: [:cls || suite result |
		e cell addText: inx printString, '.'.  e newCell addText: cls name.
		suite := TestSuite new. 
		cls allTestSelectors do: [:each | suite addTest: (cls selector: each)]. 
		result := [suite run] ifCurtailed: []. 
		e newCell align: #right; addTextSmall: result runCount printString, ' tests '.
		result hasPassed 
			ifTrue: [(e cell addText: 'Passed') color: #green] 
			ifFalse: [(e cell addText: '<b>Failed</b>') color: #red].
		cls allTestSelectors asSortedCollection do: [:each |
			e newRow. e newCell addNbSp: 4; addTextSmall: each asString. 
			e newCell align: #right. (e cell addText: '<small>Passed</small>') color: #green].
		e newCell.
		e newRow. inx := inx + 1].
	e cell colspan: 4; addRulerSize: 1. e newRow.
	^self style pageFrameWith: e title: self title .