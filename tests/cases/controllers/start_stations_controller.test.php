<?php
/* StartStations Test cases generated on: 2011-09-13 20:21:46 : 1315938106*/
App::import('Controller', 'StartStations');

class TestStartStationsController extends StartStationsController {
	var $autoRender = false;

	function redirect($url, $status = null, $exit = true) {
		$this->redirectUrl = $url;
	}
}

class StartStationsControllerTestCase extends CakeTestCase {
	var $fixtures = array('app.start_station', 'app.route', 'app.end_station', 'app.station', 'app.bus', 'app.trip', 'app.intermediate_station', 'app.route_bus_stop', 'app.bus_stop', 'app.city', 'app.branch', 'app.route_city');

	function startTest() {
		$this->StartStations =& new TestStartStationsController();
		$this->StartStations->constructClasses();
	}

	function endTest() {
		unset($this->StartStations);
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
