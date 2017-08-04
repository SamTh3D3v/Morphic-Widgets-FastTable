initialization
initialize:aTable datasource: aList selectedItem:anObject allowEdit: aBoolean  position: aPosition 
"All editing is in reality allow change selection"

super initialize.
	self table: aTable.
	self itemSource: aList.
	self cellPosition: aPosition.
	self selectedItem: anObject. "We need to make sure that the object is part of the list"
	self setupDropList.
	self allowEdit: aBoolean.
	self addMorphBack:dropList.