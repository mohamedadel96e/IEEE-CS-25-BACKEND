<?php

$greet = function($name) {
  return "Greetings " . $name;
};


$greetArrow = fn($name) => "Greetings " . $name;


echo $greet("Osama"); // Outputs: Greetings Osama
echo $greetArrow("Osama"); // Outputs: Greetings Osama