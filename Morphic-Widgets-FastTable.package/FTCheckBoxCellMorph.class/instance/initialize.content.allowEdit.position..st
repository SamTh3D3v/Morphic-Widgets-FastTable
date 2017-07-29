initialization
initialize: aTable content: aBooleanContent allowEdit: aBoolean  position: aPosition 

	super initialize.
	self table: aTable.
	self content: aBooleanContent.
	self setupCheckBox.
	self allowEdit: aBoolean.
	self cellPosition: aPosition.
	self addMorphBack:checkbox.