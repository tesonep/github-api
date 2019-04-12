Class {
	#name : #GHGetRepositoryIssues,
	#superclass : #GHGetRequest,
	#instVars : [
		'repositoryName',
		'ownerName'
	],
	#category : 'GithubAPI-Requests'
}

{ #category : #accessing }
GHGetRepositoryIssues >> ownerName: aString [ 
	ownerName := aString
]

{ #category : #request }
GHGetRepositoryIssues >> queryArguments [
	
	^ #()
]

{ #category : #accessing }
GHGetRepositoryIssues >> repositoryName: aString [ 
	repositoryName := aString
]

{ #category : #requests }
GHGetRepositoryIssues >> url [
	
	^ self baseUrl / ('/repos/{owner}/{repo}/issues' format: { 
		'owner' -> ownerName.
		'repo'  -> repositoryName } asDictionary)
]
