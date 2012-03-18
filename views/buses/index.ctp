<div class="buses index">
	<h2><?php __('Buses');?></h2>
	<table cellpadding="0" cellspacing="0">
	<tr>
			<th><?php echo $this->Paginator->sort('id');?></th>
			<th><?php echo $this->Paginator->sort('reg_no');?></th>
			<th><?php echo $this->Paginator->sort('seats');?></th>
			<th><?php echo $this->Paginator->sort('route_id');?></th>
			<th class="actions"><?php __('Actions');?></th>
	</tr>
	<?php
	$i = 0;
	foreach ($buses as $bus):
		$class = null;
		if ($i++ % 2 == 0) {
			$class = ' class="altrow"';
		}
	?>
	<tr<?php echo $class;?>>
		<td><?php echo $bus['Bus']['id']; ?>&nbsp;</td>
		<td><?php echo $bus['Bus']['reg_no']; ?>&nbsp;</td>
		<td><?php echo $bus['Bus']['seats']; ?>&nbsp;</td>
		<td>
			<?php echo $this->Html->link($bus['Route']['name'], array('controller' => 'routes', 'action' => 'view', $bus['Route']['id'])); ?>
		</td>
		<td class="actions">
			<?php echo $this->Html->link(__('View', true), array('action' => 'view', $bus['Bus']['id'])); ?>
			<?php echo $this->Html->link(__('Edit', true), array('action' => 'edit', $bus['Bus']['id'])); ?>
			<?php echo $this->Html->link(__('Delete', true), array('action' => 'delete', $bus['Bus']['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $bus['Bus']['id'])); ?>
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
		<li><?php echo $this->Html->link(__('New Bus', true), array('action' => 'add')); ?></li>
		<li><?php echo $this->Html->link(__('List Routes', true), array('controller' => 'routes', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Route', true), array('controller' => 'routes', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Trips', true), array('controller' => 'trips', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Trip', true), array('controller' => 'trips', 'action' => 'add')); ?> </li>
	</ul>
</div>