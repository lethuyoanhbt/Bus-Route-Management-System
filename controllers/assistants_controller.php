<?php
class AssistantsController extends AppController {

	var $name = 'Assistants';

	function index() {
		$this->Assistant->recursive = 0;
		$this->set('assistants', $this->paginate());
	}

	function view($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid assistant', true));
			$this->redirect(array('action' => 'index'));
		}
		$this->set('assistant', $this->Assistant->read(null, $id));
	}

	function add() {
		if (!empty($this->data)) {
			$this->Assistant->create();
			if ($this->Assistant->save($this->data)) {
				$this->Session->setFlash(__('The assistant has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The assistant could not be saved. Please, try again.', true));
			}
		}
		$employees = $this->Assistant->Employee->find('list');
		$this->set(compact('employees'));
	}

	function edit($id = null) {
		if (!$id && empty($this->data)) {
			$this->Session->setFlash(__('Invalid assistant', true));
			$this->redirect(array('action' => 'index'));
		}
		if (!empty($this->data)) {
			if ($this->Assistant->save($this->data)) {
				$this->Session->setFlash(__('The assistant has been saved', true));
				$this->redirect(array('action' => 'index'));
			} else {
				$this->Session->setFlash(__('The assistant could not be saved. Please, try again.', true));
			}
		}
		if (empty($this->data)) {
			$this->data = $this->Assistant->read(null, $id);
		}
		$employees = $this->Assistant->Employee->find('list');
		$this->set(compact('employees'));
	}

	function delete($id = null) {
		if (!$id) {
			$this->Session->setFlash(__('Invalid id for assistant', true));
			$this->redirect(array('action'=>'index'));
		}
		if ($this->Assistant->delete($id)) {
			$this->Session->setFlash(__('Assistant deleted', true));
			$this->redirect(array('action'=>'index'));
		}
		$this->Session->setFlash(__('Assistant was not deleted', true));
		$this->redirect(array('action' => 'index'));
	}
}
