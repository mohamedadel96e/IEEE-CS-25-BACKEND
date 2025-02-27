<?php


$start = 0;
$mix = [1, 2, 3, "A", "B", "C", 4];

foreach ($mix as $value) {
  if (is_numeric($value) && $value > $start && $value != 1) {
    echo $value . "<br>";
  }
}