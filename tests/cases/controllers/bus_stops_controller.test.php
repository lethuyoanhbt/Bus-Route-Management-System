<?php
/* BusStops Test cases generated on: 2011-09-17 15:59:20 : 1316267960*/
App::import('Controller', 'BusStops');

class TestBusStopsController extends BusStopsController {
	var $autoRender = false;

	function redirect($url, $status = null, $exit = true) {
		$this->redirectUrl = $url;
	}
}

class BusStopsControllerTestCase extends CakeTestCase {
	var $fixtures = array('app.bus_stop', 'app.city', 'app.branch', 'app.route', 'app.station', 'app.bus', 'app.trip', 'app.driver', 'app.employee', 'app.assistant', 'app.bus_stops_route', 'app.cities_route', 'app.routes_station');

	function startTest() {
		$this->BusStops =& new TestBusStopsController();
		$this->BusStops->constructClasses();
	}

	function endTest() {
		unset($this->BusStops);
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
