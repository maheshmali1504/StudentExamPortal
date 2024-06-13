<%@ page import="org.hibernate.Query"%>
<%@ page import="org.hibernate.Session"%>
<%@ page import="com.connection.FactoryProvider"%>
<%@ page import="java.util.List"%>
<%@ page import="com.model.Student"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show All Students Answers</title>
<%@ include file="all_css.html"%>
<style>
    body, html {
        height: 100%;
        margin: 0;
        font-family: Arial, sans-serif;
    }

    .container {
        width: 100%;
        padding-right: 15px;
        padding-left: 15px;
        margin-right: auto;
        margin-left: auto;
    }

    .table-responsive {
        overflow-x: auto;
    }

    table {
        width: 100%;
        border-collapse: collapse;
    }

    th, td {
        border: 1px solid #ddd;
        padding: 8px;
        text-align: left;
    }

    th {
        background-color: #343a40;
        color: white;
    }

    tr:nth-child(even) {
        background-color: #f2f2f2;
    }

    
</style>
</head>
<body>
<br><br>
<div class="container-fluid">
    <h1 class="text-center bg-danger text-white py-3 mb-0">Show All Students Answers</h1><br>
    <div class="table-responsive">
        <table class="table table-bordered table-striped">
            <thead class="thead-dark">
                <tr class="bg-dark text-white">
                    <th>Student Id</th>
                    <th>Student Name</th>
                    <th>Email</th>
                    <th>College Name</th>
                    <th>Question 1</th>
                    <th>Question 2</th>
                    <th>Question 3</th>
                    <th>Question 4</th>
                    <th>Question 5</th>
                    <th>Question 6</th>
                    <th>Question 7</th>
                    <th>Question 8</th>
                    <th>Question 9</th>
                    <th>Question 10</th>
                </tr>
            </thead>
            <tbody>
                <%
                Session s = null;
                try {
                    s = FactoryProvider.getFactory().openSession();
                    Query q = s.createQuery("from Student");
                    List<Student> list = q.list();
                    for (Student student : list) {
                %>
                <tr>
                    <td><%= student.getSid() %></td>
                    <td><%= student.getName() %></td>
                    <td><%= student.getEmail() %></td>
                    <td><%= student.getCollageName() %></td>
                    <td><%= student.getQuestion1() %></td>
                    <td><%= student.getQuestion2() %></td>
                    <td><%= student.getQuestion3() %></td>
                    <td><%= student.getQuestion4() %></td>
                    <td><%= student.getQuestion5() %></td>
                    <td><%= student.getQuestion6() %></td>
                    <td><%= student.getQuestion7() %></td>
                    <td><%= student.getQuestion8() %></td>
                    <td><%= student.getQuestion9() %></td>
                    <td><%= student.getQuestion10() %></td>
                </tr>
                <%
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                } finally {
                    if (s != null) {
                        s.close();
                    }
                }
                %>
            </tbody>
        </table>
    </div>
</div>
</body>
</html>
