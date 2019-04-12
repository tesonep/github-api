accessing
contents

	^ { 'state' -> state. 
		 'target_url' -> statusURL.  
		 'description' -> description.
		 'context' -> context	} asDictionary 