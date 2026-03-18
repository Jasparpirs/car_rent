<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://phptutorial.net/app/css/style.css">
    <title>Login</title>
</head>
<body>
    
    <!-- <?php
echo password_hash("admin1", PASSWORD_DEFAULT);
?> 
<!-- hashi lõpp -->

<?php include('config.php'); ?>
<?php
	// session_start();
	// if (isset($_SESSION['tuvastamine'])) {
	//   header('Location: admin.php');
	//   exit();
	//   }
	  //kontrollime kas väljad on täidetud
	if (!empty($_POST['login']) && !empty($_POST['pass'])) {
		//eemaldame kasutaja sisestusest kahtlase pahna
		$login = htmlspecialchars(trim($_POST['login']));
		$pass = htmlspecialchars(trim($_POST['pass']));
	
		
		$hashed_password = password_verify($pass, );
        var_dump($hashed_password);
        if ($hashed_password == true ){
            echo "töötab";
        }
        else {
            echo "ei tööta";
        }
       
		//kontrollime kas andmebaasis on selline kasutaja ja parool
		$paring = "SELECT * FROM users WHERE email='$login'";
		$valjund = mysqli_query($yhendus, $paring);
		//kui on, siis loome sessiooni ja suuname

		if (mysqli_num_rows($valjund)==1) {
			$_SESSION['tuvastamine'] = 'misiganes';
			header('Location: admin.php');
		} else {
			echo "kasutaja või parool on vale";
		}
	}
?>

<main>
    <h1>Login</h1>
    <form action="" method="post">
        <div>
            <label for="login">Login:</label>
            <input type="text" name="login" id="login">
        </div>
        <div>
            <label for="pass">Password:</label>
            <input type="password" name="pass" id="pass">
        </div>
        <div>
            <input type="submit" value="Logi sisse">
        </div>
        <div>
            <a href="register.php">Register</a>
        </div>
    </form>
</main>
    
</main>
</body>
</html> 