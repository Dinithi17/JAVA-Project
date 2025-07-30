<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="Header.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>View Messages</title>
    <link rel="stylesheet" type="text/css" href="header&footer.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<br>
<% String successMessage = (String) request.getAttribute("successMessage"); %>
<% String unsuccessMessage = (String) request.getAttribute("unsuccessMessage"); %>

<% if (successMessage != null) { %>
    <script>
        alert("<%= successMessage %>");
    </script>
<% } %>

<% if (unsuccessMessage != null) { %>
    <script>
        alert("Error: <%= unsuccessMessage %>");
    </script>
<% } %>

<div class="container">
    <h2 class="mt-4 mb-4">All Messages</h2>
    
    <table class="table table-bordered mt-4">
        <thead class="thead-dark">
            <tr>
                <th>Message ID</th>
                <th>Client ID</th>
                <th>Name</th>
                <th>Email</th>
                <th>Subject</th>
                <th>Message</th>
                <th>Actions</th>
            </tr>
        </thead>
        <tbody>
        <%@page import="java.sql.*"%>
        <%@page import="com.train.DBConnect" %>
        <% try { 
            Connection con = DBConnect.getConnection();
            Statement state = con.createStatement();
            String sql = "SELECT * FROM messagedata";
            ResultSet rs = state.executeQuery(sql);
            while (rs.next()) { %>

            <c:set var="conid" value="<%= rs.getString(\"contact_id\")%>" />
            <c:set var="cid" value="<%= rs.getString(\"client_id\")%>" />
            <c:set var="cname" value="<%= rs.getString(\"name\")%>" />
            <c:set var="cemail" value="<%= rs.getString(\"email\")%>" />
            <c:set var="csubject" value="<%= rs.getString(\"subject\")%>" />
            <c:set var="cmessage" value="<%= rs.getString(\"message\")%>" />

            <tr>
                <td><c:out value="${conid}" /></td>
                <td><c:out value="${cid}" /></td>
                <td><c:out value="${cname}" /></td>
                <td><c:out value="${cemail}" /></td>
                <td><c:out value="${csubject}" /></td>
                <td><c:out value="${cmessage}" /></td>

                <td>
                    <div style="width: 100%; display: flex; align-items: center;">
                        <a href="<c:url value='updatemessage.jsp'>
                            <c:param name='contact_id' value='${conid}'/>
                            <c:param name='client_id' value='${cid}'/>
                            <c:param name='name' value='${cname}'/>
                            <c:param name='email' value='${cemail}'/>
                            <c:param name='subject' value='${csubject}'/>
                            <c:param name='message' value='${cmessage}'/>
                        </c:url>'" class="btn btn-primary btn-sm">Edit</a>

                        <form action="deletemessage.jsp" method="post" style="margin-left: 20px;">
                            <input type="hidden" name="contact_id" value="${conid}">
                            <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                        </form>
                    </div>
                </td>
            </tr>

        <% } 
        } catch (Exception e) {
            e.printStackTrace();
        } %>

        </tbody>
    </table>
</div>

<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
<br><br><br><br><br><br><br><br><br><br>
<%@ include file="footer.jsp" %>
</body>
</html>
