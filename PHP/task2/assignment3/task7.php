<?php


function calculate(float $num_one, float $num_two):float {
  return $num_one + $num_two;
}

echo calculate(20, 10) . "<br>"; // 30
echo gettype(calculate(20, 10)); // double