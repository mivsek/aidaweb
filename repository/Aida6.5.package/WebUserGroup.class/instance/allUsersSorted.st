accessing
allUsersSorted
	"..by name and surname"
	^self allUsers asSortedCollection: [:a :b | a nameSurname < b nameSurname]