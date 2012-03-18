<?php
/* Assistants Test cases generated on: 2011-09-17 15:59:19 : 1316267959*/
App::import('Controller', 'Assistants');

class TestAssistantsController extends AssistantsController {
	var $autoRender = false;

	function redirect($url, $status = null, $exit = true) {
		$this->redirectUrl = $url;
	}
}

class AssistantsControllerTestCase extends CakeTestCase {
	var $fixtures = array('app.assistant', 'app.employee', 'app.driver', 'app.trip', 'app.bus', 'app.route', 'app.station', 'app.bus_stop', 'app.city', 'app.branch', 'app.cities_route', 'app.bus_stops_route', 'app.routes_station');

	function startTest() {
		$this->Assistants =& new TestAssistantsController();
		$this->Assistants->constructClasses();
	}

	function endTest() {
		unset($this->Assistants);
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
