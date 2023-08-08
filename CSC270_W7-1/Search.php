

<?php
include_once "dbConnector.php";

header('Content-Type: application/json');

$myJSON = "";
$row = null;
$search = "";

// Process if there is a parameter (id)
if (array_key_exists("searchTerm", $_GET) == TRUE) {
    // Get the db connection
    // Get the data
    $myDbConn = ConnGet();
    $search = $_GET["searchTerm"];



    $myJSON = null;
    $row = null;




    // Get the records
    $dataSet = Search($myDbConn, $search);

    // If the data exists, format the values
    if ($dataSet) {
        // $myJSON = "[";
        while ($row = mysqli_fetch_array($dataSet)) {
            $rowArray[] = json_decode($row[0]);
        }

        // Format array as json
        $myJSON = json_encode($rowArray);
    }
    mysqli_close($myDbConn);
}

echo $myJSON;

?>


