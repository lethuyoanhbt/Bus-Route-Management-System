<?php
/* Buses Test cases generated on: 2011-09-17 15:59:20 : 1316267960*/
App::import('Controller', 'Buses');

class TestBusesController extends BusesController {
	var $autoRender = false;

	function redirect($url, $status = null, $exit = true) {
		$this->redirectUrl = $url;
	}
}

class BusesControllerTestCase extends CakeTestCase {
	var $fixtures = array('app.bus', 'app.route', 'app.station', 'app.bus_stop', 'app.city', 'app.branch', 'app.cities_route', 'app.bus_stops_route', 'app.routes_station', 'app.trip', 'app.driver', 'app.employee', 'app.assistant');

	function startTest() {
		$this->Buses =& new TestBusesController();
		$this->Buses->constructClasses();
	}

	function endTest() {
		unset($this->Buses);
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
