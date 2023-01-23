<?php
// database connection code
// $con = mysqli_connect('localhost', 'database_user', 'database_password','database');
$con = mysqli_connect('localhost', 'root', '','registration');
// get the post records
$txtName = $_POST['txtName'];
$txtEmail = $_POST['txtEmail'];
$txtPass = $_POST['txtPass'];
$hash = password_hash($txtPass,PASSWORD_DEFAULT);
$isActive = false; 
// database insert SQL code
$sql = "INSERT INTO `users` ( `username`, `email`, `password`, `isActive`) VALUES ( '$txtName', '$txtEmail', '$hash', '$isActive')";
// insert in database 
$rs = mysqli_query($con, $sql);
if($rs)
{
	echo "Contact Records Inserted";
    $id=uniqid(rand(),true);
}
echo "<button><a href='signin.html'>signin</a></button>";
echo "<button><a href='signup.html'>signup</a></button>";


?>