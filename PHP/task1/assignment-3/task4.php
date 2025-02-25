<?php

echo $_SERVER['DOCUMENT_ROOT'];
echo "<br>";

echo $_SERVER['SERVER_NAME'];
echo "<br>";

echo isset($_ENV['SystemRoot']) ? $_ENV['SystemRoot'] : 'Not Found';
echo "<br>";

echo isset($_ENV['OPENSSL_CONF']) ? $_ENV['OPENSSL_CONF'] : 'Not Found';