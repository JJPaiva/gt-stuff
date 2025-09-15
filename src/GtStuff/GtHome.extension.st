Extension { #name : #GtHome }

{ #category : #'*GtStuff' }
GtHome >> gtStuffSection [
	<gtHomeSection>
	^ GtHomeStartPageSection new 
		title: 'GtStuff';
		description: 'Experimenting with GT';
		databaseName: 'JJPaiva\gt-stuff\lepiter';
		startPageName: 'GtStuff';
		priority: 8
]
