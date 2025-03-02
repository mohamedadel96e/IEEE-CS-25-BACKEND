<?php

$friends = [
    "AG" => "Ahmed Gamal",
    "OM" => "Osama Mohamed",
    "MG" => "Mahmoud Gamal",
    "AS" => "Ahmed Samy",
    "FA" => "Farid Ahmed",
    "SM" => "Sayed Mohamed"
];

$res = [];

foreach ($friends as $key => $value) {
    $res[] = [
        strtolower($key) => $value
    ];
}
echo "<pre>";
print_r($res);
echo "</pre>";
/*
 * Array
(
  [0] => Array
    (
      [ag] => Ahmed Gamal
      [om] => Osama Mohamed
    )
  [1] => Array
    (
      [mg] => Mahmoud Gamal
      [as] => Ahmed Samy
    )
  [2] => Array
    (
      [fa] => Farid Ahmed
      [sm] => Sayed Mohamed
    )
)
 * */