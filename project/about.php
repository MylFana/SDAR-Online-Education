<?php

include 'components/connect.php';

if(isset($_COOKIE['user_id'])){
   $user_id = $_COOKIE['user_id'];
}else{
   $user_id = '';
}

?>

<!DOCTYPE html>
<html lang="en">
<head>
   <meta charset="UTF-8">
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <meta name="viewport" content="width=device-width, initial-scale=1">
   <meta content="text/html; charset=iso-8859-2" http-equiv="Content-Type">
   <link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
   <style>
   .mySlides {display:none;}
   </style>
   
   <title>about</title>

   <!-- font awesome cdn link  -->
   <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.2.0/css/all.min.css">

   <!-- custom css file link  -->
   <link rel="stylesheet" href="css/style.css">

</head>
<body>

<?php include 'components/user_header.php'; ?>

<!-- about section starts  -->

<section class="about">

   <div class="row">

      <div class="content">
         <h3>About Us</h3>
         <p>This website was established espeacialy for SDARIAN to seek videos about subject that they want posted by the teachers themselves</p>
        
      <br>

      <div class="content">
         <h3>Vision</h3>
         <p>Sdar terbilang sebagai institusi pendidikan yang unggul <br>
         di peringkat negara dan antarabangsa</p>
        
      <br>

      <div class="content">
         <h3>Mission</h3>
         <p>Memberikan pendidikan terbaik kepada pelajar cemerlang <br>
         melalui pengurusan dan kepimpinan berkualiti melahirkan pemimpin <br>
         dan warganegara berakhlak dan terbilang</p>
        
      <br>

      <div class="content">
      <h3>Sekolah Dato Abdul Razak Origin</h3>
      <iframe width="1150" height="450"
src="https://www.youtube.com/embed/v_ddK3odvNw?controls=1">
</iframe>

   </div class="content">
   <div class="w3-content w3-section" style="max-width:500px">
  <img class="mySlides" src="images/s1.jpg" style="width:100%">
  <img class="mySlides" src="images/s2.jpg" style="width:100%">
  <img class="mySlides" src="images/s3.jpg" style="width:100%">
  <img class="mySlides" src="images/s4.jpg" style="width:100%">
   </div>

<script>
var myIndex = 0;
carousel();

function carousel() {
  var i;
  var x = document.getElementsByClassName("mySlides");
  for (i = 0; i < x.length; i++) {
    x[i].style.display = "none";  
  }
  myIndex++;
  if (myIndex > x.length) {myIndex = 1}    
  x[myIndex-1].style.display = "block";  
  setTimeout(carousel, 2000); // Change image every 2 seconds
}
</script>

   </div>

   <div class="box-container">

      <div class="box">
         <i class="fas fa-graduation-cap"></i>
         <div>
            <h3>online subjects</h3>
         </div>
      </div>

      <div class="box">
         <i class="fas fa-user-graduate"></i>
         <div>
            <h3>brilliants students</h3>
         </div>
      </div>

      <div class="box">
         <i class="fas fa-chalkboard-user"></i>
         <div>
            <h3>expert teachers</h3>
         </div>
      </div>
   </div>

</section>

<!-- about section ends -->


<?php include 'components/footer.php'; ?>

<!-- custom js file link  -->
<script src="js/script.js"></script>
   
</body>
</html>