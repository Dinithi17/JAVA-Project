<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="Header.jsp" %>
<!DOCTYPE html>
<html>
<head>
    <title>View Your Messages</title>
    <link rel="stylesheet" type="text/css" href="header&footer.css">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
<% // Include your header here (similar to other JSP files) %>

<div class="container">
    <h2 class="mt-4 mb-4">Your Messages</h2>
    <table class="table table-bordered mt-4">
        <thead class="thead-dark">
            <tr>
                <th>Name</th>
                <th>Email</th>
                <th>Subject</th>
                <th>Message</th>
                <th>Actions</th> 
            </tr>
        </thead>
        <tbody>
            <c:forEach items="${UserMessageDetails}" var="message"> 
                <c:if test="${message.client_id == userId}"> <%-- Assuming 'userId' is available in the session --%>
                    <tr>
                        <td>${message.name}</td>
                        <td>${message.email}</td>
                        <td>${message.subject}</td>
                        <td>${message.message}</td>
                        <td>
                            <a href="<c:url value='updatemessage.jsp'>
                                <c:param name='contact_id' value='${message.contact_id}'/> 
                                <c:param name='name' value='${message.name}'/>
                                <c:param name='email' value='${message.email}'/>
                                <c:param name='subject' value='${message.subject}'/>
                                <c:param name='message' value='${message.message}'/>
                            </c:url>" class="btn btn-primary btn-sm">Edit</a>

                            <form action="deletemessage.jsp" method="post" style="display: inline;"> 
                                <input type="hidden" name="contact_id" value="${message.contact_id}">
                                <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                            </form>
                        </td>
                    </tr>
                </c:if> 
            </c:forEach>
        </tbody>
    </table>
</div>


<% // Include your footer here %>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.5.2/dist/js/bootstrap.bundle.min.js"></script>
    <%@ include file="footer.jsp" %>
</body>
</html>