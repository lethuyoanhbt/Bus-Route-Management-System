<?php
/* Cities Test cases generated on: 2011-09-17 15:59:20 : 1316267960*/
App::import('Controller', 'Cities');

class TestCitiesController extends CitiesController {
	var $autoRender = false;

	function redirect($url, $status = null, $exit = true) {
		$this->redirectUrl = $url;
	}
}

class CitiesControllerTestCase extends CakeTestCase {
	var $fixtures = array('app.city', 'app.branch', 'app.bus_stop', 'app.route', 'app.station', 'app.bus', 'app.trip', 'app.driver', 'app.employee', 'app.assistant', 'app.bus_stops_route', 'app.cities_route', 'app.routes_station');

	function startTest() {
		$this->Cities =& new TestCitiesController();
		$this->Cities->constructClasses();
	}

	function endTest() {
		unset($this->Cities);
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
