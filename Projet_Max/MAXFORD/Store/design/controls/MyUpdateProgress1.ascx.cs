using System;
using System.Collections.Generic;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class design_controls_MyUpdateProgress1 : System.Web.UI.UserControl
{

    public string AssociatedUpdatePanelID
    {
        get
        {
            return this.UpdateProgress1.AssociatedUpdatePanelID;
        }
        set
        {
            this.UpdateProgress1.AssociatedUpdatePanelID = value;
        }
    }
}
