<div class="stations view">
<h2>நிலையம்</h2>
	<dl><?php $i = 0; $class = ' class="altrow"';?>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Id'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $station['Station']['id']; ?>
			&nbsp;
		</dd>
		<dt<?php if ($i % 2 == 0) echo $class;?>><?php __('Name'); ?></dt>
		<dd<?php if ($i++ % 2 == 0) echo $class;?>>
			<?php echo $station['Station']['name']; ?>
			&nbsp;
		</dd>
	</dl>
</div>
<div class="actions">
	<h3>செயல்</h3>
	<ul>
		<li><?php echo $this->Html->link("கொடு", array('action' => 'edit', $station['Station']['id'])); ?> </li>
		<li><?php echo $this->Html->link("நீக்கு", array('action' => 'delete', $station['Station']['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $station['Station']['id'])); ?> </li>
		<li><?php echo $this->Html->link("பட்டியல்", array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link("புதிய", array('action' => 'add')); ?> </li>
	</ul>
</div>
