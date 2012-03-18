<?php
/* Branch Test cases generated on: 2011-09-13 20:16:52 : 1315937812*/
App::import('Model', 'Branch');

class BranchTestCase extends CakeTestCase {
	var $fixtures = array('app.branch', 'app.city');

	function startTest() {
		$this->Branch =& ClassRegistry::init('Branch');
	}

	function endTest() {
		unset($this->Branch);
		ClassRegistry::flush();
	}

}
