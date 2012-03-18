<?php
/* Start Test cases generated on: 2011-09-13 20:33:49 : 1315938829*/
App::import('Model', 'Start');

class StartTestCase extends CakeTestCase {
	var $fixtures = array('app.start');

	function startTest() {
		$this->Start =& ClassRegistry::init('Start');
	}

	function endTest() {
		unset($this->Start);
		ClassRegistry::flush();
	}

}
