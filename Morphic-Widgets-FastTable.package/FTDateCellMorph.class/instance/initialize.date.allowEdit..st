initialization
initialize: aTable date: aDate allowEdit: aBoolean

	super initialize.
	self table: aTable.
	self allowEdit: aBoolean.
	self date: aDate.
	self addMorphBack: aDate asStringMorph.