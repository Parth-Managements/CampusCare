<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>Users List</title>
<script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="min-h-screen bg-gradient-to-br from-gray-900 via-gray-800 to-black text-white p-10">
    <h1 class="text-2xl font-bold text-indigo-400 mb-6">Users</h1>
    <table class="table-auto w-full border border-gray-700">
        <thead class="bg-gray-800">
            <tr>
                <th class="px-4 py-2 border border-gray-700">User ID</th>
                <th class="px-4 py-2 border border-gray-700">First Name</th>
                <th class="px-4 py-2 border border-gray-700">Last Name</th>
                <th class="px-4 py-2 border border-gray-700">Email</th>
                <th class="px-4 py-2 border border-gray-700">Role</th>
                <th class="px-4 py-2 border border-gray-700">Created At</th>
            </tr>
        </thead>
        <tbody>
            <c:forEach var="user" items="${users}">
                <tr class="hover:bg-gray-800">
                    <td class="px-4 py-2 border border-gray-700">${user.userId}</td>
                    <td class="px-4 py-2 border border-gray-700">${user.firstName}</td>
                    <td class="px-4 py-2 border border-gray-700">${user.lastName}</td>
                    <td class="px-4 py-2 border border-gray-700">${user.email}</td>
                    <td class="px-4 py-2 border border-gray-700">${user.role}</td>
                    <td class="px-4 py-2 border border-gray-700">${user.createdAt}</td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
</body>
</html>
