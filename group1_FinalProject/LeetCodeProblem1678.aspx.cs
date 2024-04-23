using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace group1_FinalProject
{
    public partial class LeetCodeProblem1678 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
                // Any logic that needs to run when the page loads
        }


            protected void btnInterpret_Click(object sender, EventArgs e)
            {
                // Event handler for button click
                string command = txtCommand.Text;
                string interpretation = InterpretCommand(command);
                lblOutput.Text = "Interpreted command: " + interpretation;
            }

            // Method to interpret the command
            private string InterpretCommand(string command)
            {
                // Logic to interpret the command according to the rules
                string interpretedCommand = command.Replace("()", "o").Replace("(al)", "al");
                return interpretedCommand;

            }
        
    }
}