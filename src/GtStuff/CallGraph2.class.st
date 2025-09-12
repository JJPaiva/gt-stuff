Class {
	#name : #CallGraph2,
	#superclass : #Object,
	#category : #GtStuff
}

{ #category : #accessing }
CallGraph2 class >> fromFile: fileName [
	^ self new from: fileName asFileReference contents
]

{ #category : #accessing }
CallGraph2 >> from: aString [
	| calls |
	calls := Character cr split: aString.
	
	^ calls
]
