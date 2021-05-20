Class {
	#name : #QuestionRetriever,
	#superclass : #Object,
	#instVars : [
		'cuoora'
	],
	#category : #'TP-Refactoring-Model'
}

{ #category : #'instance creation' }
QuestionRetriever class >> new: cuoora [
	^ self new cuoora: cuoora
]

{ #category : #accesing }
QuestionRetriever >> cuoora: aCuooraInstance [
	cuoora := aCuooraInstance 
]

{ #category : #operations }
QuestionRetriever >> retrieve: aCollection for: aUser [
	^ ( ( aCollection asSortedCollection: [ :a :b | a positiveVotes size > b positiveVotes size ] ) last: (100 min: aCollection size) ) reject: [ :q | q user = aUser ]
]

{ #category : #retrieving }
QuestionRetriever >> retrieveQuestions: aUser [
^self subclassResponsibility 
]

{ #category : #operations }
QuestionRetriever >> todayQuestions [

^cuoora questions select: [ :q | q timestamp asDate = Date today ].
]
