Class {
	#name : #QRSocial,
	#superclass : #QuestionRetriever,
	#category : #'TP-Refactoring-Model'
}

{ #category : #retrieving }
QRSocial >> retrieveQuestions: aUser [
	^ self
		retrieve: (aUser questionsFromUsers )
		for: aUser
]
