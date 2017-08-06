operations
showEditor:index
|cal|
	self allowEdit ifFalse: [ ^self ].
	cal :=  (CellCalendarMorph on: (self date ifNil: [Date today] ifNotNil: [self date])).
	self cellIndex: index.
	cal position: (self bounds topLeft +  (10@10)). 
	self calendar: cal.
	cal takeKeyboardFocus.
	cal openInWorld.
	cal onChoiceSend: #updateDate to: self.
	