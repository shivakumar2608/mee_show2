<?php include('navbar2.php'); ?>

<?php
if(!empty($_SESSION["id"])){
  $id = $_SESSION["id"];
  $result = mysqli_query($conn, "SELECT * FROM  users WHERE id = $id");
  $row = mysqli_fetch_assoc($result);
}

else{
header('Location: login.php');
}

?>

<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Index</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/css/bootstrap.min.css" rel="stylesheet"
    integrity="sha384-Zenh87qX5JnK2Jl0vWa8Ck2rdkQ2Bzep5IDxbcnCeuOxjzrPF/et3URy9Bv1WTRi" crossorigin="anonymous">
  <link rel="stylesheet" href="css/style.css">
</head>

<body style="background-color: rgba(235, 242, 253, 0.39);">

  <div class="bodyyy">

    <div id="myCarousel" class="carousel slide m-0" data-bs-ride="carousel">
      <div style="z-index: 0;" class="carousel-indicators">
        <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="0" class="" aria-label="Slide 1"></button>
        <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="1" aria-label="Slide 2" class="active"
          aria-current="true"></button>
        <button type="button" data-bs-target="#myCarousel" data-bs-slide-to="2" aria-label="Slide 3" class=""></button>
      </div>
      <div class="carousel-inner">
        <div class="carousel-item ">

          <img class='carousel-imgg' width="100%" height="100%"
            src="https://assets-in.bmscdn.com/promotions/cms/creatives/1677496336152_mcstanweb.jpg" alt="" srcset="">
        </div>
        <div class="carousel-item ">
          <img class='carousel-imgg' width="100%" height="100%"
            src="https://assets-in.bmscdn.com/promotions/cms/creatives/1669791051507_offerweb.jpg" alt="" srcset="">
        </div>
        <div class="carousel-item active">
          <img class='carousel-imgg' width="100%" height="100%"
            src="https://assets-in.bmscdn.com/promotions/cms/creatives/1684826565470_ridewithbadshahdesktop.jpg" alt="" srcset="">
        </div>

      </div>
      <button class="carousel-control-prev" type="button" data-bs-target="#myCarousel" data-bs-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Previous</span>
      </button>
      <button class="carousel-control-next" type="button" data-bs-target="#myCarousel" data-bs-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="visually-hidden">Next</span>
      </button>
    </div>

    <br>
    <br>

    <div class="container1">
      <?php
              $sql = "SELECT * FROM action_movies";
              $res = mysqli_query($conn, $sql);
              $num = 1;
              if($res== TRUE){
                  $count = mysqli_num_rows($res);
                  ?>
      <div class="container-movies">
        <h2>Recommended Movies</h2>
        <br>
        <?php
                  if($count >0){
                      while($rows = mysqli_fetch_assoc($res)){
                          $id = $rows['id'];
                          $title = $rows['title'];
                          $img = $rows['cover_img'];
                          $description = $rows['description'];
                          $duration = $rows['duration'];
                          $trailer_yt_link = $rows['trailer_yt_link'];
      
                          ?>

  <div class="movie" id="movie">
    <h3>
            <?php echo $title ?>
          </h3>
          <a href=" theaters.php?id=<?php echo $id ?> "> <img class="image" id="image" src=" <?php echo $img ?> " alt="" srcset=""> </a>

          <p> Duration:
            <?php echo $duration ?>hrs
          </p>
          <p>
            <?php echo $description ?>
          </p>

          <!-- <button onclick="showMovies()">Details</button> -->
 
        </div>

        <?php
                            }  
                  }
                  else{
                          //we dont have data in db
                  }
              }
            
          ?>


      </div>


      
          <br>
          <img width="100%" style="margin: 0;"
            src="https://assets-in.bmscdn.com/discovery-catalog/collections/tr:w-1440,h-120:q-80/stream-leadin-web-collection-202210241242.png"
            alt="" srcset="">
          <br>

      <br>


      <div class="container1">
        <?php
          $sql = "SELECT * FROM movies";
          $res = mysqli_query($conn, $sql);
          $num = 1;
          if($res== TRUE){
              $count = mysqli_num_rows($res);
              ?>
        <div class="container-movies">
          <h2>Romantic Movies</h2>
          <?php
              if($count >0){
                  while($rows = mysqli_fetch_assoc($res)){
                      $id = $rows['id'];
                      $title = $rows['title'];
                      $img = $rows['cover_img'];
                      $description = $rows['description'];
                      $duration = $rows['duration'];
                      $trailer_yt_link = $rows['trailer_yt_link'];
  
                      ?>
          <div class="movie" id="movie">
            <h3>
              <?php echo $title ?>
            </h3>
            <a href="theaters.php"> <img class="image" id="image" src=" <?php echo $img ?> " alt="" srcset=""> </a>

            <p> Duration:
              <?php echo $duration ?>hrs
            </p>
            <p>
              <?php echo $description ?>
            </p>

          </div>

          <?php
  
                  }  
              }
              else{
                      //we dont have data in db
              }
          }
        
      ?>

         
          <br>
          <br>

          <div class="container1">
            <?php
              $sql = "SELECT * FROM action_movies";
              $res = mysqli_query($conn, $sql);
              $num = 1;
              if($res== TRUE){
                  $count = mysqli_num_rows($res);
                  ?>
            <div class="container-movies">
              <h2>Action Movies</h2>
              <?php
                  if($count >0){
                      while($rows = mysqli_fetch_assoc($res)){
                          $id = $rows['id'];
                          $title = $rows['title'];
                          $img = $rows['cover_img'];
                          $description = $rows['description'];
                          $duration = $rows['duration'];
                          $trailer_yt_link = $rows['trailer_yt_link'];
      
                          ?>
              <div class="movie" id="movie">
                <h3>
                  <?php echo $title ?>
                </h3>
                <a href=" seatbooking.php?movie_id= <?php echo $rows['id'] ?> "> <img class="image" id="image"
                    src=" <?php echo $img ?> " alt="Connect to Internet" srcset=""> </a>

                <p> Duration:
                  <?php echo $duration ?>hrs
                </p>
                <p>
                  <?php echo $description ?>
                </p>

              </div>

              <?php
      
                      }  
                  }
                  else{
                          //we dont have data in db
                  }
              }
            
          ?>


            </div>


            <br>
            <br>
            <br>
            <hr>
            <br>
            <br>
            <br>


            <div class="container1">
              <?php
                $sql = "SELECT * FROM movies";
                $res = mysqli_query($conn, $sql);
                $num = 1;
                if($res== TRUE){
                    $count = mysqli_num_rows($res);
                    ?>
              <div class="container-movies">
                <h2>Comedy Movies</h2>
                <?php
                    if($count >0){
                        while($rows = mysqli_fetch_assoc($res)){
                            $id = $rows['id'];
                            $title = $rows['title'];
                            $img = $rows['cover_img'];
                            $description = $rows['description'];
                            $duration = $rows['duration'];
                            $trailer_yt_link = $rows['trailer_yt_link'];
        
                            ?>
                <div class="movie" id="movie">
                  <h3>
                    <?php echo $title ?>
                  </h3>
                  <a href=" seatbooking.php?movie_id= <?php echo $rows['id'] ?> "> <img class="image" id="image"
                      src=" <?php echo $img ?> " alt="" srcset=""> </a>

                  <p> Duration:
                    <?php echo $duration ?>hrs
                  </p>
                  <p>
                    <?php echo $description ?>
                  </p>

                </div>

                <?php
                        }  
                    }
                    else{
                            //we dont have data in db
                    }
                }
              
            ?>
              </div>
              <br><br><br>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>



  <!-- <div class="movieInfo">
    <div class="imgSection">
      <img src=" <?php echo $img ?> " alt="" srcset="">
    </div>
    <div class="infoSection">
      <h3>
        <?php echo $title ?>
      </h3>
      <p>
        <?php echo $description ?>
        <br>
        An ex-hit-man comes out of retirement to track down the gangsters that killed his dog and took his
        car.
      </p>
      <button class="btn btn-warning">View Trailer</button>
      <button class="btn btn-primary">Book Ticket</button>

    </div>
  </div>
  <button onclick="showMovies()" >Button</button>
 -->

  <?php  include "footer.php" ?>
  <br>
  <br>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.2/dist/js/bootstrap.bundle.min.js"
    integrity="sha384-OERcA2EqjJCMA+/3y+gxIOqMEjwtxJY7qPCqsdltbNJuaOe923+mo//f6V8Qbsw3"
    crossorigin="anonymous"></script>

    <script>
      function showMovies() {
        var msg =document.querySelector('.movieInfo')
        msg.classList.toggle('displayNone');
        var container =document.querySelector('.bodyyy')
        container.classList.toggle('main-container-blur');
        var audio = new Audio('audio/bookingConfirmAudio.mp3');
        audio.play();
      }


    </script>

</body>

</html>