<?php
$linkTO = [
    "Home" => "index.php",
    "Genre" => "Genre.php",
    "About" => "About.php",
    "Account" => "account.php",
    "Lists" => "list.php",
    "Preferences" => "Preferences.php",
    "Login" => "Login.php",
    "Signup" => "SignUp.php"
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
        <a href="' . $linkTO["Genre"] . '?genre=christmas">Christmas</a>
        <a href="' . $linkTO["Genre"] . '?genre=comedy">Comedy</a>
        <a href="' . $linkTO["Genre"] . '?genre=fantasy">Fantasy</a>
        <a href="' . $linkTO["Genre"] . '?genre=horror">Horror</a>
        <a href="' . $linkTO["Genre"] . '?genre=sci-fi">Sci-Fi</a>
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
        <a href="' . $linkTO["Lists"] . '?list=history">History</a>
        <a href="' . $linkTO["Lists"] . '?list=wl">Watch Later</a>
        <a href="editLists.php">Edit Lists</a>
    </div>
</div>

<div class="dropdown">
    <button class="dropbtn">
        <a href="' . $linkTO["Preferences"] . '" name="Preferances">Preferences</a>
    </button>
</div>


<div class="dropdown">
    <button class="dropbtn">About</button>
    <div class="dropdown-content">
        <a href="' . $linkTO["About"] . '?section=location" name="Locations">Locations</a>
        <a href="' . $linkTO["About"] . '?section=contact" name="EmailUs">Email Us</a>
    </div>
</div>

<div class="dropdown">
    <button class="dropbtn">
        <a href="' . $linkTO["Login"] . '" name="Login">Login</a>
    </button>
</div>
<div class="dropdown">
    <button class="dropbtn">
        <a href="' . $linkTO["Signup"] . '" name="Signup">signUp</a>
    </button>
</div>
'
?>