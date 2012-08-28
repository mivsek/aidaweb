events
blockEnterKey
	"don't allow that ENTER key press trigger unwanted form submit"
	self on: #keyPress script: 'return blockEnter(event)'