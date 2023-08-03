<?php
$link = [
    "link1" => "index.php",
    "link2" => "page2.php",
    "link3" => "page3.php",
    "link4" => "/LogSignPages/Login.php",
    "link5" => "/LoginSignFunct/SignUp.php"
];
?>
<div class="dropdown"><button class="dropbtn"><a href="index.php" name="Index">Home</a></button></div>

<div class="dropdown">
    <button class="dropbtn">Genres</button>
    <div class="dropdown-content">
        <a href="#">Action</a>
        <a href="#">Adventure</a>
        <a href="#">Animation</a>
        <a href="#">Comedy</a>
        <a href="#">Drama</a>
        <a href="#">Fantasy</a>
        <a href="#">Horror</a>
        <a href="#">Romance</a>
    </div>
</div>

<div class="dropdown"><button class="dropbtn"><a href="#" name="Account">Account</a></button></div>

<div class="dropdown">
    <button class="dropbtn">
        <a href="/LogSignPages/Login.php" name="Login">Login</a>

    </button>
</div>

<div class="dropdown">
    <button class="dropbtn">
        <a href="#" name="SignUp">SignUp</a>

    </button>
</div>



<div class="dropdown">
    <button class="dropbtn">Lists</button>
    <div class="dropdown-content">
        <a href="#">History</a>
        <a href="#">Watch Later</a>
        <a href="#">Recommendations</a>
        <a href="#">Custom List 1</a>
        <a href="#">Custom List 2</a>
    </div>
</div>