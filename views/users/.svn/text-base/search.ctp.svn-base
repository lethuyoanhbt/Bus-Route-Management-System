<?php // app/views/Users/search.ctp ?>
<?php debug($results); ?>
<h2>Blog Users</h2>
<?php 
    echo $form->create("User",array('action' => 'search'));
    echo $form->input("q", array('label' => 'Search for'));
    echo $form->end("Search");
?>
<p><?php echo $html->link("Add User", "/users/add"); ?>
<table>
    <tr>
        <th>Id</th>
        <th>Title</th>
                <th>Action</th>
        <th>Created</th>
    </tr>

<!-- Here's where we loop through our $results array, printing out User info -->

<?php foreach ($results as $User): ?>
    <tr>
        <td><?php echo $User['User']['id']; ?></td>
        <td>
            <?php echo $html->link($User['User']['title'],'/Users/view/'.$User['User']['id']);?>
                </td>
                <td>
            <?php echo $html->link(
                'Delete', 
                "/Users/delete/{$User['User']['id']}", 
                null, 
                'Are you sure?'
            )?>
            <?php echo $html->link('Edit', '/Users/edit/'.$User['User']['id']);?>
        </td>
        <td><?php echo $User['User']['created']; ?></td>
    </tr>
<?php endforeach; ?>
</table> 