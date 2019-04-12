Class {
	#name : #GithubRequestError,
	#superclass : #Error,
	#instVars : [
		'response'
	],
	#category : 'GithubAPI-Core'
}

{ #category : #exceptioninstantiator }
GithubRequestError class >> signal: response [

	| message |
	message := String streamContents: [ :stream |
		response statusLine printCodeAndReasonOn: stream ].

	self new
		errorResponse: response;
		messageText: message;
		signal
]

{ #category : #accessing }
GithubRequestError >> errorResponse: aZnResponse [ 
	
	response := aZnResponse
]
