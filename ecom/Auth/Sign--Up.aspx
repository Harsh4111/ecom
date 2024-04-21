<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Sign--Up.aspx.cs" Inherits="ecom.Auth.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>SignUp</title>
  <link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Arimo&family=Rubik&display=swap" rel="stylesheet">
<script src="https://cdn.tailwindcss.com"></script>
<style>
  h1, h2, h3, h4, h5, h6 { font-family: 'Arimo', sans-serif; --font-sans: 'Arimo'; }
  body { font-family: 'Rubik', sans-serif; --font-sans: 'Rubik'; }
  .fade-in {
    opacity: 0;
    animation: fadeIn 1s ease-in-out forwards;
  }
  @keyframes fadeIn {
    from { opacity: 0; }
    to { opacity: 1; }
  }
</style>
</head>
<body>
    
    <form id="form1" runat="server">
          <div class="flex h-screen w-full items-center justify-center">
<div class="mx-auto w-full max-w-md rounded-lg bg-white shadow-lg dark:bg-gray-800 fade-in">
  <div class="px-6 py-8 sm:px-10 sm:py-10">
    <div class="space-y-6">
        <div>
                 <div>
    <label for="firstName" class="block text-sm font-medium text-gray-700 dark:text-gray-300" >First Name</label>
    <div class="mt-1">
        <asp:TextBox ID="fsn" runat="server" autocomplete="given-name" required class="block w-full appearance-none rounded-md border border-gray-300 px-3 py-2 placeholder-gray-400 shadow-sm focus:border-indigo-500 focus:outline-none focus:ring-indigo-500 sm:text-sm dark:border-gray-600 dark:bg-gray-700 dark:text-white dark:placeholder-gray-400" type="text" name="firstName"></asp:TextBox>

    </div>
  </div>
  <div>
    <label for="lastName" class="block text-sm font-medium text-gray-700 dark:text-gray-300">Last Name</label>
    <div class="mt-1">
      <input id="lastName" autocomplete="family-name" required class="block w-full appearance-none rounded-md border border-gray-300 px-3 py-2 placeholder-gray-400 shadow-sm focus:border-indigo-500 focus:outline-none focus:ring-indigo-500 sm:text-sm dark:border-gray-600 dark:bg-gray-700 dark:text-white dark:placeholder-gray-400" type="text" name="lastName" />
    </div>
  </div>
  <div>
    <label for="email" class="block text-sm font-medium text-gray-700 dark:text-gray-300">Email address</label>
    <div class="mt-1">
      <input id="email" autocomplete="email" required class="block w-full appearance-none rounded-md border border-gray-300 px-3 py-2 placeholder-gray-400 shadow-sm focus:border-indigo-500 focus:outline-none focus:ring-indigo-500 sm:text-sm dark:border-gray-600 dark:bg-gray-700 dark:text-white dark:placeholder-gray-400" type="email" name="email" />
    </div>
  </div>
  <div>
    <label for="password" class="block text-sm font-medium text-gray-700 dark:text-gray-300">Password</label>
    <div class="mt-1">
      <input id="password" autocomplete="new-password" required class="block w-full appearance-none rounded-md border border-gray-300 px-3 py-2 placeholder-gray-400 shadow-sm focus:border-indigo-500 focus:outline-none focus:ring-indigo-500 sm:text-sm dark:border-gray-600 dark:bg-gray-700 dark:text-white dark:placeholder-gray-400" type="password" name="password" />
    </div>
  </div>
  <div>
    <label for="confirmPassword" class="block text-sm font-medium text-gray-700 dark:text-gray-300">Confirm Password</label>
    <div class="mt-1">
      <input id="confirmPassword" autocomplete="new-password" required class="block w-full appearance-none rounded-md border border-gray-300 px-3 py-2 placeholder-gray-400 shadow-sm focus:border-indigo-500 focus:outline-none focus:ring-indigo-500 sm:text-sm dark:border-gray-600 dark:bg-gray-700 dark:text-white dark:placeholder-gray-400" type="password" name="confirmPassword" />
    </div>
  </div>
  <div><br />
    <button type="submit" class="flex w-full justify-center rounded-md border border-transparent bg-indigo-600 py-2 px-4 text-sm font-medium text-white shadow-sm hover:bg-indigo-700 focus:outline-none focus:ring-2 focus:ring-indigo-500 focus:ring-offset-2 dark:bg-indigo-500 dark:hover:bg-indigo-600 dark:focus:ring-indigo-600 transition duration-300">
      Sign up
    </button>
  </div>
</form>
<div class="text-center text-sm text-gray-500 dark:text-gray-400">
  <a class="font-medium text-indigo-600 hover:text-indigo-500 dark:text-indigo-500 dark:hover:text-indigo-400 transition duration-300" href="#" id="toggleSignin">Sign in</a>
</div>
        </div>
                  </div>
</div>
</div>
    </div>
    </form>
          
</body>
</html>
