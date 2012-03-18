<?php
/* End Fixture generated on: 2011-09-13 20:32:42 : 1315938762 */
class EndFixture extends CakeTestFixture {
	var $name = 'End';

	var $fields = array(
		'id' => array('type' => 'integer', 'null' => false, 'default' => NULL, 'key' => 'primary'),
		'indexes' => array('PRIMARY' => array('column' => 'id', 'unique' => 1)),
		'tableParameters' => array('charset' => 'latin1', 'collate' => 'latin1_swedish_ci', 'engine' => 'InnoDB')
	);

	var $records = array(
		array(
			'id' => 1
		),
	);
}
