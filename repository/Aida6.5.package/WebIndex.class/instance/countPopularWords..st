popular words
countPopularWords: anArray
	anArray do: [:word |
		(self popularWords includesKey: word) ifFalse: [self openPopularWord: word].
		(self popularWords at: word) incCounter].