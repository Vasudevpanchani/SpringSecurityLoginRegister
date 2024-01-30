<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
	
<!DOCTYPE html>
<jsp:include page="index.jsp"></jsp:include>
<html>
<head>
<meta charset="UTF-8">
<title>Registration Page</title>
<!-- Bootstrap CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>

	<section class="vh-100" style="background-color: #eee;">
		<div class="container h-100">
			<div
				class="row d-flex justify-content-center align-items-center h-100">
				<div class="col-lg-12 col-xl-11">
					<div class="card text-black" style="border-radius: 25px;">
						<div class="card-body p-md-5">
							<div class="row justify-content-center">
								<div class="col-md-10 col-lg-6 col-xl-5 order-2 order-lg-1">
									<c:if test="${param.success != null}">
										<div style="color: green; font-weight: bold;margin-left:80px">${param.result}</div>
									</c:if>

									<c:if test="${param.error != null}">
										<div style="color: red; font-weight: bold;margin-left:80px">${param.result}</div>
									</c:if>
									
									<p class="h2 text-center fw-bold mb-5 mx-1 mx-md-4 mt-4">Register
										Page</p>
										

									<form class="mx-1 mx-md-4" action="/registerUser" method="post">

										<div class="d-flex flex-row align-items-center mb-4">
											<i class="fas fa-user fa-lg me-3 fa-fw"></i>
											<div class="form-outline flex-fill mb-0">
												<label class="form-label" for="form3Example1c">Username
												</label> <input type="text" id="username" name="username"
													class="form-control" />
											</div>
										</div>

										<div class="d-flex flex-row align-items-center mb-4">
											<i class="fas fa-envelope fa-lg me-3 fa-fw"></i>
											<div class="form-outline flex-fill mb-0">
												<label class="form-label" for="form3Example3c">Email
												</label> <input type="email" id="email" name="email"
													class="form-control" />
											</div>
										</div>

										<div class="d-flex flex-row align-items-center mb-4">
											<i class="fas fa-lock fa-lg me-3 fa-fw"></i>
											<div class="form-outline flex-fill mb-0">
												<label class="form-label" for="form3Example4c">Password</label>
												<input type="password" id="password" name="password"
													class="form-control" />
											</div>
										</div>

										<div class="form-group ml-3">
											<label for="role">Role</label> <select class="form-control"
												id="role" name="role" required>
												<option value="">Select Role</option>
												<option value="ROLE_ADMIN">Admin</option>
												<option value="ROLE_USER">User</option>
											</select>
										</div>

										<div
											class="d-flex justify-content-center mx-4 mb-3 mb-lg-4 mt-4">
											<button type="submit" class="btn btn-primary btn-lg">Register</button>
										</div>

									</form>

								</div>
								<div
									class="col-md-10 col-lg-6 col-xl-7 d-flex align-items-center order-1 order-lg-2">

									<img
										src="https://mdbcdn.b-cdn.net/img/Photos/new-templates/bootstrap-registration/draw1.webp"
										class="img-fluid" alt="Sample image">

								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</section>

	<!-- Bootstrap JS and dependencies -->
	<script
		src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>

</body>
</html>