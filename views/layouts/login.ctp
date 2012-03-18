<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
    <head>

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
            <title>Bus Route Management System : User Login</title>
            <?php echo $this->Html->css('cake.generic'); ?>          
            <?php echo $this->Html->script('jquery-1.6.2.min.js'); ?>
            <?php echo $this->Html->css('login'); ?>
            <script>
                $(function() {
                    $('#signin').click(function() {
                        $.ajax({
                            type: 'POST',
                            data:  $("#log").serialize(),
                            success :function() { location.reload(); }
                        });
                        return false;
                    });
                    
                });
            </script>
    </head>
    <body>
        <div id="loginWrap">
            <div id="loginMain">
                <div id="loginLogin"></div>
                <div id="loginhead"></div>
                <div id="loginform">
                    <form id="log">
                        <label><input name="data[User][username]" value="username" onfocus="if(this.value=='username')this.value=''" onblur="if(this.value=='')this.value='username'" type="text"></label>
                        <label><input name="data[User][password]" value="password" onfocus="if(this.value=='password')this.value=''" onblur="if(this.value=='')this.value='password'" type="password"></label>
                    </form>
                    <label><a id="signin"  href="#">SIGN IN</a></label>
                    <div class="list">
                        <a href="#">forgot password?</a>
                        <div class="space"></div>
                        <a href="#">remember me</a>
                    </div>
                </div>
            </div>
        </div>


    </body>
</html>