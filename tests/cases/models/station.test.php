<?php
/* Station Test cases generated on: 2011-09-13 20:52:42 : 1315939962*/
App::import('Model', 'Station');

class StationTestCase extends CakeTestCase {
	var $fixtures = array('app.station');

	function startTest() {
		$this->Station =& ClassRegistry::init('Station');
	}

	function endTest() {
		unset($this->Station);
		ClassRegistry::flush();
	}

}
