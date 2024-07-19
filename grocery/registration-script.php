<?php
require_once('includes/config.php'); 
$db= $con; // update with your database connection
// by default, error messages are empty
$register=$valid=$fnameErr=$contactnoErr=$emailErr=$passErr=$cpassErr='';
 // by default,set input values are empty
 $set_firstName=$set_contactno=$set_email='';

extract($_POST);
if(isset($_POST['submit']))
{
  

   //input fields are Validated with regular expression
   $validName="/^[a-zA-Z ]*$/";
   $validcontact="/^[0-9]{10}+$/";
   $validEmail="/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/";
   $uppercasePassword = "/(?=.*?[A-Z])/";
   $lowercasePassword = "/(?=.*?[a-z])/";
   $digitPassword = "/(?=.*?[0-9])/";
   $spacesPassword = "/^$|\s+/";
   $symbolPassword = "/(?=.*?[#?!@$%^&*-])/";
   $minEightPassword = "/.{8,}/";

 //  First Name Validation
if(empty($first_name)){
   $fnameErr="<span>First Name is Required</span>"; 
}
else if (!preg_match($validName,$first_name)) {
   $fnameErr="<span>Digits are not allowed</span>";
}else{
   $fnameErr=true;
}

//  Last Name Validation
if(empty($contactno)){
   $contactnoErr="<span>contactno is required</span>"; 
}
else if (!preg_match($validcontact,$contactno)) {
   $contactnoErr="<span>must be enter 10 digit</span>";
}
else{
   $contactnoErr=true;
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
    
// password validation 
if(empty($password)){
  $passErr="<span>Password is Required</span>"; 
} 
elseif (!preg_match($uppercasePassword,$password) || !preg_match($lowercasePassword,$password) || !preg_match($digitPassword,$password) || !preg_match($symbolPassword,$password) || !preg_match($minEightPassword,$password) || preg_match($spacesPassword,$password)) {
  $passErr="<span>Password must be at least one uppercase letter, lowercase letter, digit, a special character with no spaces and minimum 8 length</span>";
}
else{
   $passErr=true;
}

// form validation for confirm password
if($cpassword!=$password){
   $cpassErr="<span>Confirm Password doest Matched</span>";
}
else{
   $cpassErr=true;
}

// check all fields are valid or not
if($fnameErr==1 && $contactnoErr==1 && $emailErr==1 && $passErr==1 && $cpassErr==1)
{

   
    $firstName =legal_input($first_name);
    $contactno  =legal_input($contactno);
    $email     =legal_input($email);
    $password  =legal_input($password);
   
    // check unique email
    $checkEmail=unique_email($email);
    if($checkEmail)
    {
      $register="<p align='center' style='color:red;'>".$email." is already exist</p>";
    }else{

       // Insert data
      $register=register($firstName,$email,$contactno,$password);

    }




}else{

     // set input values is empty until input field is invalid
    $set_firstName=$first_name;
    $set_contactno= $contactno;
    $set_email=    $email;
}
// check all fields are vakid or not
}


// convert illegal input value to ligal value formate
function legal_input($value) {
  $value = trim($value);
  $value = stripslashes($value);
  $value = htmlspecialchars($value);
  return $value;
}

function unique_email($email){
  
  global $db;
  $sql = "SELECT email FROM users WHERE email='".$email."'";
  $check = $db->query($sql);

 if ($check->num_rows > 0) {
   return true;
 }else{
   return false;
 }
}

// function to insert user data into database table
function register($firstName,$email,$contactno,$password){

   global $db;
   $sql="INSERT INTO users(name,email,contactno,password) VALUES(?,?,?,?)";
   $query=$db->prepare($sql);
   $query->bind_param('ssss',$firstName,$email,$contactno,$password);
   $exec= $query->execute();
    if($exec==true)
    {
     return "<p align='center' style='color:red;'>You are registered successfully</p>";
    }
    else
    {
      return "Error: " . $sql . "<br>" .$db->error;
    }
}
?>