<?php
require_once('includes/config.php');
error_reporting(0); 
$db= $con; // update with your database connection
// by default, error messages are empty
$register=$valid=$fnameErr=$emailErr=$subjectErr=$messageErr='';
 // by default,set input values are empty
 $set_firstName=$set_email=$set_subject=$set_message='';

extract($_POST);
if(isset($_POST['submit']))
{
  

   //input fields are Validated with regular expression
   $validName="/^[a-zA-Z ]*$/";
   $validEmail="/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/";
  
 //  First Name Validation
if(empty($first_name)){
   $fnameErr="<span>First Name is Required</span>"; 
}
else if (!preg_match($validName,$first_name)) {
   $fnameErr="<span>Digits are not allowed</span>";
}else{
   $fnameErr=true;
}


//Email Address Validation
if(empty($email)){
  $emailErr="<span>Email is Required</span>"; 
}
else if (!preg_match($validEmail,$email)) {
  $emailErr="<span>Invalid Email Address</span>";
}
else{
  $emailErr=true;
}

//subject Validation
if(empty($subject)){
  $subjectErr="<span>subject is Required</span>"; 
}
else if (!preg_match($validName,$subject)) {
  $subjectErr="<span>Digits are not allowed</span>";
}
else{
  $subjectErr=true;
}
 
//Message Validation
if(empty($message)){
  $messageErr="<span>messages is Required</span>"; 
}
else{
  $messageErr=true;
} 

// check all fields are valid or not
if($fnameErr==1 && $emailErr==1 && $subjectErr==1 && $messageErr==1)
{

   
    $firstName =legal_input($first_name);
    $email     =legal_input($email);
    $subject     =legal_input($subject);
    $message     =legal_input($message);

   
    

       // Insert data
      $register=register($firstName,$email,$subject,$message);

    }


}else{

     // set input values is empty until input field is invalid
    $set_firstName=$first_name;
    $set_email=    $email;
    $set_subject=    $subject;
    $set_message=    $message;
}
// check all fields are valid or not



// convert illegal input value to ligal value formate
function legal_input($value) {
  $value = trim($value);
  $value = stripslashes($value);
  $value = htmlspecialchars($value);
  return $value;
}



// function to insert user data into database table
function register($firstName,$email,$subject,$message){

   global $db;
   $sql="INSERT INTO email(name,email,subject,message) VALUES(?,?,?,?)";
   $query=$db->prepare($sql);
   $query->bind_param('ssss',$firstName,$email,$subject,$message);
   $exec= $query->execute();
    if($exec==true)
    {
     return "<p align='center' style='color:red;'>message sanded</p>";
    }
    else
    {
      return "Error: " . $sql . "<br>" .$db->error;
    }
}
?>