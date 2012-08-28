odb specific
replicationSpec
	"Gemstone"
	^super replicationSpec , 
		#( 	(id 	replicate)
			(name replicate)
			(description replicate)
			(addresses max 4)
			(roles max 2)
			(relatedPartyRoles max 2)
			(events forwarder)
			(relatedObjects max 1) )