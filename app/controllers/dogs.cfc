component accessors="true" {
	property Framework;

	public component function init() {
		return this;
	}


	/**
	 * Displays a list of good bois
	 * @param-breed { "type": "string", "required" : "false", "in" : "query", "hint": "Filters the list to match dogs with a specific breed" }
	 * @param-sex { "type": "string", "required" : "false", "in" : "query", "hint": "Filters the list to match dogs of a certain sex" }
	 * @param-name { "type": "string", "required" : "false", "in" : "query", "hint": "Filters the list to match dogs with a specific name" }
	 * @tags [ "dogs" ]
	 */
	public void function index() {
	}


	/**
	 * Adds a good boi to the data store
	 * @tags [ "dogs" ]
	 */
	public void function create() {
	}



	/**
	 * Retrieves information about a good boi
	 * @param-id { "type": "numeric", "required" : "true", "in" : "path", "hint": "Tag ID for the dog" }
	 * @tags [ "dogs" ]
	 */
	public function show() {
	}


	/**
	 * :(
	 * @param-id { "type": "numeric", "required" : "true", "in" : "path", "hint": "Tag ID for the dog" }
	 * @tags [ "dogs" ]
	 */
	public void function destroy() {
	}
}
