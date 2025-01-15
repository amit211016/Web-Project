<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Welcome</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;600&family=Lobster&display=swap" rel="stylesheet">
    <style>
        body {
            font-family: 'Arial', sans-serif;
            margin: 0;
            padding: 0;
            background-color: #f0f4f8;
            overflow-x: hidden;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            position: relative; /* To allow absolute positioning of buttons */
        }

        .content-container {
            text-align: center;
            padding: 2rem;
            background-color: #e4e4e4; /* Light cement color */
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            width: 90%;
            max-width: 600px;
            animation: fadeIn 1.5s ease-in-out;
        }

        h1 {
            font-family: 'Lobster', cursive; /* Great vibes font */
            font-size: 3rem;
            color: #333;
            opacity: 0;
            transform: translateY(-50px);
            animation: slideIn 1s ease-out forwards 0.3s;
        }

        @keyframes fadeIn {
            from {
                opacity: 0;
            }
            to {
                opacity: 1;
            }
        }

        @keyframes slideIn {
            from {
                opacity: 0;
                transform: translateY(-50px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }

        p {
            font-family: 'Poppins', sans-serif; /* Light, modern font */
            font-size: 1.1rem;
            color: #666;
            line-height: 1.6;
            opacity: 0;
            transform: translateX(-100%);
            animation: slideIn 1s ease-out forwards;
            animation-delay: 1s;
        }

        p:nth-child(even) {
            animation-delay: 1.2s;
        }

        p:nth-child(odd) {
            animation-delay: 1.4s;
        }

        /* Top buttons */
        .top-buttons {
            position: absolute;
            top: 10px;
            left: 20px; /* Slightly away from the left edge */
            display: flex;
            gap: 1rem; /* Space between buttons */
        }

        .top-buttons a {
            padding: 0.8rem 1.5rem;
            background-color: #6c757d; /* Gray button color */
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-family: 'Poppins', sans-serif;
            font-weight: 600;
            transition: background-color 0.3s ease;
        }

        .top-buttons a:hover {
            background-color: #5a6268; /* Darker gray on hover */
        }

        /* Right top logout button */
        .logout-button {
            position: absolute;
            top: 10px;
            right: 20px; /* Positioned at the top-right */
            padding: 0.8rem 1.5rem;
            background-color: #d9534f; /* Red button for logout */
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-family: 'Poppins', sans-serif;
            font-weight: 600;
            transition: background-color 0.3s ease;
        }

        .logout-button:hover {
            background-color: #c9302c; /* Darker red on hover */
        }

    </style>
</head>
<body>
<% 
        response.setHeader("Cache-control", "no-cache, no-store, must-revalidate"); // Http 1.1
        response.setHeader("Pragma", "no-cache"); // Http 1.0
        response.setHeader("Expires", "0"); // Proxies
        
    %>

    <!-- Top buttons for navigation (left aligned) -->
    <div class="top-buttons">
        <a href="Video.jsp">Video</a>
        <a href="AboutUs.jsp">About Us</a>
    </div>

    <!-- Logout Button -->
    <form action="LogOut" method="post" style="text-align: right;">
        <input type="submit" value="Logout" class="logout-button">
    </form>

    <div class="content-container">
        <h1>Your Welcome In My Website</h1>
        <p>We are so happy to have you here! Enjoy exploring and learning more about what we offer.</p>
        <p>Feel free to explore the features of our website. There's always something new to discover!</p>
        <p>Stay connected and have fun with your journey through our pages!</p>
    </div>

</body>
</html>
