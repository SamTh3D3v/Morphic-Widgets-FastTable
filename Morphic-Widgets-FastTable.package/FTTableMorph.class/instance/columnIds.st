as yet unclassified
columnIds
	"Answer a Collection containing all the table's columns  ids."
	| out |
	out := (Array new: self columns size) writeStream.
	self columns do: [:column | out nextPut: column id].
	^ out contents