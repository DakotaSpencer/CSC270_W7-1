<?php
include_once "MyHeader.php";

// Use this page to change the value of
// $_SESSION["isAdmin"] or such

?>

<h3>Signup</h3>

<form method="post" action="">
    <label>First Name:</label>
    <br />
    <input name="fName" type="text" value="" />
    <br />
    <label>Last Name:</label>
    <br />
    <input name="lName" type="text" value="" />
    <br />
    <label>Username:</label>
    <br />
    <input name="username" type="text" value="" />
    <br />
    <label>Password:</label>
    <br />
    <input name="password" type="text" value="" />
    <br />
    <input type="submit" />
</form>

<p>
    <a href="Login.php">Already registered? Click Here</a>
</p>

<br />
<br />
You do not need to "wire-up" a database.
<br />
You could have two buttons that change the session value for an admin/user

<?php
include_once "MyHeader.php";
?>

