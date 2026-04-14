<?php include("config.php"); ?>

<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Bootstrap demo</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-sRIl4kxILFvY47J16cr9ZwB07vP4J8+LH7qKQnuqkuIAvNWLzeN8tE5YBujZqJLB" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.13.1/font/bootstrap-icons.min.css">
    <style>
    .hero {
      height: 300px;
    }
  </style>
  </head>
  <body>
   
<!-- menuu -->
<nav class="navbar navbar-expand-lg bg-body-tertiary border-bottom">
  <div class="container">
    <a class="navbar-brand fw-bold" href="#">Autorent</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
        <li class="nav-item">
          <a class="nav-link active" aria-current="page" href="#">Avaleht</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Autod</a>
        </li>
         <li class="nav-item">
          <a class="nav-link active" aria-disabled="true">Hinnad</a>
        </li>
          <ul class="dropdown-menu">
            <li><a class="dropdown-item" href="#">Action</a></li>
            <li><a class="dropdown-item" href="#">Another action</a></li>
            <li><hr class="dropdown-divider"></li>
            <li><a class="dropdown-item" href="#">Something else here</a></li>
          </ul>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="adminlogin.php">login</a>
        </li>
      </ul>
      <form action="adminlogout.php">
<div class="d-grid gap-2  d-md-flex justify-content-md-end">
  <button class="btn btn-outline-secondary me-md-2" type="submit"></a>Logout</button>
</div>
</form>
    </div>
  </div>
</nav>

<!-- menu -->
<?php 
$id = $_GET["id"];
 $pairing = 'SELECT * FROM cars WHERE id='.$id.''; 
 $valjund = mysqli_query($yhendus, $pairing);  
 $rida = mysqli_fetch_row($valjund);  
//  var_dump($rida); ?>



<!-- autode kaardid -->
<div class="container my-5">
<div class=" row">
  <div class="col-sm-6">
         <h5>   
  <?php  echo($rida[1]. "<br>");  ?>  
        </h5>
 <p class="card-text text-secondary "><?php  echo($rida[2]. "<br>");  ?>  </p>
    <p class="card-text ">
          
            <ul class=" list-unstyled mb-4">
  <li>
    <strong>Hind:</strong> 
    <span class="text fw-bold">
        <?php echo $rida[5]; ?> € / päev
    </span>
</li>
        <li><strong>Mootor:</strong> <?php echo $rida[3]; ?></li>
        <li><strong>Kütus:</strong> <?php echo $rida[4]; ?></li>  
        <li><strong>Aasta:</strong> <?php echo $rida[7]; ?></li>
       <li><strong>Käigukast:</strong> <?php echo $rida[8]; ?></li>
       <li><strong>Istmekohad:</strong> <?php echo $rida[9]; ?></li>
       <li><strong>Selgitus:</strong> <?php echo $rida[10]; ?></li>
        <li><strong>Staatus:</strong> <?php echo $rida[11]; ?></li>
        
<div class="container">
        <div class="alert alert-secondary py-2">
    <h6 class="mb-0">Vali rendi aeg</h6>
</div>
        <?php
        // https://www.php.net/manual/en/datetime.diff.php?utm_source=chatgpt.com
        if (!empty($_GET["algus"]) && !empty($_GET["lopp"])) {
        $kp1=date_create( $_GET["algus"]);
        $kp2=date_create( $_GET["lopp"]);
        
        

$diff=date_diff($kp1,$kp2);
echo $diff->format("%a") * $rida[5] ;
}
?>

<!-- arvutab hinna -->
<form action="car.php">
    <input type="hidden" name="id" value="<?php echo $rida[0]; ?>">
    <input type="date" name="algus"> <input type="date" name="lopp">
    <input class="btn btn-dark w-100" type="submit" value="Arvuta hind">
</form>

<!-- rendi -->
        <form action="car.php">
          <input type="hidden" name="id" value="<?php  echo($rida[0]);  ?>">
            </ul>
            <input class="btn btn-dark w-100" type="submit" value="Rendi">
            </form>

            <?php 
$id = $_GET["id"];
 $pairing = 'SELECT * FROM reservations'; 
 $valjund = mysqli_query($yhendus, $pairing);  
 $rida = mysqli_fetch_row($valjund); 
 echo($rida[1]);
 echo($rida[2]);
 echo($rida[3]);
 echo($rida[4]);
 echo($rida[5]);
 echo($rida[6]);
 echo($rida[7]);
 
  ?>
</div>


  </div>
  <div class="col-sm-6">
    <img src="https://loremflickr.com/600/350/<?php  echo $rida[1] ?>" class="card-img-top" alt="auto">
  </div>
</div>

</div>
 <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.8/dist/js/bootstrap.bundle.min.js" integrity="sha384-FKyoEForCGlyvwx9Hj09JcYn3nv7wiPVlz7YYwJrWVcXK/BmnVDxM+D2scQbITxI" crossorigin="anonymous"></script>
  </body>
  

</html>