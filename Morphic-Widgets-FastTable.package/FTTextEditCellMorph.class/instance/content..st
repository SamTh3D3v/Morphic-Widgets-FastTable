accessing
content: aString
|oldValue newValue|
	cellPosition ifNotNil: [oldValue :=((self table dataSource elements at: self cellPosition  second) perform:  self cellPosition first property).] ifNil: [ oldValue :=nil ].
	content := aString.
	newValue := aString.
	self rubTextField ifNotNil:[rubTextField setTextWith: content].
	self updateDataSource.
	newValue = oldValue ifFalse:  [ self table doAnnounce:((FTCellContentChanged  from: oldValue  to: newValue)
				fastTable: self table;
				yourself).].