import vibe.vibe;

import blogd.rest.restapi;

version(unittest) { import unit_threaded; }
else {
	void main() {
		auto router = new URLRouter;
		router.registerRestInterface(new RestApi);

		auto settings = new HTTPServerSettings;
		settings.port = 8080;
		settings.bindAddresses = ["::1", "0.0.0.0"];
		listenHTTP(settings, router);

		logInfo("REST server application running...");
		runApplication();
	}
}

@("failing")
unittest {
	assert(1==2);
}
