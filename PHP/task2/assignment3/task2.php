<?php

function get_arguments(...$args) {
  return implode(" ", $args);
}

echo get_arguments("Hello", "Elzero", "Web", "School"); // Hello Elzero Web School
echo "<br>";
echo get_arguments("I", "Love", "PHP"); // I Love PHP