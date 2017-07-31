accessing
selectedItem: anItem
|oldValue newValue index|
	"selectedItem := anItem a check whether the item is in the itemSource or not is needde"
   
      selectedIndex ifNil: [ 
	index := itemSource indexOf: anItem ifAbsent: [0].
	(index > 0) ifTrue:[selectedIndex := index.] ifFalse:[^self "i should raise an exception here" ]].

      oldValue :=((self table dataSource elements at: self cellPosition  second) perform:  self cellPosition first property).
	newValue := anItem.
	selectedItem := anItem.
	newValue = oldValue ifFalse:  [ self table doAnnounce:((FTCellContentChanged  from: oldValue  to: newValue)
				fastTable: self table;
				yourself).  ].	
				
     self 	updateDataSource	.
		

   

