<?php
include_once "MyHeader.php";
?>
<h3>Delete a Movie</h3>
<br />
We just need the name of the movie you wish to delete: &nbsp;
<input type="text" id="title" value="" placeholder="Title..."/>
<button name="a" onclick="myClickEvent()">Submit</button>
<input type="submit" name="sgs" value="Click me" />
<p id="A"></p>
<p id="jsonData"></p>

<script>
   var request = new XMLHttpRequest();

    $(document).ready(function () {
        // alert("Ready"); // Use for debugging

    });
    // ---------------------------------
    // Click event
    function myClickEvent() {
         // alert("my click"); // Use for debugging
        // alert("data: " + document.getElementById("title").value); // Use for debugging

        loadJson(document.getElementById("title").value);
    }
    // ---------------------------------
            // Call the microservice and get the data
    function loadJson(title) {
        // alert("id: " + id); // Use for debugging
        request.open('GET', 'apiDeleteQuery.php?title=' + title);
        request.onload=loadComplete;
        request.send();
    }

    // Run when the data has been loaded
    function loadComplete(evt) {
        var myResponse;
        var myData;
        var myReturn = "<table><tr><td>Title &nbsp;  &nbsp; </td><td>Description &nbsp; &nbsp; </td><td>Genre &nbsp; &nbsp; </td><td>Rating &nbsp;  &nbsp; </td><td>Release Year &nbsp;  &nbsp; </td></tr>";

        myResponse = request.responseText;
        //alert("A: " + myResponse); // Use for debugging
        //document.getElementById("A").innerHTML = myResponse; // Display the json for debugging
        myData = JSON.parse(myResponse);

        // alert(myData);

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