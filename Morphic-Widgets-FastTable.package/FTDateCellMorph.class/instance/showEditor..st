operations
showEditor:index
|cal|
	self allowEdit ifFalse: [ ^self ].
	cal :=  (CalendarMorph on: Date today).
	self cellIndex: index.
	cal position: (self bounds topLeft +  (10@10) ) . "#todo: update the 10@10 point with an apropriete coordinate"
	self calendar: cal.
	cal takeKeyboardFocus.
	cal openInWorld.
	cal onChoiceSend: #updateDate to: self.
	