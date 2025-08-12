<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
<head>
<title>Student Home</title>
<script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="min-h-screen bg-gradient-to-br from-gray-900 via-gray-800 to-black text-white p-10">
    <h1 class="text-3xl font-bold text-indigo-400 mb-8">Student Dashboard</h1>

    <div class="space-y-4">
        <a href="newComplaint" class="block bg-red-600 hover:bg-red-700 text-white font-semibold px-4 py-2 rounded-lg shadow-md transition">
            Create New Complaint
        </a>

        <a href="myComplaints" class="block bg-blue-600 hover:bg-blue-700 text-white font-semibold px-4 py-2 rounded-lg shadow-md transition">
            My Complaints
        </a>
    </div>
</body>
</html>
