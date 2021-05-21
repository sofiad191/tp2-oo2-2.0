Class {
	#name : #QRTopics,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #retrieving }
QRTopics >> retrieveQuestions: aUser [
	^ self
		retrieve: (aUser questionsFromTopics )
		for: aUser
]
