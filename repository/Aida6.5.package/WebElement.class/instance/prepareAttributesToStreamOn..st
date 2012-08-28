private-streaming
prepareAttributesToStreamOn: aSession
	"override if you like to change or otherwise prepare attribute values"
	"don't forget to call first super prepareAttributesToPrintOn: ! "
	#('title') do: [:attrName || attrValue |
		attrValue := self attributesAt: attrName.
		attrValue notNil ifTrue:
			[attrValue aidaIsAssociation 
				ifTrue: "multilang value of this attribute"
					[self attributesAt: attrName put: (self textFromMultilang: attrValue on: aSession)]
				ifFalse: [		
					(attrValue includes: $^ ) "slovene csz are converted if char ^ is after such a char"
						ifTrue: [self attributesAt: attrName put: attrValue convertToSloveneChars] ]
			]
		]