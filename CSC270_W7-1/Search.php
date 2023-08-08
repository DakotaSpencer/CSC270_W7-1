<?php
echo "Search Term: " . $_GET["searchTerm"];

?>

<?php
$searchterm = $_GET["searchTerm"];
// Get search data
$SearchData = Search($myDbConn, $searchterm);
// Display page data
SearchDisplay($SearchData);
mysqli_free_result($PageData);
return SearchDisplay($SearchData);

?>


<?php
// Always close db connection
if ($myDbConn) {
    mysqli_close($myDbConn);
}

include_once "MyFooter.php";
?>
