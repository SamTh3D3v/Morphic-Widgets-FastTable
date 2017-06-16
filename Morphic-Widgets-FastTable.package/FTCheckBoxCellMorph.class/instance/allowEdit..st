accesing
allowEdit: aBool
	allowEdit := aBool.
	checkbox notNil ifTrue:[ self checkbox enabled: aBool]
	