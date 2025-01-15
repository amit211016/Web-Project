<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Register Page</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f4f4f4;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .form-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 5px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 300px;
        }
        .form-container h2 {
            text-align: center;
            margin-bottom: 20px;
        }
        .form-container input {
            width: 100%;
            padding: 10px;
            margin: 10px 0;
            border: 1px solid #ccc;
            border-radius: 3px;
        }
        .form-container button {
            width: 100%;
            padding: 10px;
            background-color: #007BFF;
            color: white;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }
        .form-container button:hover {
            background-color: #0056b3;
        }
        .form-container .link-button {
            background-color: #6c757d;
            margin-top: 10px;
        }
        .form-container .link-button:hover {
            background-color: #565e64;
        }
        .password-hint {
            font-size: 12px;
            color: #555;
            margin-top: -8px;
            margin-bottom: 10px;
        }
    </style>
</head>
<body>
    <%
        response.setHeader("Cache-control", "no-cache, no-store, must-revalidate"); //Http 1.1
        response.setHeader("Pragma", "no-cache"); //Http 1.0
        response.setHeader("Expires", "0"); //Proxies
    %>
    <div class="form-container">
        <h2>Register</h2>
        <form action="Register" method="post">
            <input type="text" name="username" placeholder="Enter Username" required>
            <input type="password" name="password" placeholder="Enter Password" required>
            <div class="password-hint">
                <b>Note:</b><br> Password must be at least 8 characters long, contain at least one uppercase letter, one lowercase letter, one number, and one special character.<br>
                Special characters you can use : ! @ # $ % ^ & * ( ) _ + - = { } [ ] : ; " ' < > , . ? / \ | ~ ` 
            </div>
            <button type="submit">Register</button>
        </form>
        <form action="Login.jsp" method="get">
            <button type="submit" class="link-button">Go to Login</button>
        </form>
    </div>
</body>
</html>
