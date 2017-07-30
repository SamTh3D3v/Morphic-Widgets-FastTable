initialization
initialize: aTable date: aDate allowEdit: aBoolean  position: aPosition 

	super initialize.
	self table: aTable.
      self cellPosition: aPosition.
	self allowEdit: aBoolean.
	self date: aDate.
	self addMorphBack: aDate asStringMorph.