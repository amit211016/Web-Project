<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Error</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(135deg, #f44336, #d32f2f);
            height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            color: white;
            margin: 0;
        }

        .error-container {
            background-color: rgba(0, 0, 0, 0.5);
            padding: 20px;
            border-radius: 8px;
            text-align: center;
            width: 100%;
            max-width: 400px;
        }

        .error-container h2 {
            margin-bottom: 20px;
            font-size: 24px;
        }

        .error-container p {
            margin-bottom: 20px;
            font-size: 18px;
        }

        .retry-btn {
            background-color: #ffffff;
            color: #f44336;
            padding: 10px 20px;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
            transition: background-color 0.3s ease;
            text-decoration: none;
        }

        .retry-btn:hover {
            background-color: #ff7043;
        }
    </style>
</head>
<body>

    <div class="error-container">
        <h2>Login Failed</h2>
        <p>The username or password you entered is incorrect. Please try again.</p>
        
        <!-- Button to go back to the login page -->
        <a href="Login.jsp" class="retry-btn">Try Again</a>
    </div>

</body>
</html>
