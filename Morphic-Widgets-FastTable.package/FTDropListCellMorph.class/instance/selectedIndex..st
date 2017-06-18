accessing
selectedIndex: anIndex
"   allowEdit ifFalse: [^self]."
	index := anIndex.
	self changed: #selectedIndex