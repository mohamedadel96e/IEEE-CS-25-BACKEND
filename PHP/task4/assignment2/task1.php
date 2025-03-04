<?php 
  date_default_timezone_set("Asia/Riyadh");

  $d = date_create();

  echo date_format($d, "D, d M y - d:m:y A") . "<br />";
  echo date_format($d, "l, d F Y - d:m:y A");
?>