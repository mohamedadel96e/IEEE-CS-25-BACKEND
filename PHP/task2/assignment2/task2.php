<?php


$index = 0;
$number = 2;

while ($number <= 20) {
  echo $number . "<br>";
  $number += 2;
}


do {
  echo $number . "<br>";
  $number += 2;
} while ($number <= 20);


for ($number = 2; $number <= 20; $number += 2) {
  echo $number . "<br>";
}