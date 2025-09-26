Class {
	#name : #CallGraphStuff,
	#superclass : #Object,
	#instVars : [
		'calls',
		'callee',
		'content'
	],
	#category : #GtStuff
}

{ #category : #accessing }
CallGraphStuff class >> fromFile: fileName [
    ^ self new from: fileName 
]

{ #category : #accessing }
CallGraphStuff >> calls [
	^ calls
]

{ #category : #'as yet unclassified' }
CallGraphStuff >> calls: anObject [
	calls := anObject
]

{ #category : #accessing }
CallGraphStuff >> from: fileName [
	| fileLines |
    "Lee el archivo y separa el contenido en líneas"
    fileLines := (fileName asFileReference contents) lines.
    
    "Transforma cada línea en un objeto Call y lo guarda en el slot calls"
    calls := fileLines collect: [:each | MiCall fromLine: each ].
    "retorna el objeto"
    ^ self
]
