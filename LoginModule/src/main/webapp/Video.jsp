<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Video Library</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&family=Pacifico&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Poppins', sans-serif;
            background-color: #e0e0e0; /* Light cement color */
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Header Styling */
        header {
            background-color: #4e6e8f; /* Soft Blue */
            color: white;
            padding: 30px 20px;
            text-align: left;
            font-family: 'Pacifico', cursive;
            font-size: 2.5rem;
            letter-spacing: 2px;
        }

        /* Logout Button Styling */
        .logout-button {
            background-color: #FF6B6B;
            color: white;
            border: none;
            padding: 12px 20px;
            font-size: 1rem;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            position: absolute;
            top: 35px;
            right: 20px;
        }

        .logout-button:hover {
            background-color: #FF4A4A;
        }

        /* Main Container */
        .container {
            margin: 20px auto;
            padding: 20px;
            max-width: 1000px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            animation: fadeIn 1.5s ease-in-out;
        }

        /* Video Rows */
        .video-row {
            display: flex;
            align-items: center;
            margin-bottom: 25px;
            border-bottom: 1px solid #ccc;
            padding-bottom: 15px;
            transition: transform 0.3s ease;
        }

        .video-row:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 15px rgba(0, 0, 0, 0.1);
        }

        .video-row iframe {
            border-radius: 10px;
            box-shadow: 0 6px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease;
            width: 100%;
            max-width: 500px;
            height: 280px;
        }

        .video-row iframe:hover {
            transform: scale(1.05);
        }

        /* Description Styling */
        .description {
            flex: 1;
            padding-left: 20px;
        }

        .description h4 {
            font-size: 20px;
            color: #4e6e8f;
            margin-bottom: 10px;
            font-weight: 600;
        }

        .description p {
            font-size: 16px;
            color: #555;
            margin: 0;
            line-height: 1.5;
        }

        /* Title Styling for "Enjoy These Videos" */
        .video-title {
            font-family: 'Pacifico', cursive;
            font-size: 3rem;
            color: #4e6e8f;
            text-align: center;
            margin-bottom: 30px;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.3);
        }

        /* Footer */
        footer {
            text-align: center;
            padding: 15px;
            background-color: #4e6e8f;
            color: white;
            margin-top: 40px;
        }

        /* Animations */
        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }
    </style>
</head>
<body>
    <% 
        //response.setHeader("Cache-control", "no-cache, no-store, must-revalidate"); // Http 1.1
        response.setHeader("Cache-control", "no-store");
        //response.setHeader("Pragma", "no-cache"); // Http 1.0
        //response.setHeader("Expires", "0"); // Proxies

        if (session.getAttribute("uname") == null) {
            response.sendRedirect("Login.jsp");
        }
    %>

    <!-- Header -->
    <header>
        Video Library
    </header>

    <!-- Logout Button -->
    <form action="LogOut" method="post" style="text-align: right;">
        <input type="submit" value="Logout" class="logout-button">
    </form>

    <!-- Video Container -->
    <div class="container">
        <h3 class="video-title">Enjoy These Videos</h3>

        <!-- Video Rows -->
        <div class="video-row">
            <div class="description">
                <h4>Relaxing Piano Music</h4>
                <p>A soothing collection of piano music to relax your mind and body. Perfect for meditation or study.</p>
            </div>
            <iframe src="https://www.youtube.com/embed/gQLQ0t9B5yk" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </div>

        <div class="video-row">
            <div class="description">
                <h4>Motivational Speech</h4>
                <p>Get inspired with this motivational speech by world-renowned speakers, designed to push you to success.</p>
            </div>
            <iframe src="https://www.youtube.com/embed/ZfUNX_owvTo" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </div>

        <div class="video-row">
            <div class="description">
                <h4>Nature Documentary</h4>
                <p>Explore the beauty of nature with this stunning documentary, showcasing the wonders of the natural world.</p>
            </div>
            <iframe src="https://www.youtube.com/embed/oLbrhZgQHR4" frameborder="0" allow="accelerometer; autoplay; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
        </div>

        <!-- Add more video rows as needed -->

    </div>

    <!-- Footer -->
    <footer>
        <p>&copy; 2024 Video Library. All rights reserved.</p>
    </footer>

</body>
</html>
