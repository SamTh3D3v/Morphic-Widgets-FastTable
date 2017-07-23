event handling
updateFromEventUniformly: anEvent 

	| delta |
	delta := (anEvent cursorPoint - lastMouse first) y.
	"when the delta is nagative we need to make sure to not collaps rows"
	(delta < 0 and: [ delta negated > (container owner rowHeight  - (self height) - 5) ])
		ifTrue: [ delta := (container owner rowHeight - (self height) - 5) negated ].

	container owner rowHeight:  (container owner rowHeight ifNil: [ container owner rowHeight ]) + delta.
	container changed.