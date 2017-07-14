initialization
initialize: aTable content: aBooleanContent allowEdit: aBoolean

	super initialize.
	self table: aTable.
	self content: aBooleanContent.
	self setupCheckBox.
	self allowEdit: aBoolean.
	self addMorphBack:checkbox.