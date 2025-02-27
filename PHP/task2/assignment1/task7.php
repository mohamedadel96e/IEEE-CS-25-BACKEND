<?php

$num_one = 23;
$num_two = 5;
$op = "+";

if ($op == "+") {
  echo $num_one + $num_two;
} elseif ($op == "-") {
  echo $num_one - $num_two;
} elseif ($op == "*") {
  echo $num_one * $num_two;
} elseif ($op == "/") {
  echo intdiv($num_one, $num_two) . "\n";
  echo $num_one % $num_two;
} else {
  echo "Unknown Operation";
}