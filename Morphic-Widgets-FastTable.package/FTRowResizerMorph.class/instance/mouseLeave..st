event handling
mouseLeave: anEvent
	self canResizeRows ifFalse: [^ self].
	super mouseLeave: anEvent