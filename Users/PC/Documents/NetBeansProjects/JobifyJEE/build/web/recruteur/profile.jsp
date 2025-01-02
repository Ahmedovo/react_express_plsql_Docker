<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Profile Page</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css" rel="stylesheet">
  <style>
      body {
        background-color: #f3f2ef;
      }
      /* Profile Banner */
      .profile-banner {
        position: relative;
        height: 300px;
        background: url('https://via.placeholder.com/1400x400') no-repeat center center;
        background-size: cover;
      }

      .profile-avatar {
        position: absolute;
        bottom: -75px;
        left: 20px;
        width: 150px;
        height: 150px;
        border-radius: 50%;
        border: 5px solid white;
      }

      /* About Section */
      .about-section {
        background-color: white;
        border-radius: 8px;
        box-shadow: 0 4px 6px rgba(0,0,0,.1);
        margin-top: 120px;
        padding: 20px;
      }

      /* Posts Section */
      .post-card {
        border-radius: 10px;
        box-shadow: 0 4px 6px rgba(0,0,0,.1);
        margin-top: 20px;
        padding: 15px;
        background-color: white;
      }

      .post-header {
        display: flex;
        align-items: center;
      }

      .post-header img {
        width: 40px;
        height: 40px;
        border-radius: 50%;
      }

      .post-text {
        margin-top: 10px;
      }

      .post-footer {
        margin-top: 15px;
        display: flex;
        gap: 20px;
      }

      .post-footer i {
        color: #0073b1; /* LinkedIn blue */
      }

      .sticky-sidebar {
        position: sticky;
        top: 80px;
      }
.sticky-buttons {
        position: sticky;
        top: 80px;
      }
      /* Profile Stats */
      .profile-stats {
        border-radius: 8px;
        box-shadow: 0 4px 6px rgba(0,0,0,.1);
        background-color: white;
        margin-top: 20px;
        padding: 20px;
      }
       .buttons {
        border-radius: 8px;
        box-shadow: 0 4px 6px rgba(0,0,0,.1);
        background-color: white;
        margin-top: 20px;
        padding: 20px;
      }


      /* Right Sidebar */
      .right-sidebar {
        position: sticky;
        top: 80px;
      }

      .right-sidebar .btn {
        width: 100%;
        margin-bottom: 10px;
      }

      /* Search Bar */
      .search-bar {
        margin-top: 20px;
      }
  </style>
</head>
<body>
  <div class="container mt-5">
    <div class="row">
      <!-- Left Sidebar -->
      <div class="col-lg-3 col-md-4 d-none d-md-block">
        <div class="sticky-sidebar">
          <div class="profile-stats">
            <h5>Profile Stats</h5>
            <ul class="list-group">
              <li class="list-group-item d-flex justify-content-between align-items-center">
                Posts
                <span class="badge bg-primary rounded-pill">500+</span>
              </li>
              <li class="list-group-item d-flex justify-content-between align-items-center">
                Condidatures
                <span class="badge bg-secondary rounded-pill">120</span>
              </li>
              <li class="list-group-item d-flex justify-content-between align-items-center">
                Entretients
                <span class="badge bg-success rounded-pill">30</span>
              </li>
            </ul>
          </div>
        </div>
      </div>

      <!-- Main Content -->
      <div class="col-lg-6 col-md-8 col-sm-12">
        <!-- Profile Banner and Avatar -->
        <div class="profile-banner">
          <img src="https://via.placeholder.com/150" alt="Profile Picture" class="profile-avatar">
        </div>

        <!-- About Section -->
        <div class="about-section">
          <h2>John Doe</h2>
          <h4 class="text-muted">Software Engineer | Tech Enthusiast</h4>
          <p>Location: New York, USA</p>
          <p class="mt-2">Passionate about coding, creating meaningful software, and exploring new technologies. Always looking to learn and grow in the tech space.</p>
        </div>

        <!-- Search Bar -->
        <div class="search-bar">
          <input type="text" class="form-control" placeholder="Search Posts">
        </div>

        <!-- Recent Posts -->
        <div class="post-card">
          <div class="post-header">
            <img src="https://via.placeholder.com/40" alt="User Avatar">
            <div class="ms-2">
              <strong>Jane Smith</strong> <small class="text-muted">- 2 hours ago</small>
            </div>
          </div>
          <div class="post-text">
            <p>Excited to announce my new project! #TechLife #Innovation</p>
          </div>
          <img src="https://via.placeholder.com/600x300" class="img-fluid rounded" alt="Post Image">
          <div class="post-footer">
            <i class="fas fa-thumbs-up"></i> <i class="fas fa-comment"></i> <i class="fas fa-share"></i>
          </div>
        </div>

        <div class="post-card">
          <div class="post-header">
            <img src="https://via.placeholder.com/40" alt="User Avatar">
            <div class="ms-2">
              <strong>Robert Brown</strong> <small class="text-muted">- 5 hours ago</small>
            </div>
          </div>
          <div class="post-text">
            <p>What an amazing event yesterday! 🎉 #Event #Networking</p>
          </div>
          <img src="https://via.placeholder.com/600x300" class="img-fluid rounded" alt="Post Image">
          <div class="post-footer">
            <i class="fas fa-thumbs-up"></i> <i class="fas fa-comment"></i> <i class="fas fa-share"></i>
          </div>
        </div>

       

        <!-- Modal for Editing Profile -->
        <div class="modal fade" id="editProfileModal" tabindex="-1" aria-labelledby="editProfileModalLabel" aria-hidden="true">
          <div class="modal-dialog">
            <div class="modal-content">
              <div class="modal-header">
                <h5 class="modal-title" id="editProfileModalLabel">Edit Profile</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
              </div>
              <div class="modal-body">
                <!-- Edit Profile Form -->
                <form>
                  <div class="mb-3">
                    <label for="profileName" class="form-label">Name</label>
                    <input type="text" class="form-control" id="profileName" value="John Doe">
                  </div>
                  <div class="mb-3">
                    <label for="profileLocation" class="form-label">Location</label>
                    <input type="text" class="form-control" id="profileLocation" value="New York, USA">
                  </div>
                  <div class="mb-3">
                    <label for="profileBio" class="form-label">Bio</label>
                    <textarea class="form-control" id="profileBio" rows="3">Passionate about coding, creating meaningful software, and exploring new technologies.</textarea>
                  </div>
                </form>
              </div>
              <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                <button type="button" class="btn btn-primary">Save changes</button>
              </div>
            </div>
          </div>
        </div>
      </div>

      <!-- Right Sidebar -->
      <div class="buttons sticky-buttons col-lg-3 col-md-4 d-none d-md-block" style="max-height: 150px; overflow-y: auto;">
    <div class="right-sidebar">
        <a href="index.jsp" class="btn btn-outline-primary w-100">Home</a>
        <a href="#" class="btn btn-outline-warning w-100" data-bs-toggle="modal" data-bs-target="#editProfileModal">Edit Profile</a>
    </div>
</div>

    </div>
  </div>

  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
