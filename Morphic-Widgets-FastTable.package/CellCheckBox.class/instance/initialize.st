initialization
initialize
	"Initialize the receiver."

	super initialize.
	
	self
		borderWidth: 0; "space for focus"
		borderColor: Color transparent;
		enabled: true;
		changeTableLayout;
	
		wrapCentering: #center;
		listCentering: #center;
		cellInset: -4;			"todo: a much elegant solution"
		labelMorph: self newLabelMorph;
           buttonMorph: self newButtonMorph;
		on: #click send: #updateButton: to: self;
		on: #mouseMove send: #updateButton: to: self;
		on: #mouseUp send: #updateButton: to: self