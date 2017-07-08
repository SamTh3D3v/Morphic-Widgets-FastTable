operations
showEditor
	|cal|
	cal :=  (CalendarMorph on: Date today).
"	cal extent: 200 @ 160."
	cal position: (self bounds topLeft +  (10@10) ) . "#todo: update the 10@10 point with an apropriete coordinate"
	self calendar: cal.
	cal openInWorld  