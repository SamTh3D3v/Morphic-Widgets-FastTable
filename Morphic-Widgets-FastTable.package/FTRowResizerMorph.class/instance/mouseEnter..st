event handling
mouseEnter: anEvent
	self canResizeRows  ifFalse: [^ self].
	(owner notNil and: [owner bounds containsPoint: anEvent position]) 
		ifTrue: [super mouseEnter: anEvent]