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

<h1>Add a movie to our collection:</h1>
<form action="insert.php" method="POST">
    <p>
        <label for="title">Title</label>
        <input type="text" name="title" id="ttitle" />
    </p>
    <p>
        <label for="description">Description</label>
        <input type="text" name="last_name" id="description" />
    </p>
    <p>
        <label for="genre">Genre</label>
        <input type="text" name="genre" id="genre" />
    </p>
    <p>
        <label for="rating">Rating</label>
        <input type="text" name="rating" id="rating" />
    </p>
    <p>
        <label for="releaseYear">Release Year</label>
        <input type="text" name="releaseYear" id="releaseYear" />
    </p>
    <input type="submit" value="Submit" />
</form>


<?php
// Always close db connection
if ($myDbConn) {
    mysqli_close($myDbConn);
}

include_once "MyFooter.php";
?>

