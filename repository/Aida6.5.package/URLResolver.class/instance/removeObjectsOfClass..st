adding-removing
removeObjectsOfClass: aClass
	"fast removal even if dictionaries are really big"
	| toRemove newWebPages newURLLinks newCounters |
	toRemove := (self objectsOfClass: aClass) asSet.
	newWebPages := Dictionary aidaWithAll:
		(self allWebPages associations reject: [:assoc | toRemove includes: assoc key]).
	newURLLinks := Dictionary aidaWithAll:
		(self allUrlLinks associations reject: [:assoc | toRemove includes: assoc value]).
	newCounters := Dictionary aidaWithAll:
		(self counters associations reject: [:assoc | toRemove includes: assoc key]).
	self site critical:
		[allWebPages := newWebPages.
		allURLLinks := newURLLinks.
		counters := newCounters]


"URLResolver default removeObjectsOfClass: WebUser"
"URLResolver default allWebPages size  38 45"