layout
headerElement
	^(WebElement newId: #header)
		add: ((WebElement newId: #logo)
			addImage: '/img/aidabannerjpg.jpg'; yourself ); yourself