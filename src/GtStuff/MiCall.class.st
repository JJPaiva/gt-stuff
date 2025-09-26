Class {
	#name : #MiCall,
	#superclass : #Object,
	#instVars : [
		'content',
		'callee',
		'parts',
		'callType',
		'returnType',
		'callerWithLine'
	],
	#category : #GtStuff
}

{ #category : #accessing }
MiCall class >> fromLine: aLine [
    ^ self new from: aLine
]

{ #category : #accessing }
MiCall >> callType [
    ^ callType
]

{ #category : #'as yet unclassified' }
MiCall >> callee [
	^ callee
]

{ #category : #'as yet unclassified' }
MiCall >> callee: anObject [
	callee := anObject
]

{ #category : #'as yet unclassified' }
MiCall >> callerWithLine [
	^ callerWithLine
]

{ #category : #accessing }
MiCall >> content [
	^ content
]

{ #category : #'as yet unclassified' }
MiCall >> content: anObject [
	content := anObject
]

{ #category : #accessing }
MiCall >> from: aLine [
	content := aLine.
	callee := (content findTokens: '|') at: 1.
	callType := (content findTokens: '|') at: 2.
	returnType := (content findTokens: '|') at: 3.
	callerWithLine := (content findTokens: '|') at: 4.
    ^ self
]

{ #category : #accessing }
MiCall >> returnType [
	^ returnType
]
