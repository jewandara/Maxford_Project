using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace MAXFORD.maxSchedule
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void primaryClasses_Click(object sender, EventArgs e)
        {
            primaryClassesPanel.Visible = true;
            scolarshipExamsPanel.Visible = false;
            ordinaryLevel69Panel.Visible = false;
            ordinaryLevel1011Panel.Visible = false;
            advancedLevelPanel.Visible = false;
        }

        protected void scolarshipExams_Click(object sender, EventArgs e)
        {
            primaryClassesPanel.Visible = false;
            scolarshipExamsPanel.Visible = true;
            ordinaryLevel69Panel.Visible = false;
            ordinaryLevel1011Panel.Visible = false;
            advancedLevelPanel.Visible = false;
        }

        protected void ordinaryLevel69_Click(object sender, EventArgs e)
        {
            primaryClassesPanel.Visible = false;
            scolarshipExamsPanel.Visible = false;
            ordinaryLevel69Panel.Visible = true;
            ordinaryLevel1011Panel.Visible = false;
            advancedLevelPanel.Visible = false;
        }

        protected void ordinaryLevel1011_Click(object sender, EventArgs e)
        {
            primaryClassesPanel.Visible = false;
            scolarshipExamsPanel.Visible = false;
            ordinaryLevel69Panel.Visible = false;
            ordinaryLevel1011Panel.Visible = true;
            advancedLevelPanel.Visible = false;
        }

        protected void advancedLevel_Click(object sender, EventArgs e)
        {
            primaryClassesPanel.Visible = false;
            scolarshipExamsPanel.Visible = false;
            ordinaryLevel69Panel.Visible = false;
            ordinaryLevel1011Panel.Visible = false;
            advancedLevelPanel.Visible = true;
        }

    }
}