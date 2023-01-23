<?php
//
if($_POST['username']!="" && $_POST['user_password']!="" ){
    session_start(); 
include('db.php');
$username= $_POST['username'];
 $pw = $_POST['user_password'];
$query="SELECT * from users WHERE username = '" . $username . "'";
$result = mysqli_query($con,$query);
$cust = mysqli_fetch_array($result);
if(password_verify($pw,$cust["PASSWORD"])){
    if($cust["type"]=="admin"){
header("location:adminpanel.php");
    }else 
    if($cust["isActive"]=='0'){
        $message = "<div class='alert alert-danger'>U are un active user please waite until admin active u  </div>";
    }else {

        header("location:home.php");
    }

//$message = "<div class='alert alert-danger'>Both Fields are required</div>";



}
else {
    $message = "<div class='alert alert-danger'>password is uncorrect</div>";
}
}else {
    $message = "<div class='alert alert-danger'>Both Feild are requerid </div>";
}
?>

<!DOCTYPE html>
<html>
 <head>
  <title>Login</title>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css" />
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 </head>
 <body>
  <br />
  <div class="container">
   <h2 align="center">sign in</h2>
   <br />
   <div class="panel panel-default">
    <div class="panel-heading">Login</div>
    <div class="panel-body">
     <form method="post">
      <span class="text-danger"><?php echo $message; ?></span>
      <div class="form-group">
       <label>Username</label>
       <input type="text" name="username" id="username" class="form-control" />
      </div>
      <div class="form-group">
       <label>Password</label>
       <input type="password" name="user_password" id="user_password" class="form-control" />
      </div>
      <div class="form-group">
       <input type="submit" name="login" id="login" class="btn btn-info" value="Login" />
      </div>
     </form>
    </div>
   </div>
   <br />
   <p></p>
   <p></p>
   <p></p>
  </div>
 </body>
</html>
