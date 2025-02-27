<?php


$help_num = 3;
$nums = [4, 5, 6, 1, 2, 3];
$names = ["Ahmed", "Sayed", "Osama", "Mahmoud", "Gamal"];

foreach ($names as $name) {
  if ($name == "Osama" || $name == "Sayed") {
    echo "$name";
    echo "<br>";
  }
}
