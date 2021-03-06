<!DOCTYPE html>
<html>
<head>
    <title>Register Form</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">

    <script>
        function validateForm() {
            var firstname = document.forms["myForm"]["firstName"].value;
            var lastname = document.forms["myForm"]["lastName"].value;
            var Email = document.forms["myForm"]["Email"].value;
            var password = document.forms["myForm"]["password"].value;
            var address = document.forms["myForm"]["address"].value;
            var contact = document.forms["myForm"]["contact"].value;

            if (firstname === "") {
                alert("First name must be filled out");
                return false;
            }
            if (lastname === "") {
                alert("Last name must be filled out");
                return false;
            }
            if (Email === "") {
                alert("User name must be filled out");
                return false;
            }
            if (password === "") {
                alert("Password must be filled out");
                return false;
            }
            if (address === "") {
                alert("Address must be filled…out");
                return false;
            }
            if (contact === "") {
                alert("Contact must be filled…out");
                return false;
            }
        }
    </script>
</head>
<style>
    body {
        margin: 0;
        padding: 0;
        background-color: midnightblue;
        font-weight: bold;
    }

    .login {
        width: 400px;
        overflow: hidden;
        margin: auto;
        padding: 50px;
        background: mintcream;
        border-radius: 5px;
    }

    h1 {
        display: white;
        font-size: 2em;
        text-align: center;
        padding: 20px;

    }

    label {
        color: navy;
        font-size: 80px;
        font-weight: bold;
        text-align: left;
    }

    #firstName {
        width: 300px;
        height: 40px;
        border: none;
        border-radius: 3px;
        padding-left: 4px;

    }

    #lastName {
        width: 300px;
        height: 40px;
        border: none;
        border-radius: 3px;
        padding-left: 8px;
    }

    #Email {
        width: 300px;
        height: 40px;
        border: none;
        border-radius: 3px;
        padding-left: 4px;

    }

    #password {
        width: 300px;
        height: 40px;
        border: none;
        border-radius: 3px;
        padding-left: 8px;
    }

    #address {
        width: 300px;
        height: 40px;
        border: none;
        border-radius: 3px;
        padding-left: 4px;

    }

    #contact {
        width: 300px;
        height: 40px;
        border: none;
        border-radius: 3px;
        padding-left: 8px;
    }

    span {
        color: navy;
        font-size: 27px;
    }

    #log {
        content-align: center;
        border: none;
        color: grey;
        padding: 4px 12px;
        text-align: center;
        text-decoration: none;
        display: maroon;
        margin: 4px 2px;
        cursor: pointer;
        align: center;
    }

    .a {
        text-decoration: none;
        color: navy;
        font-weight: bold;
    }

    .tbody {

        width: 500px;
        height: 600px;
        overflow: hidden;
        margin: auto;
        margin: 100 50 40 10000px;
        padding: 80px;
        background: mintcream;
        border-radius: 5px;
    }
</style>
<body>
<div class="login">
    <form name="myForm" action="register" onsubmit="return validateForm()" method="post">
        <h1 style="color:navy"><b>Registration Form</b></h1>
        <table>

            <tr>
                <td>First Name</td>
                <td><input type="text" name="firstName" id="firstName" placeholder="Firstname"/></td>
            </tr>
            <tr>
                <td>Last Name</td>
                <td><input type="text" name="lastName" id="lastName" placeholder="Lastname"/></td>
            </tr>
            <tr>
                <td>Email</td>
                <td><input type="text" name="Email" id="Email" placeholder="Email"/></td>
            </tr>
            <tr>
                <td>Password</td>
                <td><input type="password" name="password" id="password" placeholder="Password"/></td>
            </tr>
            <tr>
                <td>Address</td>
                <td><input type="text" name="address" id="address" placeholder="Address"/></td>
            </tr>
            <tr>
                <td>Contact</td>
                <td><input type="text" name="contact" id="contact" placeholder="contact"/></td>
            </tr>
            <tr>
                <td colspan="2"><br>
                    <center>
                        <input type="submit" value="Submit"/>
                    </center>
                </td>
            </tr>
            <tr>
                <td colspan="2"></br> <a href="login.jsp"><b><u>Login</u></b></a></td>
            </tr>

        </table>
    </form>
</div>
</body>
</html>