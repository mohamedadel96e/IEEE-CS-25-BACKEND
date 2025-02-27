<?php

function calculate($num1, $num2, $operation = 'add') {
  if (empty($operation)) {
    $operation = 'add';
  }

  $operation = strtolower($operation);
  if ($operation === 'a') {
    $operation = 'add';
  } elseif ($operation === 's') {
    $operation = 'subtract';
  } elseif ($operation === 'm') {
    $operation = 'multiply';
  }


  switch ($operation) {
    case 'add':
      return $num1 + $num2;
    case 'subtract':
      return $num1 - $num2;
    case 'multiply':
      return $num1 * $num2;
    default:
      return "This operation does not exist.";
  }
}

// Needed Output
echo calculate(10, 20) . "<br>"; // 30
echo calculate(10, 20, "a") . "<br>"; // 30
echo calculate(10, 20, "s") . "<br>"; // -10
echo calculate(10, 20, "subtract") . "<br>"; // -10
echo calculate(10, 20, "multiply") . "<br>"; // 200
echo calculate(10, 20, "m") . "<br>"; // 200