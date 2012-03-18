<div class="trips form">
<?php echo $this->Form->create('Trip');?>
	<fieldset>
		<legend><?php __('Edit Trip'); ?></legend>
	<?php
		echo $this->Form->input('id');
		echo $this->Form->input('bus_id');
		echo $this->Form->input('driver_id');
		echo $this->Form->input('assistant_id');
		echo $this->Form->input('date');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit', true));?>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('Delete', true), array('action' => 'delete', $this->Form->value('Trip.id')), null, sprintf(__('Are you sure you want to delete # %s?', true), $this->Form->value('Trip.id'))); ?></li>
		<li><?php echo $this->Html->link(__('List Trips', true), array('action' => 'index'));?></li>
		<li><?php echo $this->Html->link(__('List Buses', true), array('controller' => 'buses', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Bus', true), array('controller' => 'buses', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Drivers', true), array('controller' => 'drivers', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Driver', true), array('controller' => 'drivers', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Assistants', true), array('controller' => 'assistants', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Assistant', true), array('controller' => 'assistants', 'action' => 'add')); ?> </li>
	</ul>
</div>