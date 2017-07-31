accessing
selectedIndex: anIndex
"   allowEdit ifFalse: [^self]."
	selectedIndex := anIndex.
	self changed: #selectedIndex. 
	self selectedItem: (self itemSource at:anIndex). "more verification is required here"
