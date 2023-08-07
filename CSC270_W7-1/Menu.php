<?php
$linkTO = [
    "Home" => "index.php",
    "Genre" => "genre.php",
    "About" => "about.php",
    "Account" => "account.php",
    "Lists" => "list.php",
    "Preferances" => "preferances.php"
]
?>
<?php

echo'
<div class="dropdown">
    <button class="dropbtn">
        <a href="'.$linkTO["Home"].'" name="Index">Home</a>
    </button>
</div>

<div class="dropdown">
    <button class="dropbtn">Genres</button>
    <div class="dropdown-content">
        <a href="' . $linkTO["Genre"] . '?genre=action">Action</a>
        <a href="' . $linkTO["Genre"] . '?genre=adventure">Adventure</a>
        <a href="' . $linkTO["Genre"] . '?genre=animation">Animation</a>
        <a href="' . $linkTO["Genre"] . '?genre=comedy">Comedy</a>
        <a href="' . $linkTO["Genre"] . '?genre=drama">Drama</a>
        <a href="' . $linkTO["Genre"] . '?genre=fantasy">Fantasy</a>
        <a href="' . $linkTO["Genre"] . '?genre=horror">Horror</a>
        <a href="' . $linkTO["Genre"] . '?genre=romance">Romance</a>
    </div>
</div>

<div class="dropdown">
    <button class="dropbtn">About</button>
    <div class="dropdown-content">
        <a href="' . $linkTO["About"] . '?section=location" list="ListID">Locations</a>
        <a href="' . $linkTO["About"] . '?section=contact" name="EmailUs">Email Us</a>
    </div>
</div>

<div class="dropdown">
    <button class="dropbtn">
        <a href="' . $linkTO["Account"] . '" name="Account">Account</a>
    </button>
</div>

<div class="dropdown">
    <button class="dropbtn">Lists</button>
    <div class="dropdown-content">
        <a href="' . $linkTO["Lists"] . '?list=history" list="ListID">History</a>
        <a href="' . $linkTO["Lists"] . '?list=wl" list="ListID">Watch Later</a>
        <a href="' . $linkTO["Lists"] . '?list=recommendations" list="ListID">Recommendations</a>
        <a href="' . $linkTO["Lists"] . '" list="ListID">Custom List 1</a>
        <a href="' . $linkTO["Lists"] . '" list="ListID">Custom List 2</a>
        <a href="editLists.php">Edit Lists</a>
    </div>
</div>

<div class="dropdown">
    <button class="dropbtn">
        <a href="' . $linkTO["Preferances"] . '" name="Preferances">Preferances</a>
    </button>
</div>'
?>