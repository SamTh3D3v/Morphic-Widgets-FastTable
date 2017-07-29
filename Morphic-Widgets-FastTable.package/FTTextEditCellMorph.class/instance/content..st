accessing
content: aString
|oldValue|
"self table selectedCellsIndex asString,"
			self inform: self content  asString .
	content := aString.

"	oldValue :=	(self table dataSource elements at: self cellIndex first) instVarAt: self cellIndex  second put: self calendar date"

"	self doAnnounce:((FTCellContentChanged  from: self content  to: aString)
				fastTable: self table;
				yourself)."

	