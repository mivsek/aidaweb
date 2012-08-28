model adapting
save
	"save value of this form element (field) to the domain model. Check with #isValid if value pass 
	validation othervise exception is raised!"
	self shouldSanitize ifTrue: [self adaptor sanitize]. "remove <script> with possibly malicious code"
	^self adaptor save