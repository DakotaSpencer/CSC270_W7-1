<?php
include_once "./MyHeader.php";

// Use this page to change the value of
// $_SESSION["isAdmin"] or such

?>

<form method="post" action="">
    <label>Username:</label><br />
    <input name="username" type="text" value="" /><br />
    <label>Password:</label><br />
    <input name="password" type="text" value="" /><br />
    <input type="submit" />
</form>

<br />
<br />
You do not need to "wire-up" a database. 
<br />
You could have two buttons that change the session value for an admin/user

<?php
include_once "MyHeader.php";
?>

