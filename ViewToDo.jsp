<%@page import="toDoListPackage.ToDoList"%>
<%@page import="java.sql.*"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>View To-Do</title>
    <link rel="stylesheet" href="main.css">
</head>
<body>
<div id="divHead" class="header">
    <h1>My To-Do List</h1>
</div>

<div id="divContent" class="content">
    <h2> View List</h2>
</div>

    <ul>
        <% try {
            ResultSet results = null;
            try {
                Class.forName("com.mysql.cj.jdbc.Driver");
            } catch (ClassNotFoundException e) {
                e.printStackTrace();
            }
            Connection connection = DriverManager.getConnection("jdbc:mysql://localhost:3306/to_do_list",
                    "root", "password");
            Statement statement = connection.createStatement();
            ResultSet resultSet = statement.executeQuery("SELECT DISTINCT item FROM to_do WHERE item IS NOT NULL");
        %>
        <% while(resultSet.next()){ %>
        <li><%=resultSet.getString(1) %></li>
        <%}
        } catch (SQLException e){
            e.printStackTrace();
        }%>
    </ul>

<div class="footer">
    <p>Did you forget something?</p>
    <button class="button button2" type="button" onclick="goHome()" id="homeBtn">Go Home</button>
</div>

</body>

<script>
    function goHome(){
        window.location.href="index.jsp";
    }
</script>

</html>
