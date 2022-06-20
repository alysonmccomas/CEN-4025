<%@page import="toDoListPackage.ToDoList"%>
<%@page import="java.sql.*"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add a To-Do</title>
    <link rel="stylesheet" href="main.css">
</head>
<body>
<div id="divHead" class="header">
    <h1>My To-Do List</h1>
</div>

<div id="divContent" class="content">
    <h2> Add a To-Do Item</h2>
</div>


<div id="addNew" class="methods">
    <form>
    <table>
        <tbody>
            <input type="text" name="toDoItem" placeholder="New To-Do Item..."/>
        </tbody>
    </table>
        <button class="button button1" type="button" onclick="addNew()" id="addBtn">Add</button>
    </form>
</div>



<!-- FIXME need to add DB functionality -->



<div class="footer">
    <p>Did you forget something?</p>
    <button class="button button2" type="button" onclick="goHome()" id="homeBtn">Go Home</button>
</div>

</body>

<script>
    function addNew(){
        alert("ITEM ADDED!");
    }
    function goHome(){
        window.location.href="index.jsp";
    }
</script>

</html>
