initialization
initialize:aTable content: aBooleanContent allowEdit: aBoolean

	super initialize.
	self table: aTable.
	self allowEdit: aBoolean.
	self content: aBooleanContent.
	self setupCheckBox.
	self addMorphBack:checkbox.