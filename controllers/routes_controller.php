<?php
class RoutesController extends AppController {

	var $name = 'Routes';
        function beforeFilter() {
            parent::beforeFilter();
            $this->Auth->allow('*');
        }
	function index() {
		$this->Route->recursive = 0;
		$this->set('routes', $this->paginate());
	}

	function view($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid route', true));
			$this->redirect(array('action' => 'index'));
		}
		$this->set('route', $this->Route->read(null, $id));
	}

	function add() {
		if (!empty($this->data)) {
			$this->Route->create();
			if ($this->Route->save($this->data)) {
				$this->Session->setFlash(__('The route has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The route could not be saved. Please, try again.', true));
			}
		}
		$endStations = $this->Route->EndStation->find('list');
		$startStations = $this->Route->StartStation->find('list');
		$busStops = $this->Route->BusStop->find('list');
		$cities = $this->Route->City->find('list');
		$stations = $this->Route->Station->find('list');
		$this->set(compact('endStations', 'startStations', 'busStops', 'cities', 'stations'));
	}

	function edit($id = null) {
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid route', true));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if ($this->Route->save($this->data)) {
				$this->Session->setFlash(__('The route has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The route could not be saved. Please, try again.', true));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->Route->read(null, $id);
		}
		$endStations = $this->Route->EndStation->find('list');
		$startStations = $this->Route->StartStation->find('list');
		$busStops = $this->Route->BusStop->find('list');
		$cities = $this->Route->City->find('list');
		$stations = $this->Route->Station->find('list');
		$this->set(compact('endStations', 'startStations', 'busStops', 'cities', 'stations'));
	}

	function delete($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for route', true));
			$this->redirect(array('action'=>'index'));
		}
		if ($this->Route->delete($id)) {
			$this->Session->setFlash(__('Route deleted', true));
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('Route was not deleted', true));
		$this->redirect(array('action' => 'index'));
	}
        function api(){
		//$this->Route->recursive = 0;
                $this->layout = 'api';
		$this->set('routes', $this->paginate());
        }
}
