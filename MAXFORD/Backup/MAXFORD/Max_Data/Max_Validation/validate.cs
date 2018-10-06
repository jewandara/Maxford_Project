using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace MAXFORD.Max_Data.Max_Validation
{
    public class validate
    {

        public Boolean chexckMaxLength(int maxMAX, int maxMIN, string maxTEXT)
        {
            Boolean error = true;
            if (maxTEXT.Length >= maxMIN && maxTEXT.Length <= maxMAX)
            {
                error = true;
            }
            else {
                error = false;
            }
            return error;
        }

        public bool IsMaxValidEmail(string email)
        {
            try {
                var addr = new System.Net.Mail.MailAddress(email);
                return addr.Address == email;
            }
            catch {
                return false;
            }
        }


    }
}