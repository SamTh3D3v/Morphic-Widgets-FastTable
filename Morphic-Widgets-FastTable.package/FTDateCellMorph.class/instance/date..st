accessing
date: aDate
|oldValue newValue|
	oldValue :=((self table dataSource elements at: self cellPosition  second) perform:  self cellPosition first property).
	date := aDate.
	newValue := aDate.
	newValue = oldValue ifFalse:  [ self doAnnounce:((FTCellContentChanged  from: oldValue  to: newValue)
				fastTable: self table;
				yourself).  ].
