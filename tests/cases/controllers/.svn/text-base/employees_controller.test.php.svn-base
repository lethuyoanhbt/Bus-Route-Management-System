<?php
/* Employees Test cases generated on: 2011-09-21 13:12:49 : 1316603569*/
App::import('Controller', 'Employees');

class TestEmployeesController extends EmployeesController {
	var $autoRender = false;

	function redirect($url, $status = null, $exit = true) {
		$this->redirectUrl = $url;
	}
}

class EmployeesControllerTestCase extends CakeTestCase {
	var $fixtures = array('app.employee', 'app.assistant', 'app.trip', 'app.bus', 'app.route', 'app.station', 'app.bus_stop', 'app.city', 'app.branch', 'app.cities_route', 'app.bus_stops_route', 'app.routes_station', 'app.driver');

	function startTest() {
		$this->Employees =& new TestEmployeesController();
		$this->Employees->constructClasses();
	}

	function endTest() {
		unset($this->Employees);
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
