component accessors="true" {
	property Framework;

	public component function init() {
		return this;
	}


	/**
	 * Displays a list of good bois
	 * @param-name { "type": "string", "required" : "false", "in" : "query", "hint": "Filters the list to match dogs with a specific name" }
	 * @param-breed { "type": "string", "required" : "false", "in" : "query", "hint": "Filters the list to match dogs with a specific breed" }
	 * @param-sex { "type": "string", "required" : "false", "in" : "query", "hint": "Filters the list to match dogs of a certain sex" }
	 * @responses /components/responses/dogs.list.response.json
	 * @tags [ "dogs" ]
	 */
	public function index() {
		var dogs = [
			{
				"name": "Fido",
				"breed": "Mutt",
				"sex": "M"
			},
			{
				"name": "Rover",
				"breed": "Black Labrador",
				"sex": "M"
			},
			{
				"name": "Molly",
				"breed": "Chihuahua",
				"sex": "F"
			}
		];

		return variables.framework.renderData()
			.type("json")
			.data(dogs)
			.statusCode(200);
	}


	/**
	 * Adds a good boi to the data store
	 * @x-parameters /components/requests/dogs.add.parameters.json
	 * @responses /components/responses/dogs.add.responses.json
	 * @tags [ "dogs" ]
	 */
	public function create(required struct rc) {
		param rc.name = "";
		param rc.breed = "test";

		return variables.framework.renderData()
			.type("json")
			.data({
				"name": rc.name,
				"breed": rc.breed
			})
			.statusCode(201);
	}



	/**
	 * Retrieves information about a good boi
	 * @param-id { "type": "numeric", "required" : "true", "in" : "path", "hint": "Tag ID for the dog" }
	 * @tags [ "dogs" ]
	 */
	public function show() {
	}


	/**
	 * Updates a good boi in the data store
	 * @response-200 { "description" : "Dog updated in the data store" }
	 * @tags [ "dogs" ]
	 */
	public function update() {
	}


	/**
	 * :(
	 * @param-id { "type": "numeric", "required" : "true", "in" : "path", "hint": "Tag ID for the dog" }
	 * @response-204 { "description" : "Dog removed from the data store" }
	 * @tags [ "dogs" ]
	 */
	public function destroy() {
	}
}
