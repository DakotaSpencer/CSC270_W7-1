<?php
include_once "MyHeader.php";
?>

<?php
// Move to Index
$PageId = "0";
// Get the page parameter
if (array_key_exists("PageId", $_GET) == true) {
    $PageId = $_GET["PageId"];
}

?>

<?php

// Get given page
$PageData = PageContentGet($myDbConn, $PageId);
// Display page data
PageDisplay($PageData);
mysqli_free_result($PageData);

// Display sub page links

$SubPages = MyPagesGet($myDbConn, $PageId); 
if (($PageId != "0") && ($SubPages) && ($SubPages->num_rows > 0)) {
    echo "Sub page links: ";
    // Display the main menu
    MenuDisplay($SubPages);
    mysqli_free_result($SubPages);
}
else
{
    echo "<br /> Welcome. . . Search below or click a menu link at the top to get started!";
}

?>

<?php

    echo '
    <div>
        <form>
            <input placeholder="Search..." type="text"/>
            <button type="submit">Search</button>
        </form>
    </div>
    '

?>

<?php
// Always close db connection
if ($myDbConn) {
    mysqli_close($myDbConn);
}

include_once "MyFooter.php";
?>

