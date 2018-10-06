using System;
using System.Web;
using System.Xml;

/// <summary>
/// Summary description for Helper
/// </summary>
public class Helper
{
	public Helper()
	{
		//
		// TODO: Add constructor logic here
		//
	}

    public static PasswordSetting GetPasswordSetting()
    {

        XmlDocument xmlDoc = new XmlDocument();
        xmlDoc.Load(HttpContext.Current.Server.MapPath("~/PasswordPolicy.xml"));

        PasswordSetting passwordSetting = new PasswordSetting();

        foreach (XmlNode node in xmlDoc.ChildNodes)
        {
            foreach (XmlNode node2 in node.ChildNodes)
            {
                passwordSetting.Duration = int.Parse(node2["duration"].InnerText);
                passwordSetting.MinLength = int.Parse(node2["minLength"].InnerText);
                passwordSetting.MaxLength = int.Parse(node2["maxLength"].InnerText);
                passwordSetting.NumsLength = int.Parse(node2["numsLength"].InnerText);
                passwordSetting.SpecialLength = int.Parse(node2["specialLength"].InnerText);
                passwordSetting.UpperLength = int.Parse(node2["upperLength"].InnerText);
                passwordSetting.SpecialChars = node2["specialChars"].InnerText;
            }
        }

        return passwordSetting;

    }
}
