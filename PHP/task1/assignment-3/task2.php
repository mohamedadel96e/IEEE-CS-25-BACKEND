<?php

$name = "elzero";

$$name = "web";

echo $elzero; // web
echo "<br>";
echo $$name; // web
echo "<br>";
echo "${$name}"; // web
echo "<br>";
echo ${"elzero"}; // web
echo "<br>";


