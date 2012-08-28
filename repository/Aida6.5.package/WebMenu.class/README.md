WebMenu is a dropdown menu, which can select single or multiple options. Options are read from a collection, selected options are put in selected. You can set aspect of each option if options are not plain text. 

Example:

	WebMenu aspect: #name collection: self persons selected: self selectedPersons

will show dropdown menu of all persons, shown by name. Selected person will be stored in selectedPersons collection. Above menu is  single selection, it can be multiple selection too if you do:

	aWebMenu setMultiple.