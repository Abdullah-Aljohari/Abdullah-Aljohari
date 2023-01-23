<?php
  
    // Connect to database 
    $con=mysqli_connect("localhost","root","","registration");
  
    // Check if id is set or not, if true,
    // toggle else simply go back to the page
    if (isset($_GET['id'])){
  
        // Store the value from get to 
        // a local variable "course_id"
        $user_name=$_GET['id'];
  
        // SQL query that sets the status to
        // 0 to indicate deactivation.
        $sql="UPDATE `users` SET 
            `isActive`=1 WHERE id='$user_name'";
  
        // Execute the query
        mysqli_query($con,$sql);
    }
  
    // Go back to course-page.php
    header('location: adminpanel.php');
?>