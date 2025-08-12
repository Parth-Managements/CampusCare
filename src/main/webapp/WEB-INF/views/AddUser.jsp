<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<title>Add User</title>
<script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="min-h-screen bg-gradient-to-br from-gray-900 via-gray-800 to-black text-white p-10">
    <h1 class="text-2xl font-bold text-indigo-400 mb-6">Add New User</h1>

    <form action="saveUser" method="post" class="bg-gray-800 p-6 rounded-lg shadow-lg max-w-lg mx-auto space-y-4">
        
        <div>
            <label class="block mb-1 text-gray-300">First Name</label>
            <input type="text" name="firstName" required class="w-full p-2 rounded bg-gray-700 text-white border border-gray-600 focus:outline-none">
        </div>

        <div>
            <label class="block mb-1 text-gray-300">Last Name</label>
            <input type="text" name="lastName" required class="w-full p-2 rounded bg-gray-700 text-white border border-gray-600 focus:outline-none">
        </div>

        <div>
            <label class="block mb-1 text-gray-300">Email</label>
            <input type="email" name="email" required class="w-full p-2 rounded bg-gray-700 text-white border border-gray-600 focus:outline-none">
        </div>

        <div>
            <label class="block mb-1 text-gray-300">Password</label>
            <input type="password" name="password" required class="w-full p-2 rounded bg-gray-700 text-white border border-gray-600 focus:outline-none">
        </div>

        <div>
            <label class="block mb-1 text-gray-300">Role</label>
            <select name="role" required class="w-full p-2 rounded bg-gray-700 text-white border border-gray-600 focus:outline-none">
                <option value="student">Student</option>
                <option value="admin">Admin</option>
            </select>
        </div>

        <div class="text-center">
            <button type="submit" class="bg-indigo-600 hover:bg-indigo-700 px-6 py-2 rounded-lg shadow-md text-white font-semibold transition">Add User</button>
        </div>
    </form>
</body>
</html>
