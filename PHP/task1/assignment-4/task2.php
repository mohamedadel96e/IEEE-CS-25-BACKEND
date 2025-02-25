<?php
$a = 10;

echo +$a . "<br>"; // 10
echo gettype(+$a). "<br>"; // integer

echo 0 + $a . "<br>"; // 10
echo gettype(0 + $a). "<br>"; // integer

echo intval($a) . "<br>"; // 10
echo gettype(intval($a)). "<br>"; // integer

echo (int) $a . "<br>"; // 10
echo gettype((int) $a). "<br>"; // integer

settype($a, "integer");
echo $a . "<br>"; // 10
echo gettype($a). "<br>"; // integer