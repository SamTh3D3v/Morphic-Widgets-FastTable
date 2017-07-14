event handling
keyStroke: event 
	
	(self navigationKey: event) ifTrue: [^self].
	event keyCharacter = Character escape 
 ifTrue: [ self delete] 