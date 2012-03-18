<div class="branches view">
<h2><?php  __('Branch');?></h2>
	<dl><?php $i = 0; $class = ' class="altrow"';?>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Id'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $branch['Branch']['id']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Name'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $branch['Branch']['name']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('City'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $this->Html->link($branch['City']['name'], array('controller' => 'cities', 'action' => 'view', $branch['City']['id'])); ?>
			&nbsp;
		</dd>
	</dl>
</div>
<div class="actions">
	<h3><?php __('Actions'); ?></h3>
	<ul>
		<li><?php echo $this->Html->link(__('Edit Branch', true), array('action' => 'edit', $branch['Branch']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('Delete Branch', true), array('action' => 'delete', $branch['Branch']['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $branch['Branch']['id'])); ?> </li>
		<li><?php echo $this->Html->link(__('List Branches', true), array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New Branch', true), array('action' => 'add')); ?> </li>
		<li><?php echo $this->Html->link(__('List Cities', true), array('controller' => 'cities', 'action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link(__('New City', true), array('controller' => 'cities', 'action' => 'add')); ?> </li>
	</ul>
</div>
