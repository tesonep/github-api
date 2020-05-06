Class {
	#name : #GHPostLabelToIssue,
	#superclass : #GHPostRequest,
	#instVars : [
		'owner',
		'repository',
		'label',
		'issue'
	],
	#category : #'GithubAPI-Requests'
}

{ #category : #request }
GHPostLabelToIssue >> contents [

	^ { 'labels' -> {label}} asDictionary
]

{ #category : #accessing }
GHPostLabelToIssue >> issue [
	^ issue
]

{ #category : #accessing }
GHPostLabelToIssue >> issue: anObject [
	issue := anObject
]

{ #category : #accessing }
GHPostLabelToIssue >> label [
	^ label
]

{ #category : #accessing }
GHPostLabelToIssue >> label: anObject [
	label := anObject
]

{ #category : #accessing }
GHPostLabelToIssue >> owner [
	^ owner
]

{ #category : #accessing }
GHPostLabelToIssue >> owner: anObject [
	owner := anObject
]

{ #category : #accessing }
GHPostLabelToIssue >> repository [
	^ repository
]

{ #category : #accessing }
GHPostLabelToIssue >> repository: anObject [
	repository := anObject
]

{ #category : #requests }
GHPostLabelToIssue >> url [

	^ self baseUrl / ('/repos/{owner}/{repo}/issues/{issue_number}/labels' format: { 
		'owner' -> owner.
		'repo'  -> repository.
		'issue_number' -> issue printString } asDictionary)
]
