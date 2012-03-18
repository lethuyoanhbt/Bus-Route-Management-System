<div class="routes index">
	<h2><?php __('Routes');?></h2>
	<table cellpadding="0" cellspacing="0">
	<tr>
			<th><?php echo $this->Paginator->sort('id');?></th>
			<th><?php echo $this->Paginator->sort('name');?></th>
			<th><?php echo $this->Paginator->sort('route_no');?></th>
			<th><?php echo $this->Paginator->sort('end_station_id');?></th>
			<th><?php echo $this->Paginator->sort('start_station_id');?></th>
			<th class="actions"><?php __('Actions');?></th>
	</tr>
	<?php
	$i = 0;
	foreach ($routes as $route):
		$class = null;
		if ($i++ % 2 == 0) {
			$class = ' class="altrow"';
		}
	?>
	<tr<?php echo $class;?>>
		<td><?php echo $route['Route']['id']; ?>&nbsp;</td>
		<td><?php echo $route['Route']['name']; ?>&nbsp;</td>
		<td><?php echo $route['Route']['route_no']; ?>&nbsp;</td>
		<td>
			<?php echo $this->Html->link($route['EndStation']['name'], array('controller' => 'stations', 'action' => 'view', $route['EndStation']['id'])); ?>
		</td>
		<td>
			<?php echo $this->Html->link($route['StartStation']['name'], array('controller' => 'stations', 'action' => 'view', $route['StartStation']['id'])); ?>
		</td>
		<td class="actions">
			<?php echo $this->Html->link(__('View', true), array('action' => 'view', $route['Route']['id'])); ?>
			<?php echo $this->Html->link(__('Edit', true), array('action' => 'edit', $route['Route']['id'])); ?>
			<?php echo $this->Html->link(__('Delete', true), array('action' => 'delete', $route['Route']['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $route['Route']['id'])); ?>
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
		<li><?php echo $this->Html->link(__('New Route', true), array('action' => 'add')); ?></li>
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