<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>About Us</title>
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
            align-items: flex-start;
            height: 100vh;
            position: relative;
        }

        .content-container {
            text-align: left;
            padding: 2rem;
            background-color: #ffffff;
            box-shadow: 0 4px 6px rgba(0, 0, 0, 0.1);
            border-radius: 8px;
            width: 90%;
            max-width: 800px;
            animation: fadeIn 1.5s ease-in-out;
            margin-top: 80px;
        }

        h1 {
            font-family: 'Lobster', cursive;
            font-size: 2.5rem;
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
            font-family: 'Poppins', sans-serif;
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

        .top-buttons {
            position: absolute;
            top: 10px;
            left: 20px;
            display: flex;
            gap: 1rem;
        }

        .top-buttons a {
            padding: 0.8rem 1.5rem;
            background-color: #6c757d;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-family: 'Poppins', sans-serif;
            font-weight: 600;
            transition: background-color 0.3s ease;
        }

        .top-buttons a:hover {
            background-color: #5a6268;
        }

        .logout-button {
            position: absolute;
            top: 10px;
            right: 20px;
            padding: 0.8rem 1.5rem;
            background-color: #d9534f;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            font-family: 'Poppins', sans-serif;
            font-weight: 600;
            transition: background-color 0.3s ease;
        }

        .logout-button:hover {
            background-color: #c9302c;
        }

        h2 {
            font-size: 2rem;
            color: #333;
            margin-top: 2rem;
        }

        h3 {
            font-size: 1.5rem;
            color: #333;
            margin-top: 1.5rem;
        }

        ul {
            margin-top: 1rem;
            list-style-type: disc;
            margin-left: 2rem;
        }

        .content-section {
            margin-top: 3rem;
        }
    </style>
</head>
<body>

    <!-- Log Out button (right aligned) -->
    <a href="LogOut.java" class="logout-button">Log Out</a>

    <div class="content-container">
        <h1>About Us</h1>
        <p>Welcome to our platform! Our goal is to provide secure user authentication and protect sensitive data during the login, registration, and session management processes.</p>

        <div class="content-section">
            <h2>Authentication</h2>
            <p>Authentication is the process of verifying a user's identity. We use a secure login system where users must enter a valid username and password to gain access. Only authorized users can access the restricted parts of the platform.</p>
        </div>

        <div class="content-section">
            <h3>Login</h3>
            <p>Our login process is straightforward and secure. Users enter their username and password, which are then checked against our encrypted database. If the credentials are valid, the user is granted access to the platform.</p>
        </div>

        <div class="content-section">
            <h3>Registration</h3>
            <p>To register for an account, users must provide their email, username, and a secure password. After registration, users are required to verify their email address to activate their account. This helps prevent unauthorized sign-ups.</p>
        </div>

        <div class="content-section">
            <h3>Password Security</h3>
            <p>We store passwords securely using industry-standard encryption techniques such as bcrypt or Argon2. This ensures that even if the database is compromised, user passwords remain protected. Passwords are never stored in plain text.</p>
        </div>

        <div class="content-section">
            <h3>Session Management</h3>
            <p>Once logged in, a user’s session is tracked using a unique session ID. This ID is stored securely and used to authenticate the user on subsequent requests. Sessions are designed to expire after a period of inactivity, ensuring that unauthorized users cannot take over an active session.</p>
        </div>

        <div class="content-section">
            <h3>Back Button Handling</h3>
            <p>We ensure that sensitive pages are protected from unauthorized access by disabling the browser’s back button functionality after logout. This prevents users from accessing the previous pages after logging out.</p>
        </div>
    </div>

</body>
</html>
