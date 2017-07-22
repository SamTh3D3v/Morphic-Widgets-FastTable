event handling
mouseUp: anEvent
	"Change the cursor back to normal if necessary and change the color back to normal."
	
	self canResizeRows ifFalse: [^ self].
	(self bounds containsPoint: anEvent cursorPoint)
		ifFalse: [anEvent hand showTemporaryCursor: nil].
	self container owner allowNonUniformRowsHeights
	ifTrue: [ self updateFromEventUniformly: anEvent.]
	ifFalse:[self updateFromEvent: anEvent.].
	
	traceMorph ifNotNil: [traceMorph delete. traceMorph := nil].
	self adoptPaneColor: self paneColor.
	self triggerEvent: #mouseUp