<?php
include_once "MyHeader.php";
?>

<?php
$section = strval($_GET["section"]);

if ($section == "location") {
    include_once "Locations.php";
}elseif($section == "contact"){
    include_once "ContactUs.php";
}
?>