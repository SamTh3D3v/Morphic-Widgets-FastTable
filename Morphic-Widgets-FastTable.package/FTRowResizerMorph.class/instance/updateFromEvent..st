event handling
updateFromEvent: anEvent 
	"Update the splitter and attached morph positions from
	the mouse event.
	Take into account the mouse down offset."
	| delta |
	self inform: 'non unif'.
	delta := (anEvent cursorPoint - lastMouse first) y.
	"if positive, delta cannot be bigger than right width (plus a variation) 
	 to prevent column overlap."
	(delta > 0 and: [ delta > (bottomRow  height  - (self height ) - 5) ])
		ifTrue: [ delta := bottomRow height - (self height) - 5 ].
	"if negative, -delta cannot be bigger than left width (plus a variation) 
	 to prevent column overlap."
	(delta < 0 and: [ delta negated > (topRow  height  - (self height) - 5) ])
		ifTrue: [ delta := (topRow height - (self height) - 5) negated ].

	topRow  height:  (topRow height ifNil: [ topRow height ]) + delta.
	bottomRow  height: (bottomRow  height ifNil: [ bottomRow height ]) - delta.	
	container changed.
		container owner rowHeight: 60.