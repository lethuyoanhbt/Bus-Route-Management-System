<?php
class TripsController extends AppController {

	var $name = 'Trips';

	function index() {
		$this->Trip->recursive = 0;
		$this->set('trips', $this->paginate());
	}

	function view($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid trip', true));
			$this->redirect(array('action' => 'index'));
		}
		$this->set('trip', $this->Trip->read(null, $id));
	}

	function add() {
		if (!empty($this->data)) {
			$this->Trip->create();
			if ($this->Trip->save($this->data)) {
				$this->Session->setFlash(__('The trip has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The trip could not be saved. Please, try again.', true));
			}
		}
		$buses = $this->Trip->Bus->find('list');
		$drivers = $this->Trip->Driver->find('list');
		$assistants = $this->Trip->Assistant->find('list');
		$this->set(compact('buses', 'drivers', 'assistants'));
	}

	function edit($id = null) {
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid trip', true));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if ($this->Trip->save($this->data)) {
				$this->Session->setFlash(__('The trip has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The trip could not be saved. Please, try again.', true));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->Trip->read(null, $id);
		}
		$buses = $this->Trip->Bus->find('list');
		$drivers = $this->Trip->Driver->find('list');
		$assistants = $this->Trip->Assistant->find('list');
		$this->set(compact('buses', 'drivers', 'assistants'));
	}

	function delete($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for trip', true));
			$this->redirect(array('action'=>'index'));
		}
		if ($this->Trip->delete($id)) {
			$this->Session->setFlash(__('Trip deleted', true));
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('Trip was not deleted', true));
		$this->redirect(array('action' => 'index'));
	}
}
