accesing
content: aBool
	|oldValue newValue|
	cellPosition ifNotNil: [oldValue :=((self table dataSource elements at: self cellPosition  second) perform:  self cellPosition first property).] ifNil: [ oldValue :=nil ].
	content := aBool.
	newValue := aBool.
	newValue = oldValue ifFalse:  [self table doAnnounce:((FTCellContentChanged  from: oldValue  to: newValue)
				fastTable: self table;
				yourself).  ].
     self 	updateDataSource	.