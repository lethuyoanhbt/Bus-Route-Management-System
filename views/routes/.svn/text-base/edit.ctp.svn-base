<div class="routes form">
<?php echo $this->Form->create('Route');?>
	<fieldset>
		<legend><?php __('Edit Route'); ?></legend>
	<?php
		echo $this->Form->input('id');
		echo $this->Form->input('name');
		echo $this->Form->input('route_no');
		echo $this->Form->input('end_station_id');
		echo $this->Form->input('start_station_id');
		echo $this->Form->input('BusStop');
		echo $this->Form->input('City');
		echo $this->Form->input('Station');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit', true));?>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('Delete', true), array('action' => 'delete', $this->Form->value('Route.id')), null, sprintf(__('Are you sure you want to delete # %s?', true), $this->Form->value('Route.id'))); ?></li>
		<li><?php echo $this->Html->link(__('List Routes', true), array('action' => 'index'));?></li>
		<li><?php echo $this->Html->link(__('List Stations', true), array('controller' => 'stations', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New End Station', true), array('controller' => 'stations', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Buses', true), array('controller' => 'buses', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Bus', true), array('controller' => 'buses', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Bus Stops', true), array('controller' => 'bus_stops', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Bus Stop', true), array('controller' => 'bus_stops', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Cities', true), array('controller' => 'cities', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New City', true), array('controller' => 'cities', 'action' => 'add')); ?> </li>
	</ul>
</div>