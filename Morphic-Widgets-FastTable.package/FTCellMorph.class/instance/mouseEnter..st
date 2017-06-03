event handling
mouseEnter: evt
	self color: (
		columnSelectionColor isTransparent 
			ifTrue: [ self mouseOverColor ]
			ifFalse: [ self mouseOverColor mixed: 0.5 with: columnSelectionColor ]
	)