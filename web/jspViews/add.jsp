<%@ page import="app.entities.User" %><%--
  Created by IntelliJ IDEA.
  User: dmifed
  Date: 01.09.2020
  Time: 16:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add new user</title>
    <link rel="stylesheet" href="../styles/w3.css">
</head>
<body class="w3-light-gray">
    <div class="w3-container w3-blue-gray w3-opacity w3-right-align">
        <%
            Object o = request.getAttribute("adding user");
            String style = "<div class=\"w3-panel " +
                    "w3-green w3-display-container " +
                    "w3-card-4 w3-round\">\n\" +\n" +
                    " <span onclick=\"this.parentElement.style.display='none'\"\n"  +
                    " class=\"w3-button w3-margin-right w3-display-right w3-round-large w3-hover-green w3-border w3-border-green w3-hover-border-grey\">×</span>\n" +
                    " <h5>Adding user '";
            if(o != null){
                User u = (User)o;
                out.println(style + u + "</div>");
            }  else {
                out.println(style + " no added user");
            }
        %>
        <div class="w3-card-4">
            <div class="w3-container w3-center w3-green">
                <h2>Add new user</h2>
            </div>
            <form method="post" class="w3-selection w3-light-gray w3-padding">
                <label>Name:
                    <input type="text" name="userName"><br>
                </label>
                <label>
                    Password:
                    <input type="password" name="userPass"><br>
                </label>
                <button type="submit">Send</button>
            </form>
        </div>
        <div>
            <button onclick="location.href='/'">back to main</button>
        </div>

    </div>





</body>
</html>
