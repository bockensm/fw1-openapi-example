component extends="framework.one" {
	variables.framework = {
		defaultSection: "main",
		defaultItem: "default",
		error: "main.error",
		routes: [
			{ "$GET/api/dogs": "/dogs/index" },
			{ "$POST/api/dogs": "/dogs/create" },
			{ "$GET/api/dogs/{id:[0-9]+}": "/dogs/show/id/:id" },
			{ "$DELETE/api/dogs/:id": "/dogs/destroy/id/:id" },

			{ "/api/cats": "/cats/index" },

			{ "$GET/api": "/openAPI:main/default" }
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
}
