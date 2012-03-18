<div class="busStops view">
<h2><?php  __('Bus Stop');?></h2>
	<dl><?php $i = 0; $class = ' class="altrow"';?>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Id'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $busStop['BusStop']['id']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Name'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $busStop['BusStop']['name']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('City'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $this->Html->link($busStop['City']['name'], array('controller' => 'cities', 'action' => 'view', $busStop['City']['id'])); ?>
			&nbsp;
		</dd>
	</dl>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('Edit Bus Stop', true), array('action' => 'edit', $busStop['BusStop']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('Delete Bus Stop', true), array('action' => 'delete', $busStop['BusStop']['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $busStop['BusStop']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('List Bus Stops', true), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Bus Stop', true), array('action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Cities', true), array('controller' => 'cities', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New City', true), array('controller' => 'cities', 'action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Routes', true), array('controller' => 'routes', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Route', true), array('controller' => 'routes', 'action' => 'add')); ?> </li>
	</ul>
</div>
<div class="related">
	<h3><?php __('Routes Related to the Bus Stops');?></h3>
	<?php if (!empty($busStop['Route'])):?>
	<table cellpadding = "0" cellspacing = "0">
	<tr>
		<th><?php __('Id'); ?></th>
		<th><?php __('Name'); ?></th>
		<th><?php __('Route No'); ?></th>
		<th><?php __('End Station Id'); ?></th>
		<th><?php __('Start Station Id'); ?></th>
		<th class="actions"><?php __('Actions');?></th>
	</tr>
	<?php
		$i = 0;
		foreach ($busStop['Route'] as $route):
			$class = null;
			if ($i++ % 2 == 0) {
				$class = ' class="altrow"';
			}
		?>
		<tr<?php echo $class;?>>
			<td><?php echo $route['id'];?></td>
			<td><?php echo $route['name'];?></td>
			<td><?php echo $route['route_no'];?></td>
			<td><?php echo $route['end_station_id'];?></td>
			<td><?php echo $route['start_station_id'];?></td>
			<td class="actions">
				<?php echo $this->Html->link(__('View', true), array('controller' => 'routes', 'action' => 'view', $route['id'])); ?>
				<?php echo $this->Html->link(__('Edit', true), array('controller' => 'routes', 'action' => 'edit', $route['id'])); ?>
				<?php echo $this->Html->link(__('Delete', true), array('controller' => 'routes', 'action' => 'delete', $route['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $route['id'])); ?>
			</td>
		</tr>
	<?php endforeach; ?>
	</table>
<?php endif; ?>

	<div class="actions">
		<ul>
			<li><?php echo $this->Html->link(__('New Route', true), array('controller' => 'routes', 'action' => 'add'));?> </li>
		</ul>
	</div>
</div>
