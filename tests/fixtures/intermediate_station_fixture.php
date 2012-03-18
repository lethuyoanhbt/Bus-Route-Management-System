<?php
/* IntermediateStation Fixture generated on: 2011-09-13 20:18:08 : 1315937888 */
class IntermediateStationFixture extends CakeTestFixture {
	var $name = 'IntermediateStation';

	var $fields = array(
		'id' => array('type' => 'integer', 'null' => false, 'default' => NULL, 'length' => 10, 'key' => 'primary'),
		'route_id' => array('type' => 'integer', 'null' => false, 'default' => NULL, 'length' => 10, 'key' => 'index'),
		'station_id' => array('type' => 'integer', 'null' => false, 'default' => NULL, 'length' => 10, 'key' => 'index'),
		'indexes' => array('PRIMARY' => array('column' => 'id', 'unique' => 1), 'route_id' => array('column' => 'route_id', 'unique' => 0), 'station_id' => array('column' => 'station_id', 'unique' => 0)),
		'tableParameters' => array('charset' => 'latin1', 'collate' => 'latin1_swedish_ci', 'engine' => 'InnoDB')
	);

	var $records = array(
		array(
			'id' => 1,
			'route_id' => 1,
			'station_id' => 1
		),
	);
}
