accessing
allowEdit: aBool
	allowEdit := aBool.
	self rubTextField notNil ifTrue:[ self rubTextField lock: aBool not]
