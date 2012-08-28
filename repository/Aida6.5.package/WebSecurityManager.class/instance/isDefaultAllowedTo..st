private
isDefaultAllowedTo: anAccessSymbol 
	"default access right for all objects and all users"
	^self defaultAccessRights includes: anAccessSymbol