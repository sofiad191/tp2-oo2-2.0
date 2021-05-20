Class {
	#name : #QRTopics,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #retrieving }
QRTopics >> retrieveQuestions: aUser [
	
	^ self
		retrieve: (aUser topics flatCollect: [ :topico | topico questions ])
		for: aUser
]
