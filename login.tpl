<?php echo $header; ?>
<div id="content">  
  <div class="box" style="width: 400px; min-height: 300px; margin-top: 40px; margin-left: auto; margin-right: auto;">
    <div class="heading">
      <h1><img src="view/image/lockscreen.png" alt="" /> <?php echo $text_login; ?></h1>
    </div>
    <div class="content" style="min-height: 150px; overflow: hidden;">
      <?php if ($success) { ?>
      <div class="success"><?php echo $success; ?></div>
      <?php } ?>
      <?php if ($error_warning) { ?>
      <div class="warning"><?php echo $error_warning; ?></div>
      <?php } ?>
      <form action="<?php echo $action; ?>" method="post" enctype="multipart/form-data" id="form">
        <table style="width: 100%;">
          <tr>
            <td style="text-align: center;" rowspan="4"><img src="view/image/login.png" alt="<?php echo $text_login; ?>" /></td>
          </tr>
          <tr>
            <td><?php echo $entry_username; ?><br />
              <input type="text" name="username" value="<?php echo $username; ?>" style="margin-top: 4px;" />
              <br />
              <br />
              <?php echo $entry_password; ?><br />
              <input type="password" name="password" value="<?php echo $password; ?>" style="margin-top: 4px;" />
              <!--<?php /*
              <br />
              <a href="<?php echo $forgotten; ?>"><?php echo $text_forgotten; ?></a>
              */ ?>-->
              <br />
              <br />
              <input type="text" name="captcha" size="5" value="<?php echo $captcha; ?>" style="margin-top:4px;" /> &nbsp;&nbsp; <img src="<?php echo $img_captcha; ?>" style="margin-top:4px;" id="img-code" align="top" />
              &nbsp;<a id="ref-code">刷新</a>
              </td>
          </tr>
          <tr>
            <td>&nbsp;</td>
          </tr>
          <tr>
            <td style="text-align: right;"><a onclick="$('#form').submit();" class="button"><?php echo $button_login; ?></a></td>
          </tr>
        </table>
        <?php if ($redirect) { ?>
        <input type="hidden" name="redirect" value="<?php echo $redirect; ?>" />
        <?php } ?>
      </form>
    </div>
  </div>
</div>
<script type="text/javascript"><!--
$('#form input').keydown(function(e) {
	if (e.keyCode == 13) {
		$('#form').submit();
	}
});
var rnd = Math.round(Math.random()*10000); 
$('#ref-code').live('click', function(){
	//$('#img-code').attr('src', '<?php echo $img_captcha; ?>&rnd='+Math.round(Math.random()*10000));
	
	$('#img-code').after('<img src="view/image/loading.gif" class="wait" />');
	_imgsrc = '<?php echo $img_captcha; ?>&rnd='+Math.round(Math.random()*10000);
	var n = new Image();
	n.src = _imgsrc;
	n.onload = function(){
		n.onload = null;
		$('#img-code').attr('src', n.src);
		$('.wait').remove();
	};
});
//--></script> 
<?php echo $footer; ?>
