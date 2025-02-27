<?php
function check($a, $b, $c)
{
  if($a > $b) {
    echo "A is larger than B";
    echo "<br>";
  }
  if($a > $c) {
    echo "A is larger than C";
    echo "<br>";
  }
  if( $a <= $b && $a <= $c) {
    echo "A Is Not Larger Than B Or C";
    echo "<br>";
  }
}

$a = 100;
$b = 200;
$c = 300;
check($a, $b, $c);


$a = 200;
$b = 100;
$c = 300;
check($a, $b, $c);

$a = 200;
$b = 200;
$c = 100;
check($a, $b, $c);