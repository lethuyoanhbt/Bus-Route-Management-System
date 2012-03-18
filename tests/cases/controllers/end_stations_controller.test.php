<?php
/* EndStations Test cases generated on: 2011-09-13 20:18:00 : 1315937880*/
App::import('Controller', 'EndStations');

class TestEndStationsController extends EndStationsController {
	var $autoRender = false;

	function redirect($url, $status = null, $exit = true) {
		$this->redirectUrl = $url;
	}
}

class EndStationsControllerTestCase extends CakeTestCase {
	var $fixtures = array('app.end_station', 'app.route', 'app.station');

	function startTest() {
		$this->EndStations =& new TestEndStationsController();
		$this->EndStations->constructClasses();
	}

	function endTest() {
		unset($this->EndStations);
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
