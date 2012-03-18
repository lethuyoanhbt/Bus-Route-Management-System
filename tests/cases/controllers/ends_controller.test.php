<?php
/* Ends Test cases generated on: 2011-09-13 20:32:43 : 1315938763*/
App::import('Controller', 'Ends');

class TestEndsController extends EndsController {
	var $autoRender = false;

	function redirect($url, $status = null, $exit = true) {
		$this->redirectUrl = $url;
	}
}

class EndsControllerTestCase extends CakeTestCase {
	var $fixtures = array('app.end');

	function startTest() {
		$this->Ends =& new TestEndsController();
		$this->Ends->constructClasses();
	}

	function endTest() {
		unset($this->Ends);
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
