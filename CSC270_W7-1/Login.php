<?php
include_once "MyHeader.php";

// Use this page to change the value of
// $_SESSION["isAdmin"] or such

?>

<h3>Login</h3>

<form method="post" action="">
    <label>Username:</label><br />
    <input name="username" type="text" value="" /><br />
    <label>Password:</label><br />
    <input name="password" type="text" value="" /><br />
    <input type="submit" />
</form>

<p>
    <a href="SignUp.php">Not registered? Click Here</a>
</p>
<p>
    <a href="AdminLogin.php">Are you an Admin? Click Here</a>
</p>


<br />
<br />
You do not need to "wire-up" a database. 
<br />
You could have two buttons that change the session value for an admin/user

<?php
include_once "MyHeader.php";
?>

