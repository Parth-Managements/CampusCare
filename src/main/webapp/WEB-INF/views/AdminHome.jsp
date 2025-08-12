<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<title>Admin Home</title>
<script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="min-h-screen bg-gradient-to-br from-gray-900 via-gray-800 to-black text-white p-10">
    <h1 class="text-3xl font-bold text-indigo-400 mb-8">Admin Dashboard</h1>

    <div class="space-y-4">
        <a href="addUser" class="block bg-indigo-600 hover:bg-indigo-700 text-white font-semibold px-4 py-2 rounded-lg shadow-md transition">Add User</a>
        <a href="listUsers" class="block bg-green-600 hover:bg-green-700 text-white font-semibold px-4 py-2 rounded-lg shadow-md transition">View All Students</a>
        <a href="listAdmins" class="block bg-yellow-600 hover:bg-yellow-700 text-white font-semibold px-4 py-2 rounded-lg shadow-md transition">View All Admins</a>
    </div>
</body>
</html>
