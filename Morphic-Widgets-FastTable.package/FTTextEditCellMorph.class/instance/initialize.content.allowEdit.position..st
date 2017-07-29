initialization
initialize:aTable content: aString allowEdit: aBoolean  position: aPosition 

	super initialize.
	self table: aTable.
	self allowEdit: aBoolean.
	self content: aString.
	self cellPosition: aPosition.
	self addMorphBack: content asStringMorph.