<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f9;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .login-container {
            background-color: white;
            padding: 20px 30px;
            border-radius: 10px;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            width: 300px;
            text-align: center;
        }
        .login-container h2 {
            margin-bottom: 20px;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            margin-bottom: 5px;
            font-size: 14px;
        }
        .form-group input {
            width: 100%;
            padding: 8px;
            font-size: 14px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .login-btn {
            width: 100%;
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }
        .login-btn:hover {
            background-color: #45a049;
        }
        .register-link {
            margin-top: 15px;
            font-size: 14px;
        }
        .register-link a {
            color: #007BFF;
            text-decoration: none;
        }
        .register-link a:hover {
            text-decoration: underline;
        }
        /* Adjustments for the password visibility toggle */
        .password-toggle {
            display: flex;
            align-items: center; /* Align checkbox with label */
            margin-top: 5px;
        }
        .password-toggle input {
            width: 15px; /* Smaller checkbox */
            height: 15px; /* Adjust height to match width */
            margin-right: 5px; /* Space between checkbox and label */
        }
        .password-toggle label {
            font-size: 12px; /* Slightly smaller label */
            margin-top: 0; /* Align with checkbox */
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h2>Login</h2>
        <form action="Login" method="post">
            <div class="form-group">
                <label for="username">Username</label>
                <input type="text" id="username" name="username" required>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" required>
                <!-- Password visibility toggle -->
                <div class="password-toggle">
                    <input type="checkbox" id="show-password"> <label for="show-password">Show Password</label>
                </div>
            </div>
            <button type="submit" class="login-btn">Login</button>
        </form>
        <div class="register-link">
            <p>New user? <a href="Register.jsp">Register here</a></p>
        </div>
    </div>
    
    <script>
        // Toggle password visibility
        document.getElementById('show-password').addEventListener('change', function() {
            const passwordField = document.getElementById('password');
            if (this.checked) {
                passwordField.type = 'text';  // Show password
            } else {
                passwordField.type = 'password';  // Hide password
            }
        });
    </script>

    <%
        response.setHeader("Cache-control", "no-cache, no-store, must-revalidate"); //Http 1.1
        response.setHeader("Pragma", "no-cache"); //Http 1.0
        response.setHeader("Expires", "0"); //Proxies
    %>
</body>
</html>
