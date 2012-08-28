access control
removeAllAccessRightsFor: aWebUserOrGroup 
	self accessByObject keys do: [:object |
		self 
			removeAllAccessRightsFor: aWebUserOrGroup 
			on: object]