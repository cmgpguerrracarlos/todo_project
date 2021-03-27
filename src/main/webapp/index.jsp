<%-- 
    Document   : index
    Created on : Mar 27, 2021, 4:17:36 AM
    Author     : cmgp
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>To Do</title>
    </head>
    <body>
        <h1>My to do list</h1>
        <hr>
        <form action="/todo_project/" method="POST">
            <label>Task to do:</label><br>
            <input type="text" name="task" /><br>
            <input type="submit" value="add"/><br>
        </form>
        <hr>
        <h1>List of task to do</h1>
        <%
            if(request.getAttribute("task") != null){
                String task = request.getAttribute("task").toString();
                out.println(task);
                out.println("in the if");
            }
            out.println("out the if");
        %>
    </body>
</html>
