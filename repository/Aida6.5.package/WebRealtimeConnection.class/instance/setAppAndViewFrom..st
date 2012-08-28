handling
setAppAndViewFrom: aRequest
	| url object |
	self view: (self pageViewFrom: aRequest).
	url := self pageUrlFrom: aRequest.
	url notNil ifTrue:
		[object := self session site urlResolver objectOnUrl: url.
		self app: (self session webAppFor: object)]