<?php
/* StartStation Test cases generated on: 2011-09-13 20:21:45 : 1315938105*/
App::import('Model', 'StartStation');

class StartStationTestCase extends CakeTestCase {
	var $fixtures = array('app.start_station', 'app.route', 'app.end_station', 'app.station', 'app.bus', 'app.trip', 'app.intermediate_station', 'app.route_bus_stop', 'app.bus_stop', 'app.city', 'app.branch', 'app.route_city');

	function startTest() {
		$this->StartStation =& ClassRegistry::init('StartStation');
	}

	function endTest() {
		unset($this->StartStation);
		ClassRegistry::flush();
	}

}
