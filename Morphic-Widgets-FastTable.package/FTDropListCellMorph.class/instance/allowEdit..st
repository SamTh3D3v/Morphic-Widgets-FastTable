accessing
allowEdit: aBool
	allowEdit := aBool.
	self dropList notNil ifTrue:[ self dropList lock: aBool not]
