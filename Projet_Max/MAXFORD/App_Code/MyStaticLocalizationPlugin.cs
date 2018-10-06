﻿using System;
using System.Collections.Generic;
using System.Web;
using System.IO;

using CodeCarvings.Piczard;
using CodeCarvings.Piczard.Plugins;

public class MyStaticLocalizationPlugin: Plugin, IStaticLocalizationPlugin
{

    public MyStaticLocalizationPlugin(PluginConstructorArgs constructorArgs) : base(constructorArgs)
    {
    }

    protected override void Initialize(PluginInitializationArgs initializationArgs)
    {
    }

    #region IStaticLocalizationPlugin Members

    public PluginOperationResult<string[]> GetCultures()
    {
        // Get a list of the handled cultures
        return base.GetHandledResult<string[]>(new string[] { "en-TT", "en-ZW" });
    }

    public PluginOperationResult<Dictionary<string, string>> GetDictionary(string culture)
    {
        if (culture == "en-TT")
        {
            // Manage the "en-TT" culture

            Dictionary<string, string> result = new Dictionary<string, string>();

            // Customize only 2 texts (other texts are not customized)
            result["PT_MUI_Text_Details"] = "Details [en-TT]";
            result["PT_MUI_Text_Original"] = "Source:";

            return base.GetHandledResult<Dictionary<string, string>>(result);
        }

        if (culture == "en-ZW")
        {
            // Manage the "en-ZW" culture

            // Load an xml file containing the localized texts
            string filePath = HttpContext.Current.Server.MapPath("~/App_Data/CodeCarvings.Piczard.en-ZW.resx.xml");
            Dictionary<string, string> result = CodeCarvings.Piczard.Globalization.GlobalizationManager.LoadDictionaryFromXMLFile(filePath);

            return base.GetHandledResult<Dictionary<string, string>>(result);
        }

        // Culture not handled...
        return base.GetNotHandledResult<Dictionary<string, string>>();
    }

    #endregion

}
