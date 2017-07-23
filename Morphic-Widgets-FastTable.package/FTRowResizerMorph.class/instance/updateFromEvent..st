event handling
updateFromEvent: anEvent 
	"Update the splitter and attached morph positions from
	the mouse event.
	Take into account the mouse down offset."
	| delta |
	delta := (anEvent cursorPoint - lastMouse first) y.
	
	(delta < 0 and: [ delta negated > (topRow  height  - (self height) - 5) ])
		ifTrue: [ delta := (topRow height - (self height) - 5) negated ].

	topRow  height:  (topRow height ifNil: [ topRow height ]) + delta.
	bottomRow  height: (bottomRow  height ifNil: [ bottomRow height ]) - delta.	
	container changed.