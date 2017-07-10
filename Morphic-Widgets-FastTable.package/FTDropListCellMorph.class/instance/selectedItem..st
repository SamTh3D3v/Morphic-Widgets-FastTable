accessing
selectedItem: anItem
	"selectedItem := anItem a check whether the item is in the itemSource or not is needde"
   selectedIndex := itemSource indexOf: anItem ifAbsent: [0].
	(selectedIndex > 0) ifTrue:[
		self selectedIndex:selectedIndex.
		selectedItem := anItem.]
	ifFalse:[selectedItem := nil]
   

