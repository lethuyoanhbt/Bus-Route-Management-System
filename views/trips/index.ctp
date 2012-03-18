<div class="trips index">
	<h2><?php __('Trips');?></h2>
	<table cellpadding="0" cellspacing="0">
	<tr>
			<th><?php echo $this->Paginator->sort('id');?></th>
			<th><?php echo $this->Paginator->sort('bus_id');?></th>
			<th><?php echo $this->Paginator->sort('driver_id');?></th>
			<th><?php echo $this->Paginator->sort('assistant_id');?></th>
			<th><?php echo $this->Paginator->sort('date');?></th>
			<th class="actions"><?php __('Actions');?></th>
	</tr>
	<?php
	$i = 0;
	foreach ($trips as $trip):
		$class = null;
		if ($i++ % 2 == 0) {
			$class = ' class="altrow"';
		}
	?>
	<tr<?php echo $class;?>>
		<td><?php echo $trip['Trip']['id']; ?>&nbsp;</td>
		<td>
			<?php echo $this->Html->link($trip['Bus']['reg_no'], array('controller' => 'buses', 'action' => 'view', $trip['Bus']['id'])); ?>
		</td>
		<td>
			<?php echo $this->Html->link($trip['Driver']['employee_id'], array('controller' => 'drivers', 'action' => 'view', $trip['Driver']['id'])); ?>
		</td>
		<td>
			<?php echo $this->Html->link($trip['Assistant']['id'], array('controller' => 'assistants', 'action' => 'view', $trip['Assistant']['id'])); ?>
		</td>
		<td><?php echo $trip['Trip']['date']; ?>&nbsp;</td>
		<td class="actions">
			<?php echo $this->Html->link(__('View', true), array('action' => 'view', $trip['Trip']['id'])); ?>
			<?php echo $this->Html->link(__('Edit', true), array('action' => 'edit', $trip['Trip']['id'])); ?>
			<?php echo $this->Html->link(__('Delete', true), array('action' => 'delete', $trip['Trip']['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $trip['Trip']['id'])); ?>
		</td>
	</tr>
<?php endforeach; ?>
	</table>
	<p>
	<?php
	echo $this->Paginator->counter(array(
	'format' => __('Page %page% of %pages%, showing %current% records out of %count% total, starting on record %start%, ending on %end%', true)
	));
	?>	</p>

	<div class="paging">
		<?php echo $this->Paginator->prev('<< ' . __('previous', true), array(), null, array('class'=>'disabled'));?>
	 | 	<?php echo $this->Paginator->numbers();?>
 |
		<?php echo $this->Paginator->next(__('next', true) . ' >>', array(), null, array('class' => 'disabled'));?>
	</div>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('New Trip', true), array('action' => 'add')); ?></li>
		<li><?php echo $this->Html->link(__('List Buses', true), array('controller' => 'buses', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Bus', true), array('controller' => 'buses', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Drivers', true), array('controller' => 'drivers', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Driver', true), array('controller' => 'drivers', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Assistants', true), array('controller' => 'assistants', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Assistant', true), array('controller' => 'assistants', 'action' => 'add')); ?> </li>
	</ul>
</div>