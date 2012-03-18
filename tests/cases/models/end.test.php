<?php
/* End Test cases generated on: 2011-09-13 20:32:42 : 1315938762*/
App::import('Model', 'End');

class EndTestCase extends CakeTestCase {
	var $fixtures = array('app.end');

	function startTest() {
		$this->End =& ClassRegistry::init('End');
	}

	function endTest() {
		unset($this->End);
		ClassRegistry::flush();
	}

}
