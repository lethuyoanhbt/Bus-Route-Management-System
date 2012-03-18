<?php
/* IntermediateStations Test cases generated on: 2011-09-17 14:08:06 : 1316261286*/
App::import('Controller', 'IntermediateStations');

class TestIntermediateStationsController extends IntermediateStationsController {
	var $autoRender = false;

	function redirect($url, $status = null, $exit = true) {
		$this->redirectUrl = $url;
	}
}

class IntermediateStationsControllerTestCase extends CakeTestCase {
	var $fixtures = array('app.intermediate_station', 'app.route', 'app.station', 'app.bus', 'app.trip', 'app.driver', 'app.employee', 'app.assistant', 'app.route_bus_stop', 'app.route_city');

	function startTest() {
		$this->IntermediateStations =& new TestIntermediateStationsController();
		$this->IntermediateStations->constructClasses();
	}

	function endTest() {
		unset($this->IntermediateStations);
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
