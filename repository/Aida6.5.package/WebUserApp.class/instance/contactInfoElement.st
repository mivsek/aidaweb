views-elements
contactInfoElement
	| e |
	e := WebFieldSet new legend: 'Contact information'.
	e cell addText: 'Company:'.
	e newCell addTextBold: self observee company.
	e newRow.
	e cell addText: 'Address:'.
	e newCell addTextBold: self observee address.
	e newRow.
	e cell addText: 'City:'.
	e newCell addTextBold: self observee city.
	e newRow.
	e cell addText: 'Zip:'.
	e newCell addTextBold: self observee zip.
	e newRow.
	e cell addText: 'Phone:'.
	e newCell addTextBold: self observee phone.
	e newRow.
	e cell addText: 'Fax:'.
	e newCell addTextBold: self observee fax.
	e newRow.
	e cell addText: 'E-mail:'.
	e newCell addTextBold: self observee email.
	e newRow.
	e cell addText: 'Website:'.
	e newCell addTextBold: self observee website. 
	^e