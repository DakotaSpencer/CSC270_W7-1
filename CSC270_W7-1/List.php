<?php
include_once "MyHeader.php";
?>
<?php
$listName = $_GET["list"];

if(isset($_GET["list"])){
    if(strval($listName)=="History"){
        echo '
        <div>
            <h1>History</h1>
            <div>List Content goes here</div>
        </div>
        ';
    }elseif(strval($listName)=="Watch Later"){
        echo '
        <div>
            <h1>Watch Later</h1>
            <div>List Content goes here</div>
        </div>
        ';
    }elseif(strval($listName)=="Edit Lists"){
        echo '
        <div>
            <h1>Edit Lists</h1>
            <div>List Content goes here</div>
        </div>
        ';
    }
}else{
    echo "Nothing yet.";
}
?>
<script>
   var request = new XMLHttpRequest();

      window.onload = function() {
  getParams();
};
    // ---------------------------------
    // Click event
    function getParams() {
         // alert("my click"); // Use for debugging

        loadJson(document.getElementById("list").innerHTML);
    }
    // ---------------------------------
            // Call the microservice and get the data
    function loadJson(genre) {
        // alert("id: " + id); // Use for debugging
        request.open('GET', 'apiListQuery.php?list=' + list);
        request.onload=loadComplete;
        request.send();
    }

    // Run when the data has been loaded
    function loadComplete(evt) {
        var myResponse;
        var myData;
        var myReturn = "<table><tr><td>Title</td><td>Description</td><td>Genre</td><td>Rating</td><td>Release Year</td></tr>";

        myResponse = request.responseText;
        //alert("A: " + myResponse); // Use for debugging
        //document.getElementById("A").innerHTML = myResponse; // Display the json for debugging
        myData = JSON.parse(myResponse);

        // alert(myData);
        console.log("My Data:", myData);

        // Loop through each json record and create the HTML
        for (index in myData) {
            myReturn += "<tr><td>" + myData[index].Title + "</td><td>" +
                myData[index].MovieDescription + "</td><td>" +
                myData[index].Genre + "</td><td>" +
                myData[index].Rating + "</td><td>" +
                myData[index].ReleaseYear + "</td></tr>";

        }
        myReturn += "</table>";
        document.getElementById("jsonData").innerHTML = myReturn; // Display table
    }


</script>
<?php
include_once "MyFooter.php";
?>