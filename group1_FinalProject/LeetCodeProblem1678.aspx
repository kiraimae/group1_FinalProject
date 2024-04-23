<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LeetCodeProblem1678.aspx.cs" Inherits="group1_FinalProject.LeetCodeProblem1678" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title> Leet Code Problem 1678 </title>
</head>
<body>
    <form id="form1" runat="server">
         <div>
             <h2><a href="https://leetcode.com/problems/goal-parser-interpretation/description/" target="_blank"> Goal Parser Interpretation </a></h2>
             <p>You own a Goal Parser that can interpret a string command. The command consists of an alphabet of "G", "()" and/or "(al)" in some order. </p>
             <p>The Goal Parser will interpret "G" as the string "G", "()" as the string "o", and "(al)" as the string "al". The interpreted strings are then concatenated in the original order.</p>
             <p>Given the string command, return the Goal Parser's interpretation of command.</p>

             <h3> Example 1 </h3>
             <ul>
             <li>
                 <p>Input: command = "G()(al)"</p>
                 <p>Output: "Goal"</p>
                 <p>Explanation: The Goal Parser interprets the command as follows:</p>
                 <p>G -> G</p>
                 <p>() -> o</p>
                 <p>(al) -> al</p>
                 <p>The final concatenated result is "Goal".</p>
                 
             </li>
            </ul>
              <h3> Example 2 </h3>
             <ul>
             <li>
                 <p>Input: command = "G()()()()(al)"</p>
                 <p>Output: "Gooooal"</p>
                 
             </li>
            </ul>
              <h3> Constraints </h3>
             <ul>
             <li>
                 <p>1 <= command.length <= 100</p>
                 <p>command consists of "G", "()", and/or "(al)" in some order.</p>
                 
             </li>
            </ul>
            <label for="txtCommand">Enter command:</label>
            <asp:TextBox ID="txtCommand" runat="server"></asp:TextBox>
            <asp:Button ID="btnInterpret" runat="server" Text="Interpret" OnClick="btnInterpret_Click" />
        </div>
        <div>
            <asp:Label ID="lblOutput" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>

