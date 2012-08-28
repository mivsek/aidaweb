actions
actionAdd
	self newPassword trimBlanks isEmpty ifTrue: [self showError: 'Password is empty!'].
	self observee username trimBlanks isEmpty ifTrue: [self showError: 'Username is empty!'].
	self newPassword = self newPasswordConfirmation ifFalse: [	self showError: 'Passwords do not match!'].
	self inError ifTrue: [^self redirectToView: #add].
	self observee passwordText: self newPassword.
	self site securityManager addRegisteredUser: self observee.
	self observee changeToPreferredUrl.
	self redirectTo: self observee