using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


// # Name: Collin Baines
// # Email: bainesct@mail.uc.edu
// # Assignment Title: Final Project Spring 2024
// # Due Date: 4/22/2024
// # Course: IS 3050
// # Semester/Year: Spring 2024
// # Brief Description: This project is to work together with a team to solve LeetCode problems
// # Citations: LeetCode, ChatGPT

namespace group1_FinalProject
{
    public partial class LeetCodeProblem12 : System.Web.UI.Page
    {
        private static readonly int[] DecimalValues = { 1000, 900, 500, 400, 100, 90, 50, 40, 10, 9, 5, 4, 1 };
        private static readonly string[] RomanNumerals = { "M", "CM", "D", "CD", "C", "XC", "L", "XL", "X", "IX", "V", "IV", "I" };

        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnConvert_Click(object sender, EventArgs e)
        {
            int num;
            if (int.TryParse(txtNumber.Text, out num))
            {
                if (num >= 1 && num <= 3999)
                {
                    lblRoman.Text = IntToRoman(num);
                }
                else
                {
                    lblRoman.Text = "Please enter a number between 1 and 3999.";
                }
            }
            else
            {
                lblRoman.Text = "Invalid input. Please enter a valid integer.";
            }
        }

        public string IntToRoman(int num)
        {
            var result = new StringBuilder();
            int i = 0;

            while (num > 0)
            {
                if (num >= DecimalValues[i])
                {
                    result.Append(RomanNumerals[i]);
                    num -= DecimalValues[i];
                }
                else
                {
                    i++;
                }
            }

            return result.ToString();
        }
    }
}