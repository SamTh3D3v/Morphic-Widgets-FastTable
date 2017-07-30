initialization
initialize: aTable content: aBooleanContent allowEdit: aBoolean  position: aPosition 

	super initialize.
	self table: aTable.
	self cellPosition: aPosition.
	self content: aBooleanContent.
	self setupCheckBox.
	self allowEdit: aBoolean.
	self addMorphBack:checkbox.