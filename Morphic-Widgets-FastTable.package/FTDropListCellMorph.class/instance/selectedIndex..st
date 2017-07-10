accessing
selectedIndex: anIndex
"   allowEdit ifFalse: [^self]."
	selectedIndex := anIndex.
	self changed: #selectedIndex