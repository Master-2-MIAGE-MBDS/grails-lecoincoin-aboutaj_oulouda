<html>
<head>
    <meta name="layout" content="${gspLayout ?: 'main'}"/>
    <title><g:message code='springSecurity.login.title'/></title>
    <style>
    body {
        font-family: Arial, Helvetica, sans-serif;
    }

    form {
        background-color: #fff;
        width: 35%;
        margin: 30px auto;
        text-align: center;
        padding: 20px 0 0 0;
        border-radius: 4px;
        box-shadow: 0px 30px 50px 0px rgba(0, 0, 0, 0.2);
    }


    input[type=text], input[type=password] {
        width: 100%;
        padding: 12px 20px;
        margin: 8px 0;
        display: inline-block;
        border: 1px solid #ccc;
        box-sizing: border-box;
    }

    button {
        background-color: #000000;
        color: white;
        padding: 14px 20px;
        margin: 8px 0;
        border: none;
        cursor: pointer;
        width: 100%;
    }

    button:hover {
        opacity: 0.8;
    }

    .cancelbtn {
        width: auto;
        padding: 10px 18px;
        background-color: #f44336;
    }

    .imgcontainer {
        text-align: center;
        margin: 24px 0 12px 0;
    }

    img.avatar {
        width: 40%;
        border-radius: 50%;
    }

    .container {
        padding: 16px;
        width: 100%;
    }

    span.psw {
        float: right;
        padding-top: 16px;
    }

    /* Change styles for span and cancel button on extra small screens */
    @media screen and (max-width: 300px) {
        span.psw {
            display: block;
            float: none;
        }

        .cancelbtn {
            width: 100%;
        }
    }

    #login-form {
        padding: 0 60px;
    }
    </style>
</head>

<body>

<form id="login-form" action="${postUrl ?: '/login/authenticate'}" method="POST" autocomplete="off">

    <div class="container">
        <label for="uname"><b>Username</b></label>
        <input type="text" placeholder="User name"
               name="${usernameParameter ?: 'username'}" id="username" required>

        <label for="psw"><b>Password</b></label>
        <input type="password" placeholder="Password"
               name="${passwordParameter ?: 'password'}" id="password" required>

        <button type="submit" value="${message(code: 'springSecurity.login.button')}">Login</button>
        <label>
            <input type="checkbox" checked="checked" name="${rememberMeParameter ?: 'remember-me'}" id="remember_me" <g:if test='${hasCookie}'>checked="checked"</g:if>/> Remember me
        </label>
    </div>
</form>




<script>
    (function () {
        document.forms['loginForm'].elements['${usernameParameter ?: 'username'}'].focus();
    })();
</script>
</body>
</html>
