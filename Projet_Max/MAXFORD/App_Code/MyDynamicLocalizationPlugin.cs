using System;
using System.Collections.Generic;
using System.Web;

using CodeCarvings.Piczard;
using CodeCarvings.Piczard.Plugins;

public class MyDynamicLocalizationPlugin : Plugin, IDynamicLocalizationPlugin
{

    public MyDynamicLocalizationPlugin(PluginConstructorArgs constructorArgs) : base(constructorArgs)
    {
    }

    protected override void Initialize(PluginInitializationArgs initializationArgs)
    {
    }

    #region IDynamicLocalizationPlugin Members

    public PluginOperationResult<string> GetString(string key, string culture, string tag)
    {

        string result = null;

        if (culture == "en-JM")
        {
            // Manage the "en-JM" culture
            switch (key)
            {
                case "PT_MUI_Text_Details":
                    result = "Details [en-JM]";
                    if (tag == "ExA402_PopupPictureTrimmer")
                    {
                        result += " - Popup";
                    }
                    else
                    {
                        result += " - Inline";
                    }
                    break;
                case "PT_MUI_Text_Original":
                    result = "Source:";
                    break;
            }
        }

        if (result != null)
        {
            // Return the custom text
            return base.GetHandledResult<string>(result);
        }
        else
        {
            // Use the default text
            return base.GetNotHandledResult<string>();
        }
    }

    #endregion

}
