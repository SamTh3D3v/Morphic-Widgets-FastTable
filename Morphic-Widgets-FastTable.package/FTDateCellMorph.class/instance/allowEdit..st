accessing
allowEdit: aBool
	allowEdit := aBool.
	calendar notNil ifTrue:[ self checkbox enabled: aBool]
	