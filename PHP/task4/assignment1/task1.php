<?php 
  echo number_format(disk_total_space("C:") / 1024 / 1024 / 1024 / 1024, 2) . " Terabyte";
?>