<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: dmifed
  Date: 01.09.2020
  Time: 16:35
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>List all users</title>
    <link rel="stylesheet" href="../styles/w3.css">
</head>
<body>
    <div>
        <div>
            <div>
                <h2>List all users</h2>
            </div>
            <%
                List<String> userNames = (List<String>) request.getAttribute("Model List");
                if(userNames != null && !userNames.isEmpty()){
                    out.println("<ul>");
                    for(String n : userNames){
                        out.println("<li>" + n + "</li>");
                    }
                    out.println("</ul>");
                }else {
                    out.println("No users");
                }
            %>
        </div>
    </div>

    <div>
        <button onclick="location.href='/'">back to main</button>
    </div>



</body>
</html>
