<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>TheRock's DevOps Registration Form</title>
  <style>
    /* General body styles */
    body {
      font-family: Arial, Helvetica, sans-serif;
      background-color: #f4f7f8;
      margin: 0;
      padding: 0;
    }

    /* Container for the form */
    .container {
      background-color: #ffffff;
      margin: 50px auto;
      padding: 30px;
      border-radius: 10px;
      max-width: 500px;
      box-shadow: 0 4px 8px rgba(0,0,0,0.1);
    }

    h1 {
      text-align: center;
      color: #333333;
    }

    p {
      text-align: center;
      color: #666666;
      font-size: 14px;
    }

    /* Style the input fields */
    input[type=text],
    input[type=password] {
      width: 100%;
      padding: 12px;
      margin: 8px 0 20px 0;
      display: inline-block;
      border: 1px solid #ccc;
      border-radius: 5px;
      box-sizing: border-box;
      transition: border-color 0.3s;
    }

    input[type=text]:focus,
    input[type=password]:focus {
      border-color: #4CAF50;
      outline: none;
    }

    /* Style the labels */
    label {
      font-weight: bold;
      color: #555555;
    }

    /* Style the register button */
    .registerbtn {
      background-color: #4CAF50;
      color: white;
      padding: 14px 20px;
      margin: 10px 0;
      border: none;
      cursor: pointer;
      width: 100%;
      border-radius: 5px;
      font-size: 16px;
      transition: background-color 0.3s;
    }

    .registerbtn:hover {
      background-color: #45a049;
    }

    /* Divider */
    hr {
      border: 1px solid #f1f1f1;
      margin-bottom: 20px;
    }

    /* Signin text */
    .signin {
      text-align: center;
      padding: 20px;
      background-color: #f9f9f9;
      border-top: 1px solid #e1e1e1;
      border-radius: 0 0 10px 10px;
    }

    .signin a {
      color: #4CAF50;
      text-decoration: none;
      font-weight: bold;
    }

    .signin a:hover {
      text-decoration: underline;
    }

    /* Footer thank you */
    h1:last-of-type {
      text-align: center;
      color: #4CAF50;
      margin-top: 30px;
      font-size: 20px;
    }
  </style>
</head>
<body>

  <form action="action_page.php">
    <div class="container">
      <h1>New User Registration for DevOps Learning</h1>
      <p>Please fill in this form to create an account.</p>

      <hr>

      <label for="Name"><b>Enter First Name</b></label>
      <input type="text" placeholder="Enter Full Name" name="Name" id="Name" required>

      <label for="Name"><b>Enter Surname</b></label>
      <input type="text" placeholder="Enter Full Name" name="Name" id="Name" required>

      <label for="mobile"><b>Enter Mobile</b></label>
      <input type="text" placeholder="Enter Mobile Number" name="mobile" id="mobile" required>

      <label for="email"><b>Enter Email</b></label>
      <input type="text" placeholder="Enter Email" name="email" id="email" required>

      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="psw" id="psw" required>

      <label for="psw-repeat"><b>Repeat Password</b></label>
      <input type="password" placeholder="Repeat Password" name="psw-repeat" id="psw-repeat" required>

      <hr>

      <p>By creating an account you agree to our <a href="#">Terms & Privacy</a>.</p>

      <button type="submit" class="registerbtn">Register</button>
    </div>

    <div class="container signin">
      <p>Already have an account? <a href="#">Sign in</a>.</p>
    </div>

    <h1>Thank you, Happy Learning</h1>
  </form>

</body>
</html>
