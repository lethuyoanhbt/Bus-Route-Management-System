<?php
/* Routes Test cases generated on: 2011-09-17 15:59:20 : 1316267960*/
App::import('Controller', 'Routes');

class TestRoutesController extends RoutesController {
	var $autoRender = false;

	function redirect($url, $status = null, $exit = true) {
		$this->redirectUrl = $url;
	}
}

class RoutesControllerTestCase extends CakeTestCase {
	var $fixtures = array('app.route', 'app.station', 'app.bus', 'app.trip', 'app.driver', 'app.employee', 'app.assistant', 'app.bus_stop', 'app.city', 'app.branch', 'app.cities_route', 'app.bus_stops_route', 'app.routes_station');

	function startTest() {
		$this->Routes =& new TestRoutesController();
		$this->Routes->constructClasses();
	}

	function endTest() {
		unset($this->Routes);
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
