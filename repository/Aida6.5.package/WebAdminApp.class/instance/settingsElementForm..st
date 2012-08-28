views-elements
settingsElementForm: aBoolean
	| e |
	self prepareSettings.
	e := WebElement new. e table width: 500. e newRow.
	e cell addText: 'hostname: '. 
	e newCell addAspect: #host for: self observee input: aBoolean size: 30. e newRow.
	e cell addText: 'ip: '.
	e newCell addAspect: #ip for: self observee input: aBoolean size: 30. e newRow.
	e cell addText: 'port: '.
	e newCell addAspect: #port for: self observee input: aBoolean size: 5. e newRow.
	e cell addText: 'home directory: '.
	e newCell addAspect: #homeDirectory for: self site input: aBoolean size: 30. e newRow.
	e cell colspan: 2; addRulerSize: 1.
	^e.