<?php
/* Branches Test cases generated on: 2011-09-17 15:59:20 : 1316267960*/
App::import('Controller', 'Branches');

class TestBranchesController extends BranchesController {
	var $autoRender = false;

	function redirect($url, $status = null, $exit = true) {
		$this->redirectUrl = $url;
	}
}

class BranchesControllerTestCase extends CakeTestCase {
	var $fixtures = array('app.branch', 'app.city', 'app.bus_stop', 'app.route', 'app.station', 'app.bus', 'app.trip', 'app.driver', 'app.employee', 'app.assistant', 'app.bus_stops_route', 'app.cities_route', 'app.routes_station');

	function startTest() {
		$this->Branches =& new TestBranchesController();
		$this->Branches->constructClasses();
	}

	function endTest() {
		unset($this->Branches);
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
