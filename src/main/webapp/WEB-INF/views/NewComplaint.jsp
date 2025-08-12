<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<title>Create New Complaint</title>
<script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="min-h-screen bg-gradient-to-br from-gray-900 via-gray-800 to-black text-white p-10">

    <h1 class="text-3xl font-bold text-red-400 mb-8">Create New Complaint</h1>

    <form action="saveComplaint" method="post" class="bg-gray-800 p-6 rounded-lg shadow-lg space-y-6">

        <!-- Title -->
        <div>
            <label for="title" class="block mb-2">Title</label>
            <input type="text" id="title" name="title" 
                   class="w-full p-2 rounded bg-gray-900 border border-gray-700 text-white"
                   required>
        </div>

        <!-- Description -->
        <div>
            <label for="description" class="block mb-2">Description</label>
            <textarea id="description" name="description" rows="4"
                      class="w-full p-2 rounded bg-gray-900 border border-gray-700 text-white"
                      required></textarea>
        </div>

        <!-- Assign To (Admin Dropdown) -->
        <div>
            <label for="assignedTo" class="block mb-2">Assign To</label>
            <select name="assignedTo" id="assignedTo" 
                    class="w-full p-2 rounded bg-gray-900 border border-gray-700 text-white"
                    required>
                <c:forEach var="admin" items="${admins}">
                    <option value="${admin.userId}">
                        ${admin.firstName} ${admin.lastName}
                    </option>
                </c:forEach>
            </select>
        </div>

        <!-- Submit -->
        <div>
            <button type="submit" 
                    class="bg-red-600 hover:bg-red-700 text-white px-4 py-2 rounded-lg font-semibold">
                Submit Complaint
            </button>
        </div>
    </form>

</body>
</html>
