*Aida-Daily collections
allDailyCollectionYearsForKindOf: aClass
	"all years on which occur of anything of that class. Sorted!"
	"optimize that!"
	^(self inject: Set new into: [:set :each | set addAll: (each allYearsForKindOf: aClass). set])
		asSortedCollection

"DailyCollection allInstances allDailyCollectionYearsForKindOf: AIDA.Invoice"