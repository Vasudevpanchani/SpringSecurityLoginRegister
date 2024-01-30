<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Index Page</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
<style>
/* Color of the links BEFORE scroll */
.navbar-scroll .nav-link, .navbar-scroll .navbar-toggler-icon,
	.navbar-scroll .navbar-brand {
	color: #262626;
}

/* Color of the navbar BEFORE scroll */
.navbar-scroll {
	background-color:#8EC5FC;
	background-image: linear-gradient(62deg, #8EC5FC 0%, #E0C3FC 100%);
	;
}

/* Color of the links AFTER scroll */
.navbar-scrolled .nav-link, .navbar-scrolled .navbar-toggler-icon,
	.navbar-scroll .navbar-brand {
	color: #262626;
}

/* Color of the navbar AFTER scroll */
.navbar-scrolled {
	background-color: #fff;
}

/* An optional height of the navbar AFTER scroll */
.navbar.navbar-scroll.navbar-scrolled {
	padding-top: auto;
	padding-bottom: auto;
}

.navbar-brand {
	font-size: unset;
	height: 3.5rem;
}
</style>
</head>
<body>
	<!-- Navbar -->
	<nav
		class="navbar navbar-expand-lg navbar-scroll fixed-top shadow-0 border-bottom border-dark">
		<div class="container-fluid">
			<img
				src="https://cdn.pixabay.com/photo/2016/12/27/13/10/logo-1933884_640.png"
				class="d-flex justify-content-start" alt="logo" height="50px"
				width="50px" style="border-radius: 50%" />
			<h2 style="font-style: italic;">vasudev</h2>
			<div class="collapse navbar-collapse" id="navbarSupportedContent">
				<ul class="navbar-nav ms-auto">
					<li class="nav-item fw-bold"><a class="nav-link" href="/home">Home
					</a></li>
					<li class="nav-item fw-bold"><a class="nav-link" href="#!">Services</a>
					</li>
					<li class="nav-item fw-bold"><a class="nav-link" href="#!">Contact
							Us</a></li>
					<button type="submit" class="btn btn-primary ms-3">
						<a style="text-decoration: none; color: white;" href="/login">Login</a>
					</button>
					<button type="submit" class="btn btn-primary ms-3">
						<a style="text-decoration: none; color: white;" href="/register">Register</a>
					</button>
				</ul>
			</div>
		</div>
	</nav>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous">	
	</script>
</body>
</html>