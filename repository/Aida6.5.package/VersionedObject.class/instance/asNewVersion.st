copying
asNewVersion
	"return a new version of that object with all its current contents"
	| new |
	new := self class new.
	new version: (VersionSpec newFromParent: self for: new).
	self copyContentsTo: new.
	^new