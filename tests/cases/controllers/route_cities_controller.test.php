<?php
/* RouteCities Test cases generated on: 2011-09-17 14:08:07 : 1316261287*/
App::import('Controller', 'RouteCities');

class TestRouteCitiesController extends RouteCitiesController {
	var $autoRender = false;

	function redirect($url, $status = null, $exit = true) {
		$this->redirectUrl = $url;
	}
}

class RouteCitiesControllerTestCase extends CakeTestCase {
	var $fixtures = array('app.route_city', 'app.route', 'app.station', 'app.intermediate_station', 'app.bus', 'app.trip', 'app.driver', 'app.employee', 'app.assistant', 'app.route_bus_stop');

	function startTest() {
		$this->RouteCities =& new TestRouteCitiesController();
		$this->RouteCities->constructClasses();
	}

	function endTest() {
		unset($this->RouteCities);
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
