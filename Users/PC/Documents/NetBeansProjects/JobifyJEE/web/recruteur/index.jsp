<%-- 
    Document   : index.jsp
    Created on : 21 déc. 2024, 20:44:57
    Author     : PC
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
           <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Jobify</title>
    <link rel="shortcut icon" href="../../Web Pages/assets/img/linkedIn_PNG13.png" type="image/x-icon">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.0/dist/css/bootstrap.min.css">
<link rel="stylesheet" href="https://example.com/assets/CSS/style.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
    <style>
    body {
      background-color: #f3f2ef;
    }
    .navbar-brand {
      font-size: 1.5rem;
      font-weight: bold;
    }
    .sidebar {
      background-color: white;
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }
    .feed {
      background-color: white;
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }
    .rightbar {
      background-color: white;
      padding: 20px;
      border-radius: 8px;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
    }
  </style>
    </head>
    <body>
   <nav class="navbar navbar-expand-lg navbar-light bg-white shadow-sm">
  <div class="container-fluid">
    <!-- Brand Logo -->
    <a class="navbar-brand text-primary" href="#">LinkedIn</a>
    
    <!-- Toggler Button for Small Screens -->
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav">
      <span class="navbar-toggler-icon"></span>
    </button>
    
    <!-- Navbar Content -->
    <div class="collapse navbar-collapse" id="navbarNav">
      <!-- Navbar Links -->
      <ul class="navbar-nav me-auto">
        <li class="nav-item">
          <a class="nav-link" href="#">Home</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">My Network</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Jobs</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Messaging</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="#">Notifications</a>
        </li>
      </ul>
    </div>

    <!-- Search Bar -->
    <form class="d-flex ms-auto">
      <input class="form-control rounded-pill me-2 py-2 fs-5" type="search" placeholder="Search..." aria-label="Search">
      <button class="btn btn-primary rounded-pill  py-2 fs-5" type="submit">Search</button>
    </form>
  </div>
</nav>



<%@  page import="Models.*" %>
<%@  page import="DAO.*" %>
<%@  page import="java.util.*" %>

  <!-- Main Content -->
  <div class="container my-4">
    <div class="row g-4">
      <!-- Sidebar -->
      <div class="col-md-3">
        <div class="sidebar position-fixed">
          <h5>Your Profile</h5>
         <%
             List<Offre> lo = (ArrayList<Offre>) request.getAttribute("offres"); 
            Recruteur r = (Recruteur) request.getAttribute("recruteur");
            if (r != null) {
        %>
            <p class="ml-3"><strong><%= r.getCompanyName() %></strong></p>
             <a href="recruteur/profile?id=<%= r.getId() %>" class="btn btn-outline-primary w-100">View Profile</a>
        <%
            } else {
        %>
            <p><strong>not found</strong></p>
        <%
            }
        %>
        </div>
      </div>

      <!-- Feed -->
      <div class="col-md-6">
        <div class="feed">
          <h5>Post Something</h5>
          <form action="${pageContext.request.contextPath}/recruteur" method="post" enctype="multipart/form-data" >
          <h6>Titre</h6>
          <input class="form-control mb-3 type="text" placeholder="Start a post...">
          <h6>Description</h6>
          <textarea class="form-control mb-3" placeholder="Start a post..."></textarea>
          <h6>Requirements</h6>
          <input type="text" class="form-control mb-3" placeholder="requirements..." >
          
          <h6>Salary</h6>
           <input type="text" class="form-control mb-3" placeholder="salary..." >
         
          <div class="d-flex justify-content-between">
              <input type="submit" class="btn btn-primary" value="Post">
              
            <div>
              <img id="imagePreview" src="#" alt="Image Preview" style="display:none; max-width: 200px; margin-bottom: 10px;">
            <input type="file" class="form-control mb-3" name="image" accept="image/*" onchange="previewImage(event)">
            </div>
            </form>
          </div>
          <hr>
          <div class="container mt-4">
  <div class="card shadow-sm mb-4">
    <div class="card-body">
      <h6 class="card-title mt-2 mb-4">Recent Posts</h6>

      <!-- Post 1 -->
      
     <% if(lo != null) {
     for(Offre o : lo) {
            RecruteurDB rdb = new RecruteurDB();
         Recruteur re = new Recruteur();
         re = rdb.getById(o.getRecruteur_id());
     %> 
     
      <div class="d-flex mb-4">
        <!-- User Avatar -->
        

        <div class="w-100">
          <!-- User Name and Timestamp -->
          <div class="d-flex justify-content-between">
            <div>
              <%= re.getCompanyName()   %>
              <span class="text-muted">- <%= o.getPostedDate() %></span>
            </div>
            <!-- More options (ellipsis) -->
            <div>
              <button class="btn btn-link text-muted" style="font-size: 1.2rem;">
                <i class="bi bi-three-dots"></i>
              </button>
            </div>
          </div>

          <!-- Post Text -->
          <p class="mb-2"><strong><%= o.getTitle() %></strong><span class="text-primary"><%= o.getLocation() %></span></p> 
          <strong>Description </strong>
          <p class="mb-2"><%= o.getDescription() %><span class="text-primary">#TechLife</span></p> 
          <strong>Requirements</strong>
          <p class="mb-2"><%= o.getRequirements() %><span class="text-primary">#TechLife</span></p> 
          <strong>Salary</strong>
          <p class="mb-2"><%= o.getSalary() %><span class="text-primary">#TechLife</span></p>
          <!-- Post Image -->
          <img src="<%= o.getImgPath() %>" alt="Post Image" class="img-fluid rounded mb-2" />

          <!-- Reaction Buttons -->
          <div class="d-flex justify-content-between align-items-center mt-2">
            <div>
             
            </div>
            <div>
              <button class="btn btn-link text-muted">
                <i class="bi bi-bookmark"></i> 
              </button>
            </div>
          </div>
        </div>
      </div>

     <% 
         }
     } else { 
     %> 
     <div class="d-flex mb-4">
      <p><strong>no post found</strong></p>
     </div>
     <% 
     }
     %>
    </div>
  </div>
</div>

        </div>
      </div>

      <!-- Right Sidebar -->
      <div class="col-md-3">
        <div class="rightbar position-fixed">
          <h5>Candidatures recu</h5>
          <ul class="list-unstyled">
            <li class="mb-3">
              <strong>Anna Lee</strong> <br>
              Product Manager at XYZ <br>
              <button class="btn btn-sm btn-outline-primary mt-1">Afficher</button>
            </li>
            <li>
              <strong>Michael Green</strong> <br>
              UX Designer at DesignHub <br>
              <button class="btn btn-sm btn-outline-primary mt-1">Afficher</button>
            </li>
          </ul>
        </div>
      </div>
    </div>
  </div>
  <script src="../assets/js/bootstrap.bundel.min.js"></script>
<script>
  function previewImage(event) {
    const reader = new FileReader();
    reader.onload = function() {
      const preview = document.getElementById('imagePreview');
      preview.src = reader.result;
      preview.style.display = 'block';
    };
    reader.readAsDataURL(event.target.files[0]);
  }
</script>
    </body>
</html>
