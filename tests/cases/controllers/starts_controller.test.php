<?php
/* Starts Test cases generated on: 2011-09-13 20:33:50 : 1315938830*/
App::import('Controller', 'Starts');

class TestStartsController extends StartsController {
	var $autoRender = false;

	function redirect($url, $status = null, $exit = true) {
		$this->redirectUrl = $url;
	}
}

class StartsControllerTestCase extends CakeTestCase {
	var $fixtures = array('app.start');

	function startTest() {
		$this->Starts =& new TestStartsController();
		$this->Starts->constructClasses();
	}

	function endTest() {
		unset($this->Starts);
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
