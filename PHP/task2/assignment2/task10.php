<?php

$help_num = 4;
$nums = [2, 4, 5, 6, 10];

foreach ($nums as $index => $num) {
  $opposite_index = count($nums) - 1 - $index;

  echo "\"$num + {$nums[$opposite_index]} = " . ($num + $nums[$opposite_index]) . "\"" . "<br>";
}
