<?php

$mix = [1, 2, "A", "B", "C", 3, 4];

$count = 0;
$letters = 0;
foreach ($mix as $value) {
  if (is_numeric($value)) {
    echo $value . "<br>";
    $count++;
  }else {
    $letters++;
  }
}
echo "$count numbers printed";
echo "$letters Letters ignored";