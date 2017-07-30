accessing
selectedItem: anItem
|oldValue newValue|
	"selectedItem := anItem a check whether the item is in the itemSource or not is needde"
   selectedIndex := itemSource indexOf: anItem ifAbsent: [0].
	(selectedIndex > 0) ifTrue:[
		self selectedIndex:selectedIndex.
		oldValue :=((self table dataSource elements at: self cellPosition  second) perform:  self cellPosition first property).
		selectedItem := anItem.
	      newValue := anItem.
	      newValue = oldValue ifFalse:  [ self doAnnounce:((FTCellContentChanged  from: oldValue  to: newValue)
				fastTable: self table;
				yourself).  ].

		
		
		]
	ifFalse:[selectedItem := nil]
   

