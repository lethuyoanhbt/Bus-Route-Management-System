<?php
/* RouteBusStop Fixture generated on: 2011-09-13 20:18:19 : 1315937899 */
class RouteBusStopFixture extends CakeTestFixture {
	var $name = 'RouteBusStop';

	var $fields = array(
		'id' => array('type' => 'integer', 'null' => false, 'default' => NULL, 'length' => 10, 'key' => 'primary'),
		'route_id' => array('type' => 'integer', 'null' => false, 'default' => NULL, 'length' => 10, 'key' => 'index'),
		'bus_stop_id' => array('type' => 'integer', 'null' => false, 'default' => NULL, 'length' => 10, 'key' => 'index'),
		'indexes' => array('PRIMARY' => array('column' => 'id', 'unique' => 1), 'bus_stop_id' => array('column' => 'bus_stop_id', 'unique' => 0), 'route_id' => array('column' => 'route_id', 'unique' => 0)),
		'tableParameters' => array('charset' => 'latin1', 'collate' => 'latin1_swedish_ci', 'engine' => 'InnoDB')
	);

	var $records = array(
		array(
			'id' => 1,
			'route_id' => 1,
			'bus_stop_id' => 1
		),
	);
}
