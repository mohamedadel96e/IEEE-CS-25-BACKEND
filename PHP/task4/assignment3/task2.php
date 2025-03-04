<?php 
  
  echo "<pre>";
  print_r($_COOKIE) . "<br />";
  echo "</pre>";
  if(isset($_COOKIE["color"]) && isset($_COOKIE["font"])) {
    echo "Your Color is " . $_COOKIE["color"] . "And ";
    echo "Your Font Size is " . $_COOKIE["font"] . "<br />";
  }
?>