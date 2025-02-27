<?php

function greeting($name, $gender = "")
{
  switch ($gender) {
    case "Male":
      echo "Hello Mr. $name";
      break;
    case "Female":
      echo "Hello Miss. $name";
      break;
    default:
      echo "Hello $name";
  }
  echo "<br>";
}

echo greeting("Osama", "Male"); // Hello Mr Osama
echo greeting("Eman", "Female"); // Hello Miss Eman
echo greeting("Sameh"); // Hello Sameh