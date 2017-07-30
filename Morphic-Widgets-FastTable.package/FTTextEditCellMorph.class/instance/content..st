accessing
content: aString
|oldValue newValue|
"self table selectedCellsIndex asString,"
	oldValue :=((self table dataSource elements at: self cellPosition  second) perform:  self cellPosition first property).
	content := aString.
	newValue := aString.
	newValue = oldValue ifFalse:  [ self doAnnounce:((FTCellContentChanged  from: oldValue  to: newValue)
				fastTable: self table;
				yourself).  ].
