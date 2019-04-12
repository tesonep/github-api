Class {
	#name : #GHAbstractRequest,
	#superclass : #Object,
	#category : #'GithubAPI-Core'
}

{ #category : #request }
GHAbstractRequest >> baseUrl [

	^ 'https://api.github.com' asZnUrl 
]

{ #category : #request }
GHAbstractRequest >> requestTo: aZnClient [ 
	
	self subclassResponsibility 
]

{ #category : #requests }
GHAbstractRequest >> url [

	self subclassResponsibility
]
