<?php
$admins = ["Osama", "Ahmed", "Sayed"];

if($_SERVER['REQUEST_METHOD'] === 'POST') {
  echo "The Request Method Is Post And Username Is $_POST[user]" . "<br>";
  if(in_array($_POST['user'], $admins)) {
    echo "This Username $_POST[user] Is Admin";
  }
}

?>


<!doctype html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport"
        content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
  <meta http-equiv="X-UA-Compatible" content="ie=edge">
  <title>Document</title>
</head>
<body>
<form action="" method="POST">
  <label>
    <input type="text" name="user">
  </label>
  <input type="submit" value="Send">
</form>
</body>
</html>
