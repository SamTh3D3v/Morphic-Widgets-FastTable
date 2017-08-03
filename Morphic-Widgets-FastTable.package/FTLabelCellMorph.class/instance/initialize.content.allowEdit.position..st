initialization
initialize:aTable content: aString allowEdit: aBoolean  position: aPosition 

	super initialize.
	self table: aTable.
	self allowEdit: aBoolean.
	self cellPosition: aPosition.
	self content: aString.
	self addMorphBack: content asStringMorph.