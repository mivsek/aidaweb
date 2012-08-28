odb specific
replicationSpec

	^super replicationSpec, 
		#(  	(index forwarder)
			(indexedObjects forwarder) 
			(popularWords forwarder)  	)