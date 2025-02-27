<?php

$start = 10;
$end = 0;
$stop = 3;

for ($i = $start; $i >= $stop; $i--) {
  echo str_pad($i, 2, "0", STR_PAD_LEFT) . "<br>";
}
