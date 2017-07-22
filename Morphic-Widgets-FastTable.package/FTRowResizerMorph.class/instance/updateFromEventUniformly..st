event handling
updateFromEventUniformly: anEvent 
	"Update the splitter and attached morph positions from
	the mouse event.
      and keep all the rows at the same heigh"
	| delta |
		self inform: ' unif'.
	delta := (anEvent cursorPoint - lastMouse first) y.
	"if positive, delta cannot be bigger than right width (plus a variation) 
	 to prevent column overlap."
	(delta > 0 and: [ delta > (container owner rowHeight - (self height ) - 5) ])
		ifTrue: [ delta := container owner rowHeight - (self height) - 5 ].
	"if negative, -delta cannot be bigger than left width (plus a variation) 
	 to prevent column overlap."
	(delta < 0 and: [ delta negated > (container owner rowHeight  - (self height) - 5) ])
		ifTrue: [ delta := (container owner rowHeight - (self height) - 5) negated ].

	container owner rowHeight:  (container owner rowHeight ifNil: [ container owner rowHeight ]) + delta.
	container changed.