accessing
script: aString
	"add to others if already exists, separate with JavaScript separator ; "
	script isNil ifTrue: [script := ''].
	(script notEmpty and: [script last ~= $; ]) ifTrue: [script := script, '; '].
	script := script, aString trimBlanks.