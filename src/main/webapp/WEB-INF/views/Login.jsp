<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<script src="https://cdn.tailwindcss.com"></script>
</head>
<body class="min-h-screen flex items-center justify-center bg-gradient-to-br from-gray-900 via-gray-800 to-black text-white">

    <div class="bg-gray-900 p-8 rounded-2xl shadow-lg border border-gray-700 w-full max-w-md">
        <h2 class="text-2xl font-bold mb-6 text-center text-indigo-400">User Login</h2>

        <form action="login" method="post" class="space-y-4">
            

            <div>
                <label for="email" class="block text-sm font-medium text-gray-300">Email</label>
                <input type="email" id="email" name="email" required
                    class="mt-1 w-full px-4 py-2 bg-gray-800 border border-gray-700 rounded-lg text-white focus:outline-none focus:border-indigo-400">
            </div>


            <div>
                <label for="password" class="block text-sm font-medium text-gray-300">Password</label>
                <input type="password" id="password" name="password" required
                    class="mt-1 w-full px-4 py-2 bg-gray-800 border border-gray-700 rounded-lg text-white focus:outline-none focus:border-indigo-400">
            </div>


            <div>
                <button type="submit"
                    class="w-full py-2 px-4 bg-indigo-500 hover:bg-indigo-600 rounded-lg font-semibold text-white transition">
                    Login
                </button>
            </div>

        </form>
    </div>

</body>
</html>
