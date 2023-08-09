<?php
$linkTO = [
    "Home" => "index.php",
    "Genre" => "genre.php",
    "About" => "about.php",
    "Account" => "account.php",
    "Lists" => "list.php",
    "Preferences" => "preferences.php"
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
        <a href="' . $linkTO["Genre"] . '?genre=animation">Animation</a>
        <a href="' . $linkTO["Genre"] . '?genre=comedy">Comedy</a>
        <a href="' . $linkTO["Genre"] . '?genre=christmas">Christmas</a>
        <a href="' . $linkTO["Genre"] . '?genre=fantasy">Fantasy</a>
        <a href="' . $linkTO["Genre"] . '?genre=horror">Horror</a>
        <a href="' . $linkTO["Genre"] . '?genre=sci-fi">Sci-Fi</a>
    </div>
</div>

<div class="dropdown">
    <button class="dropbtn">About</button>
    <div class="dropdown-content">
        <a href="' . $linkTO["About"] . '?section=location">Locations</a>
        <a href="' . $linkTO["About"] . '?section=contact">Email Us</a>
    </div>
</div>


<div class="dropdown">
    <button class="dropbtn">Lists</button>
    <div class="dropdown-content">
        <a href="' . $linkTO["Lists"] . '?list=history">History</a>
        <a href="' . $linkTO["Lists"] . '?list=watch later">Watch Later</a>
        <a href="?list=edit lists">Edit Lists</a>
    </div>
</div>

<div class="dropdown">
    <button class="dropbtn">
        <a href="' . $linkTO["Preferences"] . '?name="Preferences">Preferences</a>
    </button>
</div>'
?>