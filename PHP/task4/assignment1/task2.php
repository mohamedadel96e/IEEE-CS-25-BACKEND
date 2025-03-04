<?php 
  
  echo "Size In Megabyte Is " . round(filesize("D:\Videos\ROVVideo.mkv") / 1024 / 1024);
  echo "<br />";
  echo "Size In Kilobyte Is " . round(filesize("D:\Videos\ROVVideo.mkv") / 1024);

?>