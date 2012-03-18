<?php
/* Trips Test cases generated on: 2011-09-17 15:59:21 : 1316267961*/
App::import('Controller', 'Trips');

class TestTripsController extends TripsController {
	var $autoRender = false;

	function redirect($url, $status = null, $exit = true) {
		$this->redirectUrl = $url;
	}
}

class TripsControllerTestCase extends CakeTestCase {
	var $fixtures = array('app.trip', 'app.bus', 'app.route', 'app.station', 'app.bus_stop', 'app.city', 'app.branch', 'app.cities_route', 'app.bus_stops_route', 'app.routes_station', 'app.driver', 'app.employee', 'app.assistant');

	function startTest() {
		$this->Trips =& new TestTripsController();
		$this->Trips->constructClasses();
	}

	function endTest() {
		unset($this->Trips);
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
