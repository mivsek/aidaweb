*Aida
raiseResponse: aHTTPResponse
	"Raise an exception to immediatelly return that response."
	"put that on Swazoo next version!!!"
	^self new 
		response: aHTTPResponse;
		signal.