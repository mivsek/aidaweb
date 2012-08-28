private
removeOldVersions
	"remove all versions of this document, which are older than current version"
	| vobjects |
	vobjects := self currentVersion olderVersions.
	vobjects do: [:each | 
		each version parent: nil; next: nil.
		each version: nil]