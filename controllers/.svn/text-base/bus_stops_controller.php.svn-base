<?php
class BusStopsController extends AppController {

	var $name = 'BusStops';

	function index() {
		$this->BusStop->recursive = 0;
		$this->set('busStops', $this->paginate());
	}

	function view($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid bus stop', true));
			$this->redirect(array('action' => 'index'));
		}
		$this->set('busStop', $this->BusStop->read(null, $id));
	}

	function add() {
		if (!empty($this->data)) {
			$this->BusStop->create();
			if ($this->BusStop->save($this->data)) {
				$this->Session->setFlash(__('The bus stop has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The bus stop could not be saved. Please, try again.', true));
			}
		}
		$cities = $this->BusStop->City->find('list');
		$routes = $this->BusStop->Route->find('list');
		$this->set(compact('cities', 'routes'));
	}

	function edit($id = null) {
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid bus stop', true));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if ($this->BusStop->save($this->data)) {
				$this->Session->setFlash(__('The bus stop has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The bus stop could not be saved. Please, try again.', true));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->BusStop->read(null, $id);
		}
		$cities = $this->BusStop->City->find('list');
		$routes = $this->BusStop->Route->find('list');
		$this->set(compact('cities', 'routes'));
	}

	function delete($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for bus stop', true));
			$this->redirect(array('action'=>'index'));
		}
		if ($this->BusStop->delete($id)) {
			$this->Session->setFlash(__('Bus stop deleted', true));
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('Bus stop was not deleted', true));
		$this->redirect(array('action' => 'index'));
	}
}
