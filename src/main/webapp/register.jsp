
<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>Registar page</title>
	<style>
		.con {
			position: absolute;
			left: 500px;
			top: 100px;
			background-color: antiquewhite;
			padding: 40px;
		}

		body {
			background-color: aquamarine;

		}

		button {
			padding: 8 px;
			background-color:burlywood;
			border-radius: 13px;
		}
	</style>
</head>

<body>
	<div class="con">
		<h1 class="reg">Register</h1>
		<form action="reg" method="post">
			<label>Name:</label>
			<input type="text" id="userName" name="userName" placeholder="Enter your user name" autofocus
				required /><br><br>
			<div>
				
				<label>Email:</label>
				<input type="email" id="email" name="email" placeholder="Enter your email" required /><br /> <br>
				<label>Address:</label>
				<input type="text area" id="address" name="address" placeholder="Enter your address" required /><br />
				<br>
				
				<label>Password:</label>
				<input type="password" id="password" name="password" placeholder="Enter your password"
					required /><br /><br>
				<label>Mobile number:</label> <input type="text" id="mobileNumber" name="mobileNumber"
					placeholder="Enter your mobile number" required /><br /><br>
				
				
				<button type="submit">Submit</button><br>
				     <a href="index.jsp">Login</a>
		</form>
	</div>

	</div>
	</center>
</body>

</html>