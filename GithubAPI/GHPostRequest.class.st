Class {
	#name : #GHPostRequest,
	#superclass : #GHAbstractRequest,
	#category : #'GithubAPI-Core'
}

{ #category : #request }
GHPostRequest >> contents [

	"Returns the object to be transformed in JSON"
	^ self subclassResponsibility 
]

{ #category : #request }
GHPostRequest >> requestTo: aZnClient [ 
	
	aZnClient 
		contents: (STONJSON toString: self contents);
		contentType: 'application/json;charset=utf-8';
		post 
]
