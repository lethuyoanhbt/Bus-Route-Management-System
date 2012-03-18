<?php
/* EndStation Test cases generated on: 2011-09-13 20:17:59 : 1315937879*/
App::import('Model', 'EndStation');

class EndStationTestCase extends CakeTestCase {
	var $fixtures = array('app.end_station', 'app.route', 'app.station');

	function startTest() {
		$this->EndStation =& ClassRegistry::init('EndStation');
	}

	function endTest() {
		unset($this->EndStation);
		ClassRegistry::flush();
	}

}
