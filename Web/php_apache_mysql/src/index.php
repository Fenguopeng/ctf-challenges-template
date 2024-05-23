<?php
ini_set('open_basedir', '/var/www/html/');
error_reporting(0);

if(isset($_POST['cmd'])){
    $cmd = escapeshellcmd($_POST['cmd']); 
     if (!preg_match('/ls|dir|nl|nc|cat|tail|more|flag|sh|cut|awk|strings|od|curl|ping|\*|sort|ch|zip|mod|sl|find|sed|cp|mv|ty|grep|fd|df|sudo|more|cc|tac|less|head|\.|{|}|tar|zip|gcc|uniq|vi|vim|file|xxd|base64|date|bash|env|\?|wget|\'|\"|id|whoami/i', $cmd)) {
         system($cmd);
  }
}


show_source(__FILE__);
?>