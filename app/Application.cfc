component extends="framework.one" {
	this.mappings["/testbox"] = expandPath("./testbox/");

	variables.framework = {
		defaultSection: "main",
		defaultItem: "default",
		error: "main.error",
		routes: [
			{ "$GET/api/dogs": "/dogs/index" },
			{ "$POST/api/dogs": "/dogs/create" },
			{ "$GET/api/dogs/{id:[0-9]+}": "/dogs/show/id/:id" },
			{ "$PATCH/api/dogs/{id:[0-9]+}": "/dogs/update/id/:id" },
			{ "$DELETE/api/dogs/:id": "/dogs/destroy/id/:id" },

			{ "/api/cats": "/cats/index" },

			{ "$RESOURCES": { resources: "fish,gerbils", pathRoot: "/api" } },

			{ "$GET/api": "/openAPI:main/default" },

			{ "*": "/main/error" }
		],
		generateSES: false,
		SESOmitIndex: false,
		reloadApplicationOnEveryRequest: true,
		subsystems: {
			openAPI: {
				diConfig: {
					loadListener: function(di1) {
						di1.declare("OpenAPIConfig").instanceOf("subsystems.openAPI.config.OpenAPIConfig")
							.withOverrides({ customConfigPath: "conf.OpenAPIConfig" }).asTransient();
					}
				}
			}
		}
	};


	function onError() {
		writeDump(arguments);
		abort;
	}
}
