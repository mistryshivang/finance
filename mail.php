<?php
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;

require 'phpmailer/src/Exception.php';
require 'phpmailer/src/PHPMailer.php';
require 'phpmailer/src/SMTP.php';
include('class/DataClass.php');
$dc=new DataClass();

if(isset($_POST["btnsend"]))
{
    $name= $_POST['name'];
    echo $name;
    $query="select name,email,password from register where name='$name'";
    $rw=$dc->getrow($query);
    if(!$rw){
        echo " <script>
                alert('enter valid user name email not found !!');
                document.location='forgetpassword.php';
                </script>";
    }
    else{
    $emailto=$rw['email']; 
    $password=$rw['password'];
    $details="your user name is $name. your login email is $emailto . your password is $password .";  
    
    $mail = new PHPMailer(true);

    $mail->isSMTP();
    $mail->Host = 'smtp.gmail.com';
    $mail->SMTPAuth = true; 
    $mail->Username = 'softechfinancesolution@gmail.com';//site email
    $mail->Password = 'cdorclfadmjnecky';// app password
    $mail->SMTPSecure = 'ssl';  
    $mail->Port = 465; 

    $mail->setFrom('softechfinancesolution@gmail.com');
    $mail->addAddress($emailto);
    $mail->isHTML(true);
    $mail->Subject ="to forget password";
    $mail->Body ="$details"; 
    $mail->send();

    echo " <script>
            alert('Message sent Successfully!!');
            document.location.href = 'index.php';
           </script>";
    }
}
?>
