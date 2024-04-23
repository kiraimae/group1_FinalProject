<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LeetCodeProblem12.aspx.cs" Inherits="group1_FinalProject.LeetCodeProblem12" %>

<!-- # Name: Collin Baines
// # Email: bainesct@mail.uc.edu
// # Assignment Title: Final Project Spring 2024
// # Due Date: 4/22/2024
// # Course: IS 3050
// # Semester/Year: Spring 2024
// # Brief Description: This project is to work together with a team to solve LeetCode problems
// # Citations: LeetCode, ChatGPT
-->


<!-- # Name: Collin Baines
// # Email: bainesct@mail.uc.edu
// # Assignment Title: Final Project Spring 2024
// # Due Date: 4/22/2024
// # Course: IS 3050
// # Semester/Year: Spring 2024
// # Brief Description: This project is to work together with a team to solve LeetCode problems
// # Citations: LeetCode, ChatGPT
-->

<!DOCTYPE html>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title>Integer to Roman</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2><a href="https://leetcode.com/problems/integer-to-roman/" target="_blank">Integer To Roman</a></h2>
            <p>Roman numerals are represented by seven different symbols: I, V, X, L, C, D, and M.</p>
            <p>Roman numerals are usually written largest to smallest from left to right. However, the numeral for four is not IIII. Instead, the number four is written as IV. Because the one is before the five we subtract it making four. The same principle applies to the number nine, which is written as IX</p>
            <p>Given an integer, convert it to a roman numeral.</p>
            <h3>Examples</h3>
            <ul>
                <li>
                    <strong>Example 1:</strong>
                    <p>Input: num = 3</p>
                    <p>Output: III</p>
                    <p>Explanation: 3 is represented as 3 ones </p>
                </li>
                <li>
                    <strong>Example 2:</strong>
                    <p>Input: num = 58 </p>
                    <p>Output: LVIII </p>
                    <p>Explanation: L = 50, V = 5, III = 3</p>
                </li>
                <li>
                    <strong>Example 3:</strong>
                    <p>Input: num 1994</p>
                    <p>Output: MCMXCIV </p>
                    <p>Explanation: M = 1000, CM = 900, XC = 90 and IV = 4.</p>
                </li>
            </ul>
            <h4>Constraints</h4>
            <p>1 <= num <= 3999</p>
            <asp:Label ID="lblNumber" runat="server" Text="Enter a number (1-3999):"></asp:Label>
            <asp:TextBox ID="txtNumber" runat="server"></asp:TextBox>
            <asp:Button ID="btnConvert" runat="server" Text="Convert to Roman" OnClick="btnConvert_Click" />
            <asp:Label ID="lblRoman" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
