<?php
/* Route Test cases generated on: 2011-09-13 20:18:47 : 1315937927*/
App::import('Model', 'Route');

class RouteTestCase extends CakeTestCase {
	var $fixtures = array('app.route', 'app.end_station', 'app.station', 'app.start_station', 'app.bus', 'app.trip', 'app.intermediate_station', 'app.route_bus_stop', 'app.bus_stop', 'app.city', 'app.branch', 'app.route_city');

	function startTest() {
		$this->Route =& ClassRegistry::init('Route');
	}

	function endTest() {
		unset($this->Route);
		ClassRegistry::flush();
	}

}
