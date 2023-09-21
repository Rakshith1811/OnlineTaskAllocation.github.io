<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
  <title>Online Task Allocation</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />
  <meta name="description" content="" />
  <meta name="author" content="" />

  <!-- css -->
  <link href="https://fonts.googleapis.com/css?family=Noto+Serif:400,400italic,700|Open+Sans:300,400,600,700" rel="stylesheet">
  <link href="css/bootstrap.css" rel="stylesheet" />
  <link href="css/bootstrap-responsive.css" rel="stylesheet" />
  <link href="css/fancybox/jquery.fancybox.css" rel="stylesheet">
  <link href="css/jcarousel.css" rel="stylesheet" />
  <link href="css/flexslider.css" rel="stylesheet" />
  <link href="css/style.css" rel="stylesheet" />
  <!-- Theme skin -->
  <link href="skins/default.css" rel="stylesheet" />
  <!-- Fav and touch icons -->
  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="ico/apple-touch-icon-144-precomposed.png" />
  <link rel="apple-touch-icon-precomposed" sizes="114x114" href="ico/apple-touch-icon-114-precomposed.png" />
  <link rel="apple-touch-icon-precomposed" sizes="72x72" href="ico/apple-touch-icon-72-precomposed.png" />
  <link rel="apple-touch-icon-precomposed" href="ico/apple-touch-icon-57-precomposed.png" />
  <link rel="shortcut icon" href="ico/favicon.png" />
</head>
<body>
<div id="wrapper">
    <!-- start header -->
    <header>
      <div class="container">
        <div class="row">
          <div class="span4">
            <div class="logo">
              <a href="index.jsp">
              <h1 style="font-size:25px;color:#F03C02;font-weight:bold;">Online Task Allocation</h1>
			  </a>
            </div>
          </div>
          <div class="span8">
            <div class="navbar navbar-static-top">
              <div class="navigation">
                <nav>
                  <ul class="nav topnav">
                    <li class=" active">
                      <a href="managerindex.jsp">Home </a>
                    </li>
                    
                     <li class="dropdown">
                    MyAccount
                    <ul class="dropdown-menu" >
                     <li><a href="managerchangepasswordpage.jsp">Change Password</a></li>
                     <li><a href="managerdataupdate.jsp">Update Details</a></li>
                     <li><a href="managerlogout.jsp">Logout</a></li>
                    </ul>
                    </li>
                    
                     
                    <li class="dropdown">
                    Project
                    <ul class="dropdown-menu" >
                      <li><a href="viewprojectdetails.jsp">View Project</a></li>
                         <li><a href="addemployee.jsp">Assign Employee</a></li>
                         <li><a href="viewemployeedetail.jsp">View Employee</a></li>
                    </ul>
                    </li>
                     
                    <li class="dropdown">
                    Tasks
                    <ul class="dropdown-menu" >
                     
                          <li><a href="addtask.jsp">Add Task</a></li>
                     <li><a href="viewemployeestatus.jsp">View Task</a></li>
                       <li><a href="taskdate.jsp">Today Task</a> </li>
                     </ul>
                    </li>
                
                  </ul>
                </nav>
              </div>
              <!-- end navigation -->
            </div>
          </div>
        </div>
      </div>
    </header></div>