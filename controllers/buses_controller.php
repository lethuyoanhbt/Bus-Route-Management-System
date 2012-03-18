<?php
class BusesController extends AppController {

	var $name = 'Buses';

	function index() {
		$this->Bus->recursive = 0;
		$this->set('buses', $this->paginate());
	}

	function view($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid bus', true));
			$this->redirect(array('action' => 'index'));
		}
		$this->set('bus', $this->Bus->read(null, $id));
	}

	function add() {
		if (!empty($this->data)) {
			$this->Bus->create();
			if ($this->Bus->save($this->data)) {
				$this->Session->setFlash(__('The bus has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The bus could not be saved. Please, try again.', true));
			}
		}
		$routes = $this->Bus->Route->find('list');
		$this->set(compact('routes'));
	}

	function edit($id = null) {
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid bus', true));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if ($this->Bus->save($this->data)) {
				$this->Session->setFlash(__('The bus has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The bus could not be saved. Please, try again.', true));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->Bus->read(null, $id);
		}
		$routes = $this->Bus->Route->find('list');
		$this->set(compact('routes'));
	}

	function delete($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for bus', true));
			$this->redirect(array('action'=>'index'));
		}
		if ($this->Bus->delete($id)) {
			$this->Session->setFlash(__('Bus deleted', true));
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('Bus was not deleted', true));
		$this->redirect(array('action' => 'index'));
	}
}
