<div class="buses view">
<h2><?php  __('Bus');?></h2>
	<dl><?php $i = 0; $class = ' class="altrow"';?>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Id'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $bus['Bus']['id']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Reg No'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $bus['Bus']['reg_no']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Seats'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $bus['Bus']['seats']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Route'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $this->Html->link($bus['Route']['name'], array('controller' => 'routes', 'action' => 'view', $bus['Route']['id'])); ?>
			&nbsp;
		</dd>
	</dl>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('Edit Bus', true), array('action' => 'edit', $bus['Bus']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('Delete Bus', true), array('action' => 'delete', $bus['Bus']['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $bus['Bus']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('List Buses', true), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Bus', true), array('action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Routes', true), array('controller' => 'routes', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Route', true), array('controller' => 'routes', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Trips', true), array('controller' => 'trips', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Trip', true), array('controller' => 'trips', 'action' => 'add')); ?> </li>
	</ul>
</div>
<div class="related">
	<h3><?php __('Current Trip');?></h3>
	<?php if (!empty($bus['Trip'])):?>
	<table cellpadding = "0" cellspacing = "0">
	<tr>
		<th><?php __('Id'); ?></th>
		<th><?php __('Bus Id'); ?></th>
		<th><?php __('Driver Id'); ?></th>
		<th><?php __('Assistant Id'); ?></th>
		<th><?php __('Date'); ?></th>
		<th class="actions"><?php __('Actions');?></th>
	</tr>
	<?php
		$i = 0;
		foreach ($bus['Trip'] as $trip):
			$class = null;
			if ($i++ % 2 == 0) {
				$class = ' class="altrow"';
			}
		?>
		<tr<?php echo $class;?>>
			<td><?php echo $trip['id'];?></td>
			<td><?php echo $trip['bus_id'];?></td>
			<td><?php echo $trip['driver_id'];?></td>
			<td><?php echo $trip['assistant_id'];?></td>
			<td><?php echo $trip['date'];?></td>
			<td class="actions">
				<?php echo $this->Html->link(__('View', true), array('controller' => 'trips', 'action' => 'view', $trip['id'])); ?>
				<?php echo $this->Html->link(__('Edit', true), array('controller' => 'trips', 'action' => 'edit', $trip['id'])); ?>
				<?php echo $this->Html->link(__('Delete', true), array('controller' => 'trips', 'action' => 'delete', $trip['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $trip['id'])); ?>
			</td>
		</tr>
	<?php endforeach; ?>
	</table>
<?php endif; ?>

	<div class="actions">
		<ul>
			<li><?php echo $this->Html->link(__('New Trip', true), array('controller' => 'trips', 'action' => 'add'));?> </li>
		</ul>
	</div>
</div>
