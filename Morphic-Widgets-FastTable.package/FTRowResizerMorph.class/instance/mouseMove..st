event handling
mouseMove: anEvent 
	self canResizeRows  ifFalse: [^ self].
	anEvent hand temporaryCursor ifNil: [^ self].
	traceMorph ifNil: [
		traceMorph := Morph newBounds: (self bounds withWidth: container width ).
		traceMorph color: Smalltalk ui theme fastTableColumnResizingColor.
		"traceMorph borderWidth: 0."
		container addMorph: traceMorph].
	traceMorph position: (traceMorph position x) @ (anEvent cursorPoint y - lastMouse second y).
