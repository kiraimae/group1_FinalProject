<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LeetCodeProblem403.aspx.cs" Inherits="group1_FinalProject.LeetCodeProblem403" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <title>Frog Jump</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h2><a href="https://leetcode.com/problems/frog-jump/description/" target="_blank">Frog Jump</a></h2>
            <p>A frog is crossing a river. The river is divided into some number of units, and at each unit, there may or may not exist a stone. The frog can jump on a stone, but it must not jump into the water.</p>
            <p>Given a list of stone positions (in units) in sorted ascending order, determine if the frog can cross the river by landing on the last stone. Initially, the frog is on the first stone and assumes the first jump must be 1 unit.</p>
            <p>If the frog's last jump was k units, its next jump must be either k - 1, k, or k + 1 units. The frog can only jump in the forward direction.</p>

            <h3>Examples</h3>
            <ul>
                <li>
                    <strong>Example 1:</strong>
                    <p>Input: stones = [0,1,3,5,6,8,12,17]</p>
                    <p>Output: true</p>
                    <p>Explanation: The frog can jump to the last stone by jumping 1 unit to the 2nd stone, then 2 units to the 3rd stone, then 2 units to the 4th stone, then 3 units to the 6th stone, 4 units to the 7th stone, and 5 units to the 8th stone.</p>
                </li>
                <li>
                    <strong>Example 2:</strong>
                    <p>Input: stones = [0,1,2,3,4,8,9,11]</p>
                    <p>Output: false</p>
                    <p>Explanation: There is no way to jump to the last stone as the gap between the 5th and 6th stone is too large.</p>
                </li>
            </ul>

            <h3>Constraints</h3>
            <ul>
                <li>2 <= stones.length <= 2000</li>
                <li>0 <= stones[i] <= 2<sup>31</sup> - 1</li>
                <li>stones[0] == 0</li>
                <li>stones are sorted in a strictly increasing order.</li>
            </ul>

            <asp:Label ID="lblStones" runat="server" Text="Enter the positions of stones (comma-separated):"></asp:Label>
            <asp:TextBox ID="txtStones" runat="server"></asp:TextBox>
            <asp:Button ID="btnCheckCross" runat="server" Text="Check if Frog Can Cross" OnClick="btnCheckCross_Click" />
            <asp:Label ID="lblResult" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
