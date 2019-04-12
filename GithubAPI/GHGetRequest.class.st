Class {
	#name : #GHGetRequest,
	#superclass : #GHAbstractRequest,
	#category : #'GithubAPI-Core'
}

{ #category : #'instance-creation' }
GHGetRequest class >> url: aString [ 
	
	^ GHGenericGetRequest new
		url: aString;
		yourself
]

{ #category : #request }
GHGetRequest >> queryArguments [
	
	^ Dictionary new
]

{ #category : #requests }
GHGetRequest >> requestTo: aZnClient [ 
	
	self setQueryArgumentsToClient: aZnClient.
	aZnClient get
]

{ #category : #requests }
GHGetRequest >> setQueryArgumentsToClient: aZnClient [ 
	
	self queryArguments keysAndValuesDo: [ :key :value |
		aZnClient queryAt: key put: value ]
]
