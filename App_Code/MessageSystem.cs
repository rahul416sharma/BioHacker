using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Net;
using System.IO;

namespace Message
{
    public class SMS
    {
        public string SMSSend(string message, Int64 mobileno,string Type)
        {
            string s = ""; string baseurl = "";
            WebClient client = new WebClient();
            if(Type!= "Unicode")
			{
                 //baseurl = @"http://smsd.kmatechnoware.com/rest/services/sendSMS/sendGroupSms?AUTH_KEY=59e9b376635c4a4476328edb276bb6&message=" + message.Trim() + "&senderId=AICVPS&routeId=1&mobileNos=" + mobileno.ToString() + "&smsContentType=english";
            }
			else
			{
                 //baseurl = @"http://smsd.kmatechnoware.com/rest/services/sendSMS/sendGroupSms?AUTH_KEY=59e9b376635c4a4476328edb276bb6&message=" + message.Trim() + "&senderId=AICVPS&routeId=1&mobileNos=" + mobileno.ToString() + "&smsContentType=english";
            }
            Stream data = client.OpenRead(baseurl);
            StreamReader reader = new StreamReader(data);
            s = reader.ReadToEnd();
            data.Close();
            reader.Close();
            return s;
        }

    }
}
