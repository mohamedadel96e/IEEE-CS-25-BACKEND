<?php

function sum_all(...$args) {
  $sum = 0;
  foreach ($args as $num) {
    if($num == 5)
      continue;
    if($num == 10)
      $num = 20;
    $sum += $num;
  }
  return $sum;
}

echo sum_all(10, 12, 5, 6, 6, 10); // 64
echo "<br>";
echo sum_all(5, 10, 5, 10); // 40