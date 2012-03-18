<?php
class Route extends AppModel {
	var $name = 'Route';
	var $displayField = 'name';
	var $validate = array(
		'end_station_id' => array(
			'numeric' => array(
				'rule' => array('numeric'),
				'message' => 'End Station id should be a digit',
				//'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),
		'start_station_id' => array(
			'numeric' => array(
				'rule' => array('numeric'),
				'message' => 'Start Station id should be a digit',
				//'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),
	);
	//The Associations below have been created with all possible keys, those that are not needed can be removed

	var $belongsTo = array(
		'EndStation' => array(
			'className' => 'Station',
			'foreignKey' => 'end_station_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		),
		'StartStation' => array(
			'className' => 'Station',
			'foreignKey' => 'start_station_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		)
	);

	var $hasMany = array(
		'Bus' => array(
			'className' => 'Bus',
			'foreignKey' => 'route_id',
			'dependent' => false,
			'conditions' => '',
			'fields' => '',
			'order' => '',
			'limit' => '',
			'offset' => '',
			'exclusive' => '',
			'finderQuery' => '',
			'counterQuery' => ''
		)
	);


	var $hasAndBelongsToMany = array(
		'BusStop' => array(
			'className' => 'BusStop',
			'joinTable' => 'bus_stops_routes',
			'foreignKey' => 'route_id',
			'associationForeignKey' => 'bus_stop_id',
			'unique' => true,
			'conditions' => '',
			'fields' => '',
			'order' => '',
			'limit' => '',
			'offset' => '',
			'finderQuery' => '',
			'deleteQuery' => '',
			'insertQuery' => ''
		),
		'City' => array(
			'className' => 'City',
			'joinTable' => 'cities_routes',
			'foreignKey' => 'route_id',
			'associationForeignKey' => 'city_id',
			'unique' => true,
			'conditions' => '',
			'fields' => '',
			'order' => '',
			'limit' => '',
			'offset' => '',
			'finderQuery' => '',
			'deleteQuery' => '',
			'insertQuery' => ''
		),
		'Station' => array(
			'className' => 'Station',
			'joinTable' => 'routes_stations',
			'foreignKey' => 'route_id',
			'associationForeignKey' => 'station_id',
			'unique' => true,
			'conditions' => '',
			'fields' => '',
			'order' => '',
			'limit' => '',
			'offset' => '',
			'finderQuery' => '',
			'deleteQuery' => '',
			'insertQuery' => ''
		)
	);

}
