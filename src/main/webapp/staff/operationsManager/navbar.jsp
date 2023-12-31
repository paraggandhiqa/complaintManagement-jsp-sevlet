<nav class="navbar navbar-expand-lg navbar-dark bg-success">
	<div class="container-fluid">
		<a class="navbar-brand" href="index.jsp"><img
			src="../../img/icon.png" alt="" width="30" height="24"
			class="d-inline-block align-text-top"> CCMS</a>
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<c:if test="${not empty staffObj}">

				<ul class="navbar-nav me-auto mb-2 mb-lg-0">

					<li class="nav-item"><a class="nav-link active"
						href="index.jsp">Home</a></li>
					<li class="nav-item"><a class="nav-link active"
						href="newComplaints.jsp">New complaints</a></li>
					<li class="nav-item"><a class="nav-link active"
						href="citizens.jsp">Register</a></li>
					<li class="nav-item"><a class="nav-link active"
						href="operators.jsp">Operators</a></li>
					<li class="nav-item"><a class="nav-link active"
						href="reopenComplaint.jsp">Reopen</a></li>
					<li class="nav-item dropdown"><a
						class="nav-link dropdown-toggle nav-link active" href="#"
						id="navbarDropdown" role="button" data-bs-toggle="dropdown"
						aria-expanded="false"> Reports </a>
						<div class="dropdown-menu" aria-labelledby="navbarDropdown">
							<a class="dropdown-item" href="onlineRegisteredComplaints.jsp">Online registered Complaints</a>
							<a class="dropdown-item" href="operatorRegisteredComplaints.jsp">Operators registered Complaints</a> 
						</div></li>
				</ul>

				<div class="dropdown">
					<button class="btn btn-success dropdown-toggle" type="button"
						id="dropdownMenuButton1" data-bs-toggle="dropdown"
						aria-expanded="false">
						<i class="fa-solid fa-circle-user"></i> ${staffObj.firstName}
						${staffObj.lastName}
					</button>
					<ul class="dropdown-menu" aria-labelledby="dropdownMenuButton1">
						<li><a class="dropdown-item" href="myProfile.jsp">My
								Profile</a></li>
						<li><a class="dropdown-item" href="resetPassword.jsp">Change
								Password</a></li>
						<li><a class="dropdown-item" href="../../staffLogout">Logout</a></li>
					</ul>
				</div>

			</c:if>
		</div>
	</div>
</nav>