changing
writeChanges
	self changes do: [:key |
		self translator 
			changeTranslationKey: key 
			to: (self at: key) 
			language: self language 
			class: self translClass 
			method: self method].
	self initChanges.