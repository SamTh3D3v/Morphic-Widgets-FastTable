accessing
content: aString
|oldValue newValue|
	oldValue :=((self table dataSource elements at: self cellPosition  second) perform:  self cellPosition first property).
	content := aString.
	newValue := aString.
	newValue = oldValue ifFalse:  [ self table doAnnounce:((FTCellContentChanged  from: oldValue  to: newValue)
				fastTable: self table;
				yourself).  ].
	self rubTextField ifNotNil:[rubTextField setTextWith: aString].
	self updateDataSource.