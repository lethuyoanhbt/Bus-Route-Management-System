<?php
/* Driver Test cases generated on: 2011-09-13 20:44:00 : 1315939440*/
App::import('Model', 'Driver');

class DriverTestCase extends CakeTestCase {
	var $fixtures = array('app.driver', 'app.employee', 'app.assistant', 'app.trip');

	function startTest() {
		$this->Driver =& ClassRegistry::init('Driver');
	}

	function endTest() {
		unset($this->Driver);
		ClassRegistry::flush();
	}

}
