<?php
include_once "MyHeader.php";
?>
<h3>Add a Movie</h3>
<br />
Whats the name of the movie? (string): &nbsp;
<input type="text" id="title" value="" placeholder="Title..." />
<br />
What do you want to put as the description? (string): &nbsp;
<input type="text" id="description" value="" placeholder="Description..." />
<br />
What genre is this film? (string): &nbsp;
<input type="text" id="genre" value="" placeholder="Genre..." />
<br />
What rating does this film have? (string): &nbsp;
<input type="text" id="rating" value="" placeholder="Rating..." />
<br />
What year was this film released? (Between 1887-2025): &nbsp;
<input type="number" min="1887" max="2025" id="releaseyear" value="" placeholder="Release Year..." />
<br/>
<button name="a" onclick="myClickEvent()">Add Movie!</button>
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
        // alert("data: " + document.getElementById("dogId").value); // Use for debugging

        loadJson(document.getElementById("title").value, document.getElementById("description").value, document.getElementById("genre").value, document.getElementById("rating").value, document.getElementById("releaseyear").value);
    }
    // ---------------------------------
            // Call the microservice and get the data
    function loadJson(title, description, genre, rating, releaseyear) {
        // alert("id: " + id); // Use for debugging
        request.open('POST', 'apiAddQuery.php?title=' + title + '&description=' + description + '&genre=' + genre + '&rating=' + rating + '&releaseyear=' + releaseyear);
        request.onload=loadComplete;
        request.send();
    }

    // Run when the data has been loaded
    function loadComplete(evt) {
        var myResponse;
        var myData;
        var myReturn = "<table><tr><td>Title &nbsp;  &nbsp; </td><td>Description &nbsp;  &nbsp; </td><td>Genre &nbsp;  &nbsp; </td><td>Rating &nbsp; &nbsp; </td><td>Release Year &nbsp; </td></tr>";

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