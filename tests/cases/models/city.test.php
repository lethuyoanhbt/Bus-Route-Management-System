<?php
/* City Test cases generated on: 2011-09-13 20:17:30 : 1315937850*/
App::import('Model', 'City');

class CityTestCase extends CakeTestCase {
	var $fixtures = array('app.city', 'app.branch', 'app.bus_stop', 'app.route', 'app.route_bus_stop', 'app.route_city');

	function startTest() {
		$this->City =& ClassRegistry::init('City');
	}

	function endTest() {
		unset($this->City);
		ClassRegistry::flush();
	}

}
