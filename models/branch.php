<?php
class Branch extends AppModel {
	var $name = 'Branch';
	var $displayField = 'name';
	var $validate = array(
		'city_id' => array(
			'numeric' => array(
				'rule' => array('numeric'),
				'message' => 'City id should be a digit',
				//'allowEmpty' => false,
				//'required' => false,
				//'last' => false, // Stop validation after this rule
				//'on' => 'create', // Limit validation to 'create' or 'update' operations
			),
		),
	);
	//The Associations below have been created with all possible keys, those that are not needed can be removed

	var $belongsTo = array(
		'City' => array(
			'className' => 'City',
			'foreignKey' => 'city_id',
			'conditions' => '',
			'fields' => '',
			'order' => ''
		)
	);
}
