<?php
/* Drivers Test cases generated on: 2011-09-17 15:59:20 : 1316267960*/
App::import('Controller', 'Drivers');

class TestDriversController extends DriversController {
	var $autoRender = false;

	function redirect($url, $status = null, $exit = true) {
		$this->redirectUrl = $url;
	}
}

class DriversControllerTestCase extends CakeTestCase {
	var $fixtures = array('app.driver', 'app.employee', 'app.assistant', 'app.trip', 'app.bus', 'app.route', 'app.station', 'app.bus_stop', 'app.city', 'app.branch', 'app.cities_route', 'app.bus_stops_route', 'app.routes_station');

	function startTest() {
		$this->Drivers =& new TestDriversController();
		$this->Drivers->constructClasses();
	}

	function endTest() {
		unset($this->Drivers);
		ClassRegistry::flush();
	}

	function testIndex() {

	}

	function testView() {

	}

	function testAdd() {

	}

	function testEdit() {

	}

	function testDelete() {

	}

}
