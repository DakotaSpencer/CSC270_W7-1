<?php
include_once "MyHeader.php";
?>
<?php
$listName = $_GET["list"];

if(isset($_GET["list"])){
    if(strval($listName)=="history"){
        echo '
        <div>
            <h1>History</h1>
            <div>List Content goes here</div>
        </div>
        ';
    }elseif(strval($listName)=="wl"){
        echo '
        <div>
            <h1>Watch Later</h1>
            <div>List Content goes here</div>
        </div>
        ';
    }elseif(strval($listName)=="recommendations"){
        echo '
        <div>
            <h1>Recommendations</h1>
            <div>List Content goes here</div>
        </div>
        ';
    }
}else{
    echo "nothing yet";
}
?>