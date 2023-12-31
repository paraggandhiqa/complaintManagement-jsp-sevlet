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
			<ul class="navbar-nav me-auto mb-2 mb-lg-0">

				<li class="nav-item"><a class="nav-link active"
					href="index.jsp">Home</a></li>
				<li class="nav-item"><a class="nav-link active"
					href="pendingComplaints24Hrs.jsp">Pending Complaints > 24hrs</a></li>
				<li class="nav-item"><a class="nav-link active"
					href="followUpComplaints.jsp">Follow-up</a></li>
				<li class="nav-item"><a class="nav-link active"
					href="engineers.jsp">Engineers</a></li>

				<li class="nav-item dropdown"><a
					class="nav-link dropdown-toggle nav-link active" href="#"
					id="navbarDropdown" role="button" data-bs-toggle="dropdown"
					aria-expanded="false"> Reports </a>
					<div class="dropdown-menu" aria-labelledby="navbarDropdown">
						<a class="dropdown-item" href="zoneWiseComplaints.jsp">Zone wise complaints</a> <a
							class="dropdown-item" href="engineerWiseComplaints.jsp">Worked by Engineers</a>
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


		</div>
	</div>
</nav>