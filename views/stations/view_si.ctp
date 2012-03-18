<div class="stations view">
<h2>බස් නැවතුම් පල </h2>
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
	<h3>ක්‍රියාකාරකම </h3>
	<ul>
		<li><?php echo $this->Html->link("සංස්කරණය ", array('action' => 'edit', $station['Station']['id'])); ?> </li>
		<li><?php echo $this->Html->link("ඉවත්කරන්න", array('action' => 'delete', $station['Station']['id']), null, sprintf(__('Are you sure you want to delete # %s?', true), $station['Station']['id'])); ?> </li>
		<li><?php echo $this->Html->link("ලැයිතුව ", array('action' => 'index')); ?> </li>
		<li><?php echo $this->Html->link("එක් කරන්න ", array('action' => 'add')); ?> </li>
	</ul>
</div>
