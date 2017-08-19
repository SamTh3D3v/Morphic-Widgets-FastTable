accessing
content: aString
|oldValue newValue|
"self table selectedCellsIndex asString,"
	cellPosition ifNotNil: [oldValue :=((self table dataSource elements at: self cellPosition  second) perform:  self cellPosition first property).] ifNil: [ oldValue :=nil ].
	content := aString.
	newValue := aString.
	newValue = oldValue ifFalse:  [ self table doAnnounce:((FTCellContentChanged  from: oldValue  to: newValue)
				fastTable: self table;
				yourself).  ].
