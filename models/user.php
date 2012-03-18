<?php

class User extends AppModel {

    var $name = 'User';
    var $actsAs = array('Searchable','Acl' => 'requester');
    var $validate = array(
        'name' => array(
            'notempty' => array(
                'rule' => array('notempty'),
                'message' => 'Please enter user name',
            //'allowEmpty' => false,
            //'required' => false,
            //'last' => false, // Stop validation after this rule
            //'on' => 'create', // Limit validation to 'create' or 'update' operations
            ),
        ),
        'username' => array(
            'notempty' => array(
                'rule' => array('notempty'),
                'message' => 'Please enter user username',
            //'allowEmpty' => false,
            //'required' => false,
            //'last' => false, // Stop validation after this rule
            //'on' => 'create', // Limit validation to 'create' or 'update' operations
            ),
        ),
        'password' => array(
            'limit' => array(
                'rule' => array('between', 5, 15),
                'message' => 'The Password must be between 5 to 15 character',
            //'allowEmpty' => false,
            //'required' => false,
            //'last' => false, // Stop validation after this rule
            //'on' => 'create', // Limit validation to 'create' or 'update' operations
            ),
            'password match' => array(
                'rule' => array('matchPasswords'),
                'message' => 'Password do not match',
            //'allowEmpty' => false,
            //'required' => false,
            //'last' => false, // Stop validation after this rule
            //'on' => 'create', // Limit validation to 'create' or 'update' operations
            )
        ),
        'roles' => array(
            'notempty' => array(
                'rule' => array('notempty'),
                'message' => 'Please enter the user role',
                //'allowEmpty' => false,
                //'required' => false,
                //'last' => false, // Stop validation after this rule
                //'on' => 'create', // Limit validation to 'create' or 'update' operations
            ),
        ),
    );
    var $belongsTo = array(
        'Group' => array(
            'className' => 'Group',
            'foreignKey' => 'group_id',
            'conditions' => '',
            'fields' => '',
            'order' => ''
        )
    );

    function afterSave($created) {
        if (!$created) {
            $parent = $this->parentNode();
            $parent = $this->node($parent);
            $node = $this->node();
            $aro = $node[0];
            $aro['Aro']['parent_id'] = $parent[0]['Aro']['id'];
            $this->Aro->save($aro);
        }
    }

    function parentNode() {
        if (!$this->id && empty($this->data)) {
            return null;
        }
        $data = $this->data;
        if (empty($this->data)) {
            $data = $this->read();
        }
        if (empty($data['User']['group_id'])) {
            return null;
        } else {
            return array('Group' => array('id' => $data['User']['group_id']));
        }
    }

    function matchPasswords($data) {
        if ($data['password'] == $this->data['User']['password_confirmation']) {
            return TRUE;
        }
        $this->invalidate('password_confimation', 'Password do not match');
        return FALSE;
    }

    function hashPasswords($data) {
        if (isset($this->data['User']['password'])) {
            $this->data['User']['password'] = Security::hash($this->data['User']['password'], NULL, TRUE);
            return $data;
        }
        return $data;
    }

    function beforeSave() {
        $this->hashPasswords(NULL, TRUE);
        return TRUE;
    }

}
