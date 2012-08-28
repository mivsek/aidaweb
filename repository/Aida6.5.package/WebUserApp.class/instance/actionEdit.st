actions
actionEdit
	self newPassword = self newPasswordConfirmation ifFalse: [
		self showError: 'Passwords do not match!'].
	self inError ifTrue: [^self redirectToView: #edit].
	self observee passwordText: self newPassword.
	self redirectTo: self observee