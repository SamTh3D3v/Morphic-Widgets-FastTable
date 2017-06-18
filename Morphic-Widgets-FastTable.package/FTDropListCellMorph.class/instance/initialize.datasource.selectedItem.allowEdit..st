initialization
initialize:aTable datasource: aList selectedItem:anObject allowEdit: aBoolean
"All editing is in reality allow change selection"

super initialize.
	self table: aTable.
	self allowEdit: aBoolean.
	self itemSource: aList.
	self selectedItem: anObject. "We need to make sure that the object is part of the list"
	
   "self selectedIndex: 1."
	self setupDropList.
	self addMorphBack:dropList.