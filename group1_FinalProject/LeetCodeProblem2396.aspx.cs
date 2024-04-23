//# Name: Kayla Wilson
//# email: wilso5ky@mail.uc.edu
//# Assignment Title: Final Project
//# Due Date: 4/23/2024
//# Course: IS 3050
//# Semester/Year: Spring 2024
//# Brief Description: This is out final project
//# Citations: Chatgpt, Leetcode
//# Anything else that's relevant:

using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace group1_FinalProject
{
    public partial class LeetCodeProblem2396 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Initialize your page here if needed
            }
        }

        protected void btnCheck_Click(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(txtNumber.Text))
            {
                int number;
                if (int.TryParse(txtNumber.Text, out number))
                {
                    bool isStrictlyPalindromic = IsStrictlyPalindromic(number);
                    if (isStrictlyPalindromic)
                    {
                        lblResult.Text = $"{number} is strictly palindromic in all bases from 2 to {number - 2}.";
                    }
                    else
                    {
                        lblResult.Text = $"{number} is not strictly palindromic in all bases from 2 to {number - 2}.";
                    }
                }
                else
                {
                    lblResult.Text = "Please enter a valid integer.";
                }
            }
            else
            {
                lblResult.Text = "Please enter a number.";
            }
        }

        private bool IsStrictlyPalindromic(int n)
        {
            for (int baseVal = 2; baseVal <= n - 2; baseVal++)
            {
                if (!IsPalindromic(n, baseVal))
                    return false;
            }
            return true;
        }

        private bool IsPalindromic(int num, int baseVal)
        {
            string numStr = ConvertBase(num, baseVal);
            int left = 0, right = numStr.Length - 1;
            while (left < right)
            {
                if (numStr[left] != numStr[right])
                    return false;
                left++;
                right--;
            }
            return true;
        }

        private string ConvertBase(int num, int baseVal)
        {
            string result = "";
            while (num > 0)
            {
                int remainder = num % baseVal;
                result = remainder.ToString() + result;
                num /= baseVal;
            }
            return result;
        }
    }
}


