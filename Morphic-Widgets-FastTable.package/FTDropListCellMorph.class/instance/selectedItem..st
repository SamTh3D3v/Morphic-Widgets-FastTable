accessing
selectedItem: anItem
	"selectedItem := anItem a check whether the item is in the itemSource or not is needde"
   index:= itemSource indexOf: anItem ifAbsent: [0].
	(index > 0) ifTrue:[
		self selectedIndex:index.
		selectedItem := anItem.]
	ifFalse:[selectedItem := nil]
   

