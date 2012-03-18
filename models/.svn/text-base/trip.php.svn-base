<?php
class Trip extends AppModel {
	var $name = 'Trip';
	var $displayField = 'date';
	var $validate = array(
		'bus_id' => array(
			'numeric' => array(
				'rule' => array('numeric'),
				'message' => 'Bus id should be numeric',
				//'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),
		'driver_id' => array(
			'numeric' => array(
				'rule' => array('numeric'),
				'message' => 'Driver id should be numeric',
				//'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),
		'assistant_id' => array(
			'numeric' => array(
				'rule' => array('numeric'),
				'message' => 'Assistant id should be numeric',
				//'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),
		'date' => array(
			//'time' => array(
				//'rule' => array('time'),
				//'message' => 'Your custom message here',
				//'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			//),
		),
	);
	//The Associations below have been created with all possible keys, those that are not needed can be removed

	var $belongsTo = array(
		'Bus' => array(
			'className' => 'Bus',
			'foreignKey' => 'bus_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		),
		'Driver' => array(
			'className' => 'Driver',
			'foreignKey' => 'driver_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		),
		'Assistant' => array(
			'className' => 'Assistant',
			'foreignKey' => 'assistant_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		)
	);
}
