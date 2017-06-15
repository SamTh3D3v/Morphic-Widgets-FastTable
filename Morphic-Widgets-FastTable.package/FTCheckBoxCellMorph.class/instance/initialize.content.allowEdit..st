initialization
initialize:aTable content: aBooleanContent allowEdit: aBoolean

super initialize.
	self table: aTable.
	self content: aBooleanContent.
	self allowEdit: aBoolean.
	self setupCheckBox.
	self addMorphBack:checkbox.