<?php
$listName = $_GET["list"];

switch ($listName){
    case "history":
        echo "<div>History has Loaded</div>";
    case "wl":
        echo "<div>Watch Later</div>";
    case "recommendations":
        echo "<div>Recomencations are here!</div>";
}

?>