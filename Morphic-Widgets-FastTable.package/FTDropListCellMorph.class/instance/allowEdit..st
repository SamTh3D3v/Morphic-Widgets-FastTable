accessing
allowEdit: aBool
	allowEdit := aBool.
	dropList notNil ifTrue:[ self dropList enabled: aBool]