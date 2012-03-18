<style>
    .widget{
        overflow: hidden;
        text-align: center;
        float: left;
        cursor: pointer;
    }
    .small{
        width: 100px;
    }
    .widgetimg{
        height: auto;
        width: 100px;
    }
    .widgetimg{
        width:  auto;
        height:  100px;
        clear:  both;
        float: left;
    }
    .extended{
        width: 200px;
    }
</style>
<script>
    $(function() {
        $( "#accordion" ).accordion({
            event: "mouseover"
        });
    });
</script>
<div class="Quick Access">
    <div class="widget small"><img class="widgetimg" src="http://localhost/dbMiniProject/icons/travel_bus.png"/><br/><?php echo $this->Html->link(__('Buses', true), array('controller' => 'Buses')); ?></div>
    <div class="widget small"><img class="widgetimg" src="http://localhost/dbMiniProject/icons/Bus-Stop-128.png"/><br/><?php echo $this->Html->link(__('Bus Stops', true), array('controller' => 'Bus_Stops')); ?></div>
    <div class="widget small"><img class="widgetimg" src="http://localhost/dbMiniProject/icons/city-icon.png"/><br/><?php echo $this->Html->link(__('Cities', true), array('controller' => 'Cities')); ?></div>
    <div class="widget small"><img class="widgetimg" src="http://localhost/dbMiniProject/icons/station.png"/><br/><?php echo $this->Html->link(__('Stations', true), array('controller' => 'Stations')); ?></div>
    <div class="widget small"><img class="widgetimg" src="http://localhost/dbMiniProject/icons/trps.png"/><br/><?php echo $this->Html->link(__('Trips', true), array('controller' => 'Trips')); ?></div>
    <div class="widget small"><img class="widgetimg" src="http://localhost/dbMiniProject/icons/user1.png"/><br/><?php echo $this->Html->link(__('Users', true), array('controller' => 'Users')); ?></div>
    <div class="widget small"><img class="widgetimg" src="http://localhost/dbMiniProject/icons/branch.png"/><br/><?php echo $this->Html->link(__('Branches', true), array('controller' => 'Branches')); ?></div>
    <div class="widget small"><img class="widgetimg" src="http://localhost/dbMiniProject/icons/editcopy.png"/><br/><?php echo $this->Html->link(__('Access Logs', true), array('controller' => 'Logs')); ?></div>
</div>
<br/><br/><br/><br/><br/><br/><br/><br/><br/><br/>
<div id="accordion">
    <?php if($group_id<3) : ?>
    <h3><a href="#">Administration</a></h3>
    <div>
        
        <div>
            <div class="widget extended"><img class="widgetimg" src="http://localhost/dbMiniProject/icons/log-icon.png"/><?php echo $this->Html->link($this->Html->image("http://localhost/dbMiniProject/icons/add.png", array("alt" => "add")),"users/add",array('escape' => false));?><?php echo $this->Html->link(__(' Add', true), array('controller' => 'Users', 'action' => 'add')); ?><br/><?php echo $this->Html->link($this->Html->image("http://localhost/dbMiniProject/icons/view-2.png", array("alt" => "view")),"users/add",array('escape' => false));?><?php echo $this->Html->link(__('View', true), array('controller' => 'Users', 'action' => 'index')); ?></div>
            <div class="widget extended"><img class="widgetimg" src="http://localhost/dbMiniProject/icons/settings.png"/><?php echo $this->Html->link($this->Html->image("http://localhost/dbMiniProject/icons/add.png", array("alt" => "add")),"users/add",array('escape' => false));?><?php echo $this->Html->link(__(' Add', true), array('controller' => 'Groups', 'action' => 'add')); ?><br/><?php echo $this->Html->link($this->Html->image("http://localhost/dbMiniProject/icons/view-2.png", array("alt" => "view")),"users/add",array('escape' => false));?><?php echo $this->Html->link(__('View', true), array('controller' => 'Group', 'action' => 'index')); ?></div>
            <div class="widget extended"><img class="widgetimg" src="http://localhost/dbMiniProject/icons/passchange.png"/><?php echo $this->Html->link($this->Html->image("http://localhost/dbMiniProject/icons/add.png", array("alt" => "add")),"users/add",array('escape' => false));?><?php echo $this->Html->link(__(' Add', true), array('controller' => 'Users', 'action' => 'add')); ?><br/><?php echo $this->Html->link($this->Html->image("http://localhost/dbMiniProject/icons/view-2.png", array("alt" => "view")),"users/add",array('escape' => false));?><?php echo $this->Html->link(__('View', true), array('controller' => 'Users', 'action' => 'index')); ?></div>

        </div>

    </div>
    <h3><a href="#">User Management</a></h3>
    <div>
        
        <div>
            <div class="widget extended"><img class="widgetimg" src="http://localhost/dbMiniProject/icons/user.png"/><?php echo $this->Html->link($this->Html->image("http://localhost/dbMiniProject/icons/add.png", array("alt" => "add")),"users/add",array('escape' => false));?><?php echo $this->Html->link(__(' Add', true), array('controller' => 'Users', 'action' => 'add')); ?><br/><?php echo $this->Html->link($this->Html->image("http://localhost/dbMiniProject/icons/view-2.png", array("alt" => "view")),"users/add",array('escape' => false));?><?php echo $this->Html->link(__('View', true), array('controller' => 'Users', 'action' => 'index')); ?></div>
            <div class="widget extended"><img class="widgetimg" src="http://localhost/dbMiniProject/icons/group.png"/><?php echo $this->Html->link($this->Html->image("http://localhost/dbMiniProject/icons/add.png", array("alt" => "add")),"users/add",array('escape' => false));?><?php echo $this->Html->link(__(' Add', true), array('controller' => 'Groups', 'action' => 'add')); ?><br/><?php echo $this->Html->link($this->Html->image("http://localhost/dbMiniProject/icons/view-2.png", array("alt" => "view")),"users/add",array('escape' => false));?><?php echo $this->Html->link(__('View', true), array('controller' => 'Group', 'action' => 'index')); ?></div>
            <div class="widget extended"><img class="widgetimg" src="http://localhost/dbMiniProject/icons/user1.png"/><?php echo $this->Html->link($this->Html->image("http://localhost/dbMiniProject/icons/add.png", array("alt" => "add")),"users/add",array('escape' => false));?><?php echo $this->Html->link(__(' Add', true), array('controller' => 'Users', 'action' => 'add')); ?><br/><?php echo $this->Html->link($this->Html->image("http://localhost/dbMiniProject/icons/view-2.png", array("alt" => "view")),"users/add",array('escape' => false));?><?php echo $this->Html->link(__('View', true), array('controller' => 'Users', 'action' => 'index')); ?></div>
        </div>
        
    </div>
    <h3><a href="#">Employee Management</a></h3>
        <div>

            <div>
                <div class="widget extended"><img class="widgetimg" src="http://localhost/dbMiniProject/icons/driver.png"/><?php echo $this->Html->link($this->Html->image("http://localhost/dbMiniProject/icons/add.png", array("alt" => "add")),"users/add",array('escape' => false));?><?php echo $this->Html->link(__('Add', true), array('controller' => 'Drivers', 'action' => 'add')); ?><br/><?php echo $this->Html->link($this->Html->image("http://localhost/dbMiniProject/icons/view-2.png", array("alt" => "view")),"users/add",array('escape' => false));?><?php echo $this->Html->link(__('View', true), array('controller' => 'Drivers', 'action' => 'index')); ?></div>
                <div class="widget extended"><img class="widgetimg" src="http://localhost/dbMiniProject/icons/assistant.png"/><?php echo $this->Html->link($this->Html->image("http://localhost/dbMiniProject/icons/add.png", array("alt" => "add")),"users/add",array('escape' => false));?><?php echo $this->Html->link(__('Add', true), array('controller' => 'Assistants', 'action' => 'add')); ?><br/><?php echo $this->Html->link($this->Html->image("http://localhost/dbMiniProject/icons/view-2.png", array("alt" => "view")),"users/add",array('escape' => false));?><?php echo $this->Html->link(__('View', true), array('controller' => 'Assistants', 'action' => 'index')); ?></div>
            </div>

        </div>
    <?php endif;?>
    <h3><a href="#">Route Management</a></h3>
    <div>
        
        <div>
            
            <div class="widget extended"><img class="widgetimg" src="http://localhost/dbMiniProject/icons/travel_bus.png"/><?php echo $this->Html->link($this->Html->image("http://localhost/dbMiniProject/icons/add.png", array("alt" => "add")),"users/add",array('escape' => false));?><?php echo $this->Html->link(__('Add', true), array('controller' => 'Users', 'action' => 'add')); ?><br/><?php echo $this->Html->link($this->Html->image("http://localhost/dbMiniProject/icons/view-2.png", array("alt" => "view")),"users/add",array('escape' => false));?><?php echo $this->Html->link(__('View', true), array('controller' => 'Users', 'action' => 'index')); ?></div>
            <div class="widget extended"><img class="widgetimg" src="http://localhost/dbMiniProject/icons/Bus-Stop-128.png"/><?php echo $this->Html->link($this->Html->image("http://localhost/dbMiniProject/icons/add.png", array("alt" => "add")),"users/add",array('escape' => false));?><?php echo $this->Html->link(__('Add', true), array('controller' => 'Groups', 'action' => 'add')); ?><br/><?php echo $this->Html->link($this->Html->image("http://localhost/dbMiniProject/icons/view-2.png", array("alt" => "view")),"users/add",array('escape' => false));?><?php echo $this->Html->link(__('View', true), array('controller' => 'Group', 'action' => 'index')); ?></div>
            <div class="widget extended"><img class="widgetimg" src="http://localhost/dbMiniProject/icons/city-icon.png"/><?php echo $this->Html->link($this->Html->image("http://localhost/dbMiniProject/icons/add.png", array("alt" => "add")),"users/add",array('escape' => false));?><?php echo $this->Html->link(__('Add', true), array('controller' => 'Users', 'action' => 'add')); ?><br/><?php echo $this->Html->link($this->Html->image("http://localhost/dbMiniProject/icons/view-2.png", array("alt" => "view")),"users/add",array('escape' => false));?><?php echo $this->Html->link(__('View', true), array('controller' => 'Users', 'action' => 'index')); ?></div>
           
        </div>
        
    </div>
    <h3><a href="#">Trip Management</a></h3>
        <div>

            <div>
                <div class="widget extended"><img class="widgetimg" src="http://localhost/dbMiniProject/icons/travel_bus.png"/><?php echo $this->Html->link($this->Html->image("http://localhost/dbMiniProject/icons/add.png", array("alt" => "add")),"users/add",array('escape' => false));?><?php echo $this->Html->link(__('Add', true), array('controller' => 'Drivers', 'action' => 'add')); ?><br/><?php echo $this->Html->link($this->Html->image("http://localhost/dbMiniProject/icons/view-2.png", array("alt" => "view")),"users/add",array('escape' => false));?><?php echo $this->Html->link(__('View', true), array('controller' => 'Drivers', 'action' => 'index')); ?></div>
                <div class="widget extended"><img class="widgetimg" src="http://localhost/dbMiniProject/icons/routes.png"/><?php echo $this->Html->link($this->Html->image("http://localhost/dbMiniProject/icons/add.png", array("alt" => "add")),"users/add",array('escape' => false));?><?php echo $this->Html->link(__('Add', true), array('controller' => 'Routes', 'action' => 'add')); ?><br/><?php echo $this->Html->link($this->Html->image("http://localhost/dbMiniProject/icons/view-2.png", array("alt" => "view")),"users/add",array('escape' => false));?><?php echo $this->Html->link(__('View', true), array('controller' => 'Routes', 'action' => 'index')); ?></div>
                <div class="widget extended"><img class="widgetimg" src="http://localhost/dbMiniProject/icons/trps.png"/><?php echo $this->Html->link($this->Html->image("http://localhost/dbMiniProject/icons/add.png", array("alt" => "add")),"users/add",array('escape' => false));?><?php echo $this->Html->link(__('Add', true), array('controller' => 'Assistants', 'action' => 'add')); ?><br/><?php echo $this->Html->link($this->Html->image("http://localhost/dbMiniProject/icons/view-2.png", array("alt" => "view")),"users/add",array('escape' => false));?><?php echo $this->Html->link(__('View', true), array('controller' => 'Assistants', 'action' => 'index')); ?></div>
            </div>

        </div>

</div>
