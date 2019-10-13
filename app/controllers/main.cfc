component {
	public component function init() {
		return this;
	}


	public void function default() {
		writeOutput("API docs can be found at /api. Otherwise, you could expect normal application functionality to exist here.");
		abort;
	}
}
