<!--# Name: Kayla Wilson
# email: wilso5ky@mail.uc.edu
# Assignment Title: Final Project
# Due Date: 4/23/2024
# Course: IS 3050
# Semester/Year: Spring 2024
# Brief Description: This is out final project
# Citations: Chatgpt, Leetcode
# Anything else that's relevant:-->

<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LeetCodeProblem2396.aspx.cs" Inherits="group1_FinalProject.LeetCodeProblem2396" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
 <title>Check Strictly Palindromic</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
    <h2>Check if a Number is Strictly Palindromic</h2>
    <p>An integer n is strictly palindromic if, for every base b between 2 and n - 2 (inclusive), the string representation of the integer n in base b is palindromic.</p>
    <p>Given an integer n, return true if n is strictly palindromic and false otherwise.</p>
    <p>A string is palindromic if it reads the same forward and backward.</p>
    <p>Example 1:</p>
    <p>Input: n = 9<br/>Output: false<br/>Explanation: In base 2: 9 = 1001 (base 2), which is palindromic. In base 3: 9 = 100 (base 3), which is not palindromic. Therefore, 9 is not strictly palindromic so we return false. Note that in bases 4, 5, 6, and 7, n = 9 is also not palindromic.</p>
    <p>Example 2:</p>
    <p>Input: n = 4<br/>Output: false<br/>Explanation: We only consider base 2: 4 = 100 (base 2), which is not palindromic. Therefore, we return false.</p>
    <p>Constraints: 4 <= n <= 105</p>
    <asp:TextBox ID="txtNumber" runat="server"></asp:TextBox>
    <asp:Button ID="btnCheck" runat="server" Text="Check" OnClick="btnCheck_Click" />
    <asp:Label ID="lblResult" runat="server" Text=""></asp:Label>
</div>

        
    </form>
</body>
</html>

