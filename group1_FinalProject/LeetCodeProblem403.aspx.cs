using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace group1_FinalProject
{
    public partial class LeetCodeProblem403 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }

        protected void btnCheckCross_Click(object sender, EventArgs e)
        {
            // Assuming you have a TextBox `txtStones` where users enter stone positions
            var stones = ParseStones(txtStones.Text);
            bool canCross = CanCross(stones);
            lblResult.Text = canCross ? "Yes, the frog can cross." : "No, the frog cannot cross.";
        }

        private bool CanCross(int[] stones)
        {
            if (stones.Length == 0 || stones[1] != 1) return false;

            var stoneMap = new Dictionary<int, HashSet<int>>();
            foreach (var stone in stones)
            {
                stoneMap[stone] = new HashSet<int>();
            }

            stoneMap[stones[0]].Add(1);

            for (int i = 0; i < stones.Length; i++)
            {
                int stone = stones[i];
                foreach (var step in stoneMap[stone])
                {
                    int reach = stone + step;
                    if (reach == stones[stones.Length - 1])
                        return true;

                    if (stoneMap.ContainsKey(reach))
                    {
                        if (step > 1) stoneMap[reach].Add(step - 1);
                        stoneMap[reach].Add(step);
                        stoneMap[reach].Add(step + 1);
                    }
                }
            }

            return false;
        }

        private int[] ParseStones(string input)
        {
            return input.Split(',').Select(int.Parse).ToArray();
        }
    }
}