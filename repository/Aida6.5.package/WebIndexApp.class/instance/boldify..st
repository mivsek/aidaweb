private
boldify: aString
	| bolded |
	bolded := aString.
	(self observee wordsInText: self searchString) keys do: [:word |
		bolded := self boldify: bolded withWord: word].
	^bolded

"WebIndexApp new 
	observee: WebIndex new;
	searchString: 'aida valid this'; 
	boldify: 'This is Aidalized world, validated' "