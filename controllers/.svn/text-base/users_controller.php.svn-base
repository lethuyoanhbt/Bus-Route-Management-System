<?php

class UsersController extends AppController {

    var $name = 'Users';

    function beforeFilter() {
        parent::beforeFilter();
      //  $this->Auth->allow('*');
        $this->Auth->allow("add");
        $this->Auth->allow("login");
        $this->Auth->allow("logout");
        if ($this->action == 'add' || $this->action == 'edit') {
            $this->Auth->authenticate = $this->User;
        }
    }

    function search() {
        $this->set('results', $this->User->search($this->data['User']['q']));
    }

    function login() {
        if ($this->Session->read('Auth.User')) {
            $this->Session->setFlash('You are logged in!');
            $this->redirect('/', null, false);
        }
        $this->layout = 'login';
    }

    function logout() {
        $this->Session->setFlash('Good-Bye');
        $this->redirect($this->Auth->logout());
    }

    function index() {
        $this->User->recursive = 0;
        $this->set('users', $this->paginate());
    }

    function view($id = null) {
        if (!$id) {
            $this->Session->setFlash(__('Invalid user', true));
            $this->redirect(array('action' => 'index'));
        }
        $this->set('user', $this->User->read(null, $id));
    }

    function add() {


        if (!empty($this->params["data"])) {
            if ($this->User->validates($this->data)) {
                $photo = $this->params["data"]["User"]["img"];
                if ($photo["size"] > 0) {
                    $fileData = fread(fopen($photo["tmp_name"], "r"), $photo["size"]);
                    $this->params["data"]["User"]["photo"] = $fileData;
                } else {
                    $this->params["data"]["User"]["photo"] = null;
                }
                if ($this->User->save($this->params["data"])) {
                    $this->Session->setFlash(__('The user has been saved', true));
                    $this->redirect(array('action' => 'index'));
                }
            } else {
                $this->Session->setFlash(__('The user could not be saved. Please, try again.', true));
                $this->validateErrors($this->User);
            }
        }
//
//
//
//
//        if (!empty($this->data)) {
//            $this->User->create();
//            if ($this->User->save($this->data)) {
//                $this->Session->setFlash(__('The user has been saved', true));
//                $this->redirect(array('action' => 'index'));
//            } else {
//                $this->Session->setFlash(__('The user could not be saved. Please, try again.', true));
//            }
//        }
        $groups = $this->User->Group->find('list');
        $this->set(compact('groups'));
    }

    function edit($id = null) {
        if (!$id && empty($this->data)) {
            $this->Session->setFlash(__('Invalid user', true));
            $this->redirect(array('action' => 'index'));
        }
        if (!empty($this->data)) {
            if ($this->User->save($this->data)) {
                $this->Session->setFlash(__('The user has been saved', true));
                $this->redirect(array('action' => 'index'));
            } else {
                $this->Session->setFlash(__('The user could not be saved. Please, try again.', true));
            }
        }
        $groups = $this->User->Group->find('list');
        $this->set(compact('groups'));
    }

    function delete($id = null) {
        if (!$id) {
            $this->Session->setFlash(__('Invalid id for user', true));
            $this->redirect(array('action' => 'index'));
        }
        if ($this->User->delete($id)) {
            $this->Session->setFlash(__('User deleted', true));
            $this->redirect(array('action' => 'index'));
        }
        $this->Session->setFlash(__('User was not deleted', true));
        $this->redirect(array('action' => 'index'));
    }

    function download($id) {
        $file = $this->User->read(null, $id);
        //debug($file);
        header('Content-type: ' . $file['img']['type']);
        header('Content-length: ' . $file['img']['size']);
        header('Content-Disposition: attachment; filename=' . $file['img']['name']);
        echo $file['img']['data'];

        exit();
    }

    function initDB() {
        $group = &$this->User->Group;
        //Allow admins to everything
        $group->id = 1;
        $this->Acl->allow($group, 'controllers');
        //allow managers to posts and widgets
        $group->id = 2;
        $this->Acl->deny($group, 'controllers');
        $this->Acl->allow($group, 'controllers/Assistants');
        $this->Acl->allow($group, 'controllers/Drivers');
        $this->Acl->allow($group, 'controllers/Stations');
        $this->Acl->allow($group, 'controllers/Routes');
        $this->Acl->allow($group, 'controllers/Branches');
        $this->Acl->allow($group, 'controllers/Stations');
        $this->Acl->allow($group, 'controllers/Employees');
        $this->Acl->allow($group, 'controllers/Users/view');
        $this->Acl->allow($group, 'controllers/Users/index');
        $this->Acl->allow($group, 'controllers/Employees/index');
        $this->Acl->allow($group, 'controllers/Employees/view');
        //allow users to only add and edit on posts and widgets
        $group->id = 3;
        $this->Acl->deny($group, 'controllers');
        $this->Acl->allow($group, 'controllers/Drivers/view');
        $this->Acl->allow($group, 'controllers/Drivers/index');
        $this->Acl->allow($group, 'controllers/Buses/view');
        $this->Acl->allow($group, 'controllers/Buses/index');
        $this->Acl->allow($group, 'controllers/Routes/view');
        $this->Acl->allow($group, 'controllers/Routes/index');

        echo "all done";
        exit;
    }

}
