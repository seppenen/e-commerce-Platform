<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%

if(session.getAttribute("session")==null){

response.sendRedirect("index.jsp");
}
%>
    <%@ page import="model.User"%>  
<%@ page import="java.util.ArrayList"%> 
    <%@ page import="model.Order"%>
    <%! @SuppressWarnings("unchecked") %>
    
    <% String id= request.getParameter("id");
 	
%>


<!doctype html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    

    <title>Dashboard</title>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
<script src="http://ajax.aspnetcdn.com/ajax/jquery.validate/1.15.0/jquery.validate.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.13.0/moment.min.js"></script>
   
    <link href="dashboard.css" rel="stylesheet">
  </head>

  <body>
  <nav class="navbar navbar-dark sticky-top bg-dark flex-md-nowrap p-0">
      <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">Company name</a>
      <input class="form-control form-control-dark w-100" type="text" placeholder="Search" aria-label="Search">
      <ul class="navbar-nav px-3">
        <li class="nav-item text-nowrap">
          <a class="nav-link" href="#">Sign out</a>
        </li>
      </ul>
    </nav>

      <div class="container-fluid">
      <div class="row">
        <nav class="col-md-2 d-none d-md-block bg-light sidebar">
          <div class="sidebar-sticky">
            <ul class="nav flex-column">
              <li class="nav-item">
                       <a class="nav-link " href="dash.jsp">
                  <span data-feather="home"></span>
                  Dashboard 
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="calendar.jsp">
                  <span data-feather="calendar"></span>
                  Calendar
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="services.jsp">
                  <span data-feather="box"></span>
                  Services
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="users.jsp">
                  <span data-feather="users"></span>
                  Customers
                </a>
              </li>
               <li class="nav-item">
                <a class="nav-link" href="companies.jsp">
                  <span data-feather="shopping-cart"></span>
                  Companies
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link" href="settings.jsp">
                  <span data-feather="settings"></span>
                  Settings
                </a>
              </li>
             
            </ul>
            <h6 class="sidebar-heading d-flex justify-content-between align-items-center px-3 mt-4 mb-1 text-muted">
              <span>Options</span>
             
            </h6>
            <ul class="nav flex-column mb-2">
              <li class="nav-item">
                <a class="nav-link" value="1" href="services.jsp">
                  <span data-feather="file-text"></span>
                 Modify service
                </a>
              </li>
              <li class="nav-item">
                <a class="nav-link report" id="7" value="7" href="newService.jsp">
                  <span data-feather="file-text"></span>
                  Add service
                </a>
              </li>
         
            </ul>
          </div>
        </nav>

        <main role="main" class="col-md-9 ml-sm-auto col-lg-10 pt-3 px-4">
          <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pb-2 mb-3 border-bottom">
            <h1 class="h2">Services</h1>
           
          </div>
          <form class="pl-4 mb-3 form-inline ">
      <input class="form-control col-md-auto " type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
    </form>
    
<div class="col-md-auto pl-4 pr-4 mx-auto">
  <div class="card mb-3">
  <img class="card-img-top" src="images/banner.png" alt="Card image cap">
  <div class="card-body">
    <h5 class="card-title">Card title</h5>
    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
    <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
  </div>
</div>
<div class="card mb-3">
    <img class="card-img-top" src="images/banner.png" alt="Card image cap">

  <div class="card-body">
  
    <h5 class="card-title">Card title</h5>
    <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
    <p class="card-text"><small class="text-muted">Last updated 3 mins ago</small></p>
  </div>
</div>

       
  </div>
        </main>
      </div>

    <script src="https://unpkg.com/feather-icons/dist/feather.min.js"></script>
    <script>
      feather.replace()
    </script>

    <!-- Graphs -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.1/Chart.min.js"></script>
    <script>

 
      
      $(".report").on("click", function() { 
    	  
    	  labelFunction($(this).attr("value"));

      });

      
      
    </script>

  </body>
</html>
