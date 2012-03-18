<div class="buses form">
<?php echo $this->Form->create('Bus');?>
	<fieldset>
		<legend><?php __('Edit Bus'); ?></legend>
	<?php
		echo $this->Form->input('id');
		echo $this->Form->input('reg_no');
		echo $this->Form->input('seats');
		echo $this->Form->input('route_id');
	?>
	</fieldset>
<?php echo $this->Form->end(__('Submit', true));?>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>

		<li><?php echo $this->Html->link(__('Delete', true), array('action' => 'delete', $this->Form->value('Bus.id')), null, sprintf(__('Are you sure you want to delete # %s?', true), $this->Form->value('Bus.id'))); ?></li>
		<li><?php echo $this->Html->link(__('List Buses', true), array('action' => 'index'));?></li>
		<li><?php echo $this->Html->link(__('List Routes', true), array('controller' => 'routes', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Route', true), array('controller' => 'routes', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Trips', true), array('controller' => 'trips', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Trip', true), array('controller' => 'trips', 'action' => 'add')); ?> </li>
	</ul>
</div>