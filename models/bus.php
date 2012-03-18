<?php
class Bus extends AppModel {
	var $name = 'Bus';
	var $displayField = 'reg_no';
	var $validate = array(
		'reg_no' => array(
			'notempty' => array(
				'rule' => array('notempty'),
				'message' => 'Please Enter the register number of the bus',
				//'allowEmpty' => false,//no need of this comment
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
                        'valid reg number' => array(
                                    'rule' => '/^[a-z]{2}-\d{4}$/',
                                    'message' => 'Invalid Registration Number',
                                    //'allowEmpty' => false,
                                    //'required' => false,
                                    //'last' => false, // Stop validation after this rule
                                    //'on' => 'create', // Limit validation to 'create' or 'update' operations
                            ), 
		),
		'seats' => array(
			'numeric' => array(
				'rule' => array('numeric'),
				'message' => 'Number of seats should be a digit',
				//'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),
	);
	//The Associations below have been created with all possible keys, those that are not needed can be removed

	var $belongsTo = array(
		'Route' => array(
			'className' => 'Route',
			'foreignKey' => 'route_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		)
	);

	var $hasMany = array(
		'Trip' => array(
			'className' => 'Trip',
			'foreignKey' => 'bus_id',
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

}
