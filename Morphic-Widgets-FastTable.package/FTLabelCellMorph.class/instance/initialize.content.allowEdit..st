initialization
initialize:aTable content: aString allowEdit: aBoolean

	super initialize.
	self table: aTable.
	self allowEdit: aBoolean.
	self content: aString.
	self addMorphBack: content asStringMorph.