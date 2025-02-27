<?php

function check_status($a, $b, $c): string
{

  if (is_string($a)) {
    $name = $a;
  } elseif (is_string($b)) {
    $name = $b;
  } else {
    $name = $c;
  }

  if (is_numeric($a)) {
    $age = $a;
  } elseif (is_numeric($b)) {
    $age = $b;
  } else {
    $age = $c;
  }

  if (is_bool($a)) {
    $available = $a;
  } elseif (is_bool($b)) {
    $available = $b;
  } else {
    $available = $c;
  }


  if ($available) {
    return "Hello $name, Your Age Is $age, You Are Available For Hire";
  } else {
    return "Hello $name, Your Age Is $age, You Are Not Available For Hire";
  }
}

// Needed Output
echo check_status("Osama", 38, true) . "<br>"; // "Hello Osama, Your Age Is 38, You Are Available For Hire"
echo check_status(38, "Osama", true) . "<br>"; // "Hello Osama, Your Age Is 38, You Are Available For Hire"
echo check_status(true, 38, "Osama") . "<br>"; // "Hello Osama, Your Age Is 38, You Are Available For Hire"
echo check_status(false, "Osama", 38) . "<br>"; // "Hello Osama, Your Age Is 38, You Are Not Available For Hire"